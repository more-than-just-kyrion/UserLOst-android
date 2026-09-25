package io.sentry.connection;

/* JADX INFO: loaded from: classes2.dex */
public class TooManyRequestsException extends ConnectionException {
    public TooManyRequestsException(String str, Throwable th, Long l, Integer num) {
        super(str, th, l, num);
    }
}
