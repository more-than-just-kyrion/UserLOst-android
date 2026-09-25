package com.iiordanov.util;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SafeObjectPool<R> extends ObjectPool<R> {
    @Override // com.iiordanov.util.ObjectPool
    public synchronized void release(ObjectPool.Entry<R> entry) {
        super.release(entry);
    }

    @Override // com.iiordanov.util.ObjectPool
    public synchronized ObjectPool.Entry<R> reserve() {
        return super.reserve();
    }
}
