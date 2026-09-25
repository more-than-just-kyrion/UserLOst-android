package io.sentry.event.helper;

import io.sentry.event.Event;

/* JADX INFO: loaded from: classes2.dex */
public interface ShouldSendEventCallback {
    boolean shouldSend(Event event);
}
