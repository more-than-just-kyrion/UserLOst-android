package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes2.dex */
final class Platform {
    static boolean isInstanceOfThrowableClass(Throwable th, Class<? extends Throwable> cls) {
        return cls.isInstance(th);
    }

    private Platform() {
    }
}
