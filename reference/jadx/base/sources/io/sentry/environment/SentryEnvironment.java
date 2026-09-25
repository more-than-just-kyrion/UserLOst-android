package io.sentry.environment;

import java.util.concurrent.atomic.AtomicInteger;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public final class SentryEnvironment {
    public static final String SDK_NAME = "sentry-java";
    public static final String SDK_VERSION = "1.7.22-2a267";
    protected static final ThreadLocal<AtomicInteger> SENTRY_THREAD = new ThreadLocal<AtomicInteger>() { // from class: io.sentry.environment.SentryEnvironment.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public AtomicInteger initialValue() {
            return new AtomicInteger();
        }
    };
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SentryEnvironment.class);

    private SentryEnvironment() {
    }

    public static void startManagingThread() {
        try {
            if (isManagingThread()) {
                logger.warn("Thread already managed by Sentry");
            }
        } finally {
            SENTRY_THREAD.get().incrementAndGet();
        }
    }

    public static void stopManagingThread() {
        try {
            if (!isManagingThread()) {
                startManagingThread();
                logger.warn("Thread not yet managed by Sentry");
            }
        } finally {
            ThreadLocal<AtomicInteger> threadLocal = SENTRY_THREAD;
            if (threadLocal.get().decrementAndGet() == 0) {
                threadLocal.remove();
            }
        }
    }

    public static boolean isManagingThread() {
        return SENTRY_THREAD.get().get() > 0;
    }

    public static String getSentryName() {
        return "sentry-java/1.7.22-2a267";
    }
}
