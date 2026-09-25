package com.trilead.ssh2.log;

import com.trilead.ssh2.DebugLogger;

/* JADX INFO: loaded from: classes2.dex */
public class Logger {
    public static boolean enabled = false;
    public static DebugLogger logger;
    private String className;

    public static final Logger getLogger(Class cls) {
        return new Logger(cls);
    }

    public Logger(Class cls) {
        this.className = cls.getName();
    }

    public final boolean isEnabled() {
        return enabled;
    }

    public final void log(int i, String str) {
        DebugLogger debugLogger;
        if (enabled && (debugLogger = logger) != null) {
            debugLogger.log(i, this.className, str);
        }
    }
}
