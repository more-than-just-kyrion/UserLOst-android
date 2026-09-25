package com.google.common.cache;

/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface RemovalListener<K, V> {
    void onRemoval(RemovalNotification<K, V> removalNotification);
}
