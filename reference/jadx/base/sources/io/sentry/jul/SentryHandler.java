package io.sentry.jul;

import io.sentry.Sentry;
import io.sentry.environment.SentryEnvironment;
import io.sentry.event.Event;
import io.sentry.event.EventBuilder;
import io.sentry.event.interfaces.ExceptionInterface;
import io.sentry.event.interfaces.MessageInterface;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Filter;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import org.slf4j.MDC;

/* JADX INFO: loaded from: classes2.dex */
public class SentryHandler extends Handler {
    public static final String THREAD_ID = "Sentry-ThreadId";
    protected boolean printfStyle;

    @Override // java.util.logging.Handler
    public void flush() {
    }

    public SentryHandler() {
        retrieveProperties();
        setFilter(new DropSentryFilter());
    }

    protected static Event.Level getLevel(Level level) {
        if (level.intValue() >= Level.SEVERE.intValue()) {
            return Event.Level.ERROR;
        }
        if (level.intValue() >= Level.WARNING.intValue()) {
            return Event.Level.WARNING;
        }
        if (level.intValue() >= Level.INFO.intValue()) {
            return Event.Level.INFO;
        }
        if (level.intValue() >= Level.ALL.intValue()) {
            return Event.Level.DEBUG;
        }
        return null;
    }

    protected static List<String> formatMessageParameters(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            Object obj = objArr[i];
            arrayList.add(obj != null ? obj.toString() : null);
        }
        return arrayList;
    }

    protected void retrieveProperties() {
        LogManager logManager = LogManager.getLogManager();
        String name = SentryHandler.class.getName();
        setPrintfStyle(Boolean.valueOf(logManager.getProperty(name + ".printfStyle")).booleanValue());
        setLevel(parseLevelOrDefault(logManager.getProperty(name + ".level")));
    }

    private Level parseLevelOrDefault(String str) {
        try {
            return Level.parse(str.trim());
        } catch (Exception unused) {
            return Level.WARNING;
        }
    }

    @Override // java.util.logging.Handler
    public void publish(LogRecord logRecord) {
        if (!isLoggable(logRecord) || SentryEnvironment.isManagingThread()) {
            return;
        }
        SentryEnvironment.startManagingThread();
        try {
            try {
                Sentry.capture(createEventBuilder(logRecord));
            } catch (Exception e) {
                reportError("An exception occurred while creating a new event in Sentry", e, 1);
            }
        } finally {
            SentryEnvironment.stopManagingThread();
        }
    }

    protected EventBuilder createEventBuilder(LogRecord logRecord) {
        String message;
        String str;
        EventBuilder eventBuilderWithLogger = new EventBuilder().withSdkIntegration("java.util.logging").withLevel(getLevel(logRecord.getLevel())).withTimestamp(new Date(logRecord.getMillis())).withLogger(logRecord.getLoggerName());
        String message2 = logRecord.getMessage();
        if (logRecord.getResourceBundle() != null && logRecord.getResourceBundle().containsKey(logRecord.getMessage())) {
            message2 = logRecord.getResourceBundle().getString(logRecord.getMessage());
        }
        if (logRecord.getParameters() == null) {
            eventBuilderWithLogger.withSentryInterface(new MessageInterface(message2));
        } else {
            List<String> messageParameters = formatMessageParameters(logRecord.getParameters());
            try {
                message = formatMessage(message2, logRecord.getParameters());
                str = message;
            } catch (Exception unused) {
                message = null;
                str = message2;
            }
            eventBuilderWithLogger.withSentryInterface(new MessageInterface(message2, messageParameters, message));
            message2 = str;
        }
        eventBuilderWithLogger.withMessage(message2);
        Throwable thrown = logRecord.getThrown();
        if (thrown != null) {
            eventBuilderWithLogger.withSentryInterface(new ExceptionInterface(thrown));
        }
        Map<String, String> copyOfContextMap = MDC.getMDCAdapter().getCopyOfContextMap();
        if (copyOfContextMap != null) {
            for (Map.Entry<String, String> entry : copyOfContextMap.entrySet()) {
                if (Sentry.getStoredClient().getMdcTags().contains(entry.getKey())) {
                    eventBuilderWithLogger.withTag(entry.getKey(), entry.getValue());
                } else {
                    eventBuilderWithLogger.withExtra(entry.getKey(), entry.getValue());
                }
            }
        }
        eventBuilderWithLogger.withExtra(THREAD_ID, Integer.valueOf(logRecord.getThreadID()));
        return eventBuilderWithLogger;
    }

    protected String formatMessage(String str, Object[] objArr) {
        if (this.printfStyle) {
            return String.format(str, objArr);
        }
        return MessageFormat.format(str, objArr);
    }

    @Override // java.util.logging.Handler
    public void close() throws SecurityException {
        SentryEnvironment.startManagingThread();
        try {
            try {
                Sentry.close();
            } catch (Exception e) {
                reportError("An exception occurred while closing the Sentry connection", e, 3);
            }
        } finally {
            SentryEnvironment.stopManagingThread();
        }
    }

    public void setPrintfStyle(boolean z) {
        this.printfStyle = z;
    }

    private class DropSentryFilter implements Filter {
        private DropSentryFilter() {
        }

        @Override // java.util.logging.Filter
        public boolean isLoggable(LogRecord logRecord) {
            String loggerName = logRecord.getLoggerName();
            return loggerName == null || !loggerName.startsWith("io.sentry");
        }
    }
}
