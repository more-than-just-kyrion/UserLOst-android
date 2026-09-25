package io.sentry.connection;

import io.sentry.SentryClient;
import io.sentry.environment.SentryEnvironment;
import io.sentry.event.Event;
import io.sentry.util.Util;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;

/* JADX INFO: loaded from: classes2.dex */
public class AsyncConnection implements Connection {
    private final Connection actualConnection;
    private volatile boolean closed;
    private final ExecutorService executorService;
    private boolean gracefulShutdown;
    private final ShutDownHook shutDownHook = new ShutDownHook();
    private final long shutdownTimeout;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) AsyncConnection.class);
    private static final Logger lockdownLogger = LoggerFactory.getLogger(SentryClient.class.getName() + ".lockdown");

    public AsyncConnection(Connection connection, ExecutorService executorService, boolean z, long j) {
        this.actualConnection = connection;
        if (executorService == null) {
            this.executorService = Executors.newSingleThreadExecutor();
        } else {
            this.executorService = executorService;
        }
        if (z) {
            this.gracefulShutdown = z;
            addShutdownHook();
        }
        this.shutdownTimeout = j;
    }

    private void addShutdownHook() {
        Runtime.getRuntime().addShutdownHook(this.shutDownHook);
    }

    @Override // io.sentry.connection.Connection
    public void send(Event event) {
        if (this.closed) {
            return;
        }
        this.executorService.execute(new EventSubmitter(event, MDC.getCopyOfContextMap()));
    }

    @Override // io.sentry.connection.Connection
    public void addEventSendCallback(EventSendCallback eventSendCallback) {
        this.actualConnection.addEventSendCallback(eventSendCallback);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.gracefulShutdown) {
            Util.safelyRemoveShutdownHook(this.shutDownHook);
            this.shutDownHook.enabled = false;
        }
        doClose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doClose() throws IOException {
        Logger logger2 = logger;
        logger2.debug("Gracefully shutting down Sentry async threads.");
        this.closed = true;
        this.executorService.shutdown();
        try {
            try {
                long j = this.shutdownTimeout;
                if (j == -1) {
                    while (!this.executorService.awaitTermination(5000L, TimeUnit.MILLISECONDS)) {
                        logger.debug("Still waiting on async executor to terminate.");
                    }
                } else if (!this.executorService.awaitTermination(j, TimeUnit.MILLISECONDS)) {
                    logger2.warn("Graceful shutdown took too much time, forcing the shutdown.");
                    logger2.warn("{} tasks failed to execute before shutdown.", Integer.valueOf(this.executorService.shutdownNow().size()));
                }
                logger.debug("Shutdown finished.");
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                Logger logger3 = logger;
                logger3.warn("Graceful shutdown interrupted, forcing the shutdown.");
                logger3.warn("{} tasks failed to execute before shutdown.", Integer.valueOf(this.executorService.shutdownNow().size()));
            }
        } finally {
            this.actualConnection.close();
        }
    }

    private final class EventSubmitter implements Runnable {
        private final Event event;
        private Map<String, String> mdcContext;

        private EventSubmitter(Event event, Map<String, String> map) {
            this.event = event;
            this.mdcContext = map;
        }

        /* JADX WARN: Code duplicated, block: B:9:0x0025  */
        /* JADX WARN: Undo finally extract visitor
        java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
        	at jadx.core.utils.Pair.hashCode(Pair.java:35)
        	at java.base/java.util.HashMap.hash(HashMap.java:338)
        	at java.base/java.util.HashMap.getNode(HashMap.java:576)
        	at java.base/java.util.HashMap.containsKey(HashMap.java:602)
        	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
        	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
        	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
        	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
        	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
        	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
        	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
         */
        @Override // java.lang.Runnable
        public void run() {
            SentryEnvironment.startManagingThread();
            Map<String, String> copyOfContextMap = MDC.getCopyOfContextMap();
            Map<String, String> map = this.mdcContext;
            if (map == null) {
                MDC.clear();
            } else {
                MDC.setContextMap(map);
            }
            try {
                try {
                    AsyncConnection.this.actualConnection.send(this.event);
                    if (copyOfContextMap == null) {
                        MDC.clear();
                    } else {
                        MDC.setContextMap(copyOfContextMap);
                    }
                } catch (LockedDownException | TooManyRequestsException unused) {
                    AsyncConnection.logger.debug("Dropping an Event due to lockdown: " + this.event);
                    if (copyOfContextMap != null) {
                        MDC.setContextMap(copyOfContextMap);
                    }
                } catch (Exception e) {
                    AsyncConnection.logger.error("An exception occurred while sending the event to Sentry.", (Throwable) e);
                    if (copyOfContextMap != null) {
                        MDC.setContextMap(copyOfContextMap);
                    }
                }
                SentryEnvironment.stopManagingThread();
            } catch (Throwable th) {
                if (copyOfContextMap == null) {
                    MDC.clear();
                } else {
                    MDC.setContextMap(copyOfContextMap);
                }
                SentryEnvironment.stopManagingThread();
                throw th;
            }
        }
    }

    private final class ShutDownHook extends Thread {
        private volatile boolean enabled;

        private ShutDownHook() {
            this.enabled = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (this.enabled) {
                SentryEnvironment.startManagingThread();
                try {
                    try {
                        AsyncConnection.this.doClose();
                    } catch (Exception e) {
                        AsyncConnection.logger.error("An exception occurred while closing the connection.", (Throwable) e);
                    }
                } finally {
                    SentryEnvironment.stopManagingThread();
                }
            }
        }
    }
}
