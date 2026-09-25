package org.yaml.snakeyaml.events;

import org.yaml.snakeyaml.error.Mark;

/* JADX INFO: loaded from: classes3.dex */
public final class AliasEvent extends NodeEvent {
    public AliasEvent(String str, Mark mark, Mark mark2) {
        super(str, mark, mark2);
        str.getClass();
    }

    @Override // org.yaml.snakeyaml.events.Event
    public boolean is(Event.ID id) {
        return Event.ID.Alias == id;
    }
}
