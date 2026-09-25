package io.sentry;

import io.sentry.config.Lookup;
import io.sentry.dsn.Dsn;
import io.sentry.util.Util;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SentryClientFactory {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) SentryClientFactory.class);

    public abstract SentryClient createSentryClient(Dsn dsn);

    public static SentryClient sentryClient() {
        return sentryClient(null, null);
    }

    public static SentryClient sentryClient(String str) {
        return sentryClient(str, null);
    }

    public static SentryClient sentryClient(String str, SentryClientFactory sentryClientFactory) {
        Dsn dsnResolveDsn = resolveDsn(str);
        if (sentryClientFactory == null) {
            String strLookup = Lookup.lookup("factory", dsnResolveDsn);
            if (Util.isNullOrEmpty(strLookup)) {
                sentryClientFactory = new DefaultSentryClientFactory();
            } else {
                try {
                    sentryClientFactory = (SentryClientFactory) Class.forName(strLookup).newInstance();
                } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
                    logger.error("Error creating SentryClient using factory class: '" + strLookup + "'.", e);
                    return null;
                }
            }
        }
        return sentryClientFactory.createSentryClient(dsnResolveDsn);
    }

    private static Dsn resolveDsn(String str) throws Exception {
        try {
            if (Util.isNullOrEmpty(str)) {
                str = Dsn.dsnLookup();
            }
            return new Dsn(str);
        } catch (Exception e) {
            logger.error("Error creating valid DSN from: '{}'.", str, e);
            throw e;
        }
    }

    public String toString() {
        return "SentryClientFactory{name='" + getClass().getName() + "'}";
    }
}
