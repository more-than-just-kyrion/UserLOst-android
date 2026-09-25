package io.sentry.connection;

import io.sentry.event.Event;

/* JADX INFO: loaded from: classes2.dex */
public interface EventSendCallback {
    void onFailure(Event event, Exception exc);

    void onSuccess(Event event);
}
