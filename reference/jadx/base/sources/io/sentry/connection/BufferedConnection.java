package io.sentry.connection;

import io.sentry.buffer.Buffer;
import io.sentry.environment.SentryEnvironment;
import io.sentry.event.Event;
import io.sentry.util.Util;
import java.io.IOException;
import java.io.NotSerializableException;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class BufferedConnection implements Connection {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) BufferedConnection.class);
    private Connection actualConnection;
    private Buffer buffer;
    private volatile boolean closed;
    private final ScheduledExecutorService executorService;
    private boolean gracefulShutdown;
    private final ShutDownHook shutDownHook;
    private long shutdownTimeout;

    public BufferedConnection(Connection connection, Buffer buffer, long j, boolean z, long j2) {
        ShutDownHook shutDownHook = new ShutDownHook();
        this.shutDownHook = shutDownHook;
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: io.sentry.connection.BufferedConnection.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setDaemon(true);
                return thread;
            }
        });
        this.executorService = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
        this.closed = false;
        this.actualConnection = connection;
        this.buffer = buffer;
        this.gracefulShutdown = z;
        this.shutdownTimeout = j2;
        if (z) {
            Runtime.getRuntime().addShutdownHook(shutDownHook);
        }
        scheduledExecutorServiceNewSingleThreadScheduledExecutor.scheduleWithFixedDelay(new Flusher(j), j, j, TimeUnit.MILLISECONDS);
    }

    @Override // io.sentry.connection.Connection
    public void send(Event event) {
        try {
            this.actualConnection.send(event);
            this.buffer.discard(event);
        } catch (ConnectionException e) {
            boolean z = e.getCause() instanceof NotSerializableException;
            Integer responseCode = e.getResponseCode();
            if (z || responseCode != null) {
                this.buffer.discard(event);
            }
            throw e;
        }
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
        Logger logger2 = logger;
        logger2.debug("Gracefully shutting down Sentry buffer threads.");
        this.closed = true;
        this.executorService.shutdown();
        try {
            try {
                long j = this.shutdownTimeout;
                if (j == -1) {
                    while (!this.executorService.awaitTermination(5000L, TimeUnit.MILLISECONDS)) {
                        logger.debug("Still waiting on buffer flusher executor to terminate.");
                    }
                } else if (!this.executorService.awaitTermination(j, TimeUnit.MILLISECONDS)) {
                    logger2.warn("Graceful shutdown took too much time, forcing the shutdown.");
                    logger2.warn("{} tasks failed to execute before the shutdown.", Integer.valueOf(this.executorService.shutdownNow().size()));
                }
                logger.debug("Shutdown finished.");
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                Logger logger3 = logger;
                logger3.warn("Graceful shutdown interrupted, forcing the shutdown.");
                logger3.warn("{} tasks failed to execute before the shutdown.", Integer.valueOf(this.executorService.shutdownNow().size()));
            }
        } finally {
            this.actualConnection.close();
        }
    }

    public Connection wrapConnectionWithBufferWriter(Connection connection) {
        return new Connection(connection) { // from class: io.sentry.connection.BufferedConnection.2
            final /* synthetic */ Connection val$connectionToWrap;
            final Connection wrappedConnection;

            {
                this.val$connectionToWrap = connection;
                this.wrappedConnection = connection;
            }

            @Override // io.sentry.connection.Connection
            public void send(Event event) throws ConnectionException {
                try {
                    BufferedConnection.this.buffer.add(event);
                } catch (Exception e) {
                    BufferedConnection.logger.error("Exception occurred while attempting to add Event to buffer: ", (Throwable) e);
                }
                this.wrappedConnection.send(event);
            }

            @Override // io.sentry.connection.Connection
            public void addEventSendCallback(EventSendCallback eventSendCallback) {
                this.wrappedConnection.addEventSendCallback(eventSendCallback);
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.wrappedConnection.close();
            }
        };
    }

    private class Flusher implements Runnable {
        private long minAgeMillis;

        Flusher(long j) {
            this.minAgeMillis = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            BufferedConnection.logger.trace("Running Flusher");
            SentryEnvironment.startManagingThread();
            try {
                try {
                    Iterator<Event> events = BufferedConnection.this.buffer.getEvents();
                    while (events.hasNext() && !BufferedConnection.this.closed) {
                        Event next = events.next();
                        long jCurrentTimeMillis = System.currentTimeMillis() - next.getTimestamp().getTime();
                        if (jCurrentTimeMillis < this.minAgeMillis) {
                            BufferedConnection.logger.trace("Ignoring buffered event because it only " + jCurrentTimeMillis + "ms old.");
                            SentryEnvironment.stopManagingThread();
                            return;
                        }
                        try {
                            BufferedConnection.logger.trace("Flusher attempting to send Event: " + next.getId());
                            BufferedConnection.this.send(next);
                            BufferedConnection.logger.trace("Flusher successfully sent Event: " + next.getId());
                        } catch (Exception e) {
                            BufferedConnection.logger.debug("Flusher failed to send Event: " + next.getId(), (Throwable) e);
                            BufferedConnection.logger.trace("Flusher run exiting early.");
                            SentryEnvironment.stopManagingThread();
                            return;
                        }
                    }
                    BufferedConnection.logger.trace("Flusher run exiting, no more events to send.");
                } catch (Exception e2) {
                    BufferedConnection.logger.error("Error running Flusher: ", (Throwable) e2);
                }
                SentryEnvironment.stopManagingThread();
            } catch (Throwable th) {
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
                        BufferedConnection.this.close();
                    } catch (Exception e) {
                        BufferedConnection.logger.error("An exception occurred while closing the connection.", (Throwable) e);
                    }
                } finally {
                    SentryEnvironment.stopManagingThread();
                }
            }
        }
    }
}
