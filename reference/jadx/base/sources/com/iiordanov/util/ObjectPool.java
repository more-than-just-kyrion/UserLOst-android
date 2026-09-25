package com.iiordanov.util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ObjectPool<R> {
    private Entry<R> next = null;

    protected abstract R itemForPool();

    public static class Entry<S> {
        S item;
        Entry<S> nextEntry;

        Entry(S s, Entry<S> entry) {
            this.item = s;
            this.nextEntry = entry;
        }

        public S get() {
            return this.item;
        }
    }

    public Entry<R> reserve() {
        if (this.next == null) {
            this.next = new Entry<>(itemForPool(), null);
        }
        Entry<R> entry = this.next;
        this.next = entry.nextEntry;
        entry.nextEntry = null;
        return entry;
    }

    public void release(Entry<R> entry) {
        entry.nextEntry = this.next;
        this.next = entry;
    }
}
