package io.sentry.buffer;

import io.sentry.event.Event;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public interface Buffer {
    void add(Event event);

    void discard(Event event);

    Iterator<Event> getEvents();
}
