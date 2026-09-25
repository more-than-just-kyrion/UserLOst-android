package io.sentry.connection;

import io.sentry.event.Event;

/* JADX INFO: loaded from: classes2.dex */
public interface EventSampler {
    boolean shouldSendEvent(Event event);
}
