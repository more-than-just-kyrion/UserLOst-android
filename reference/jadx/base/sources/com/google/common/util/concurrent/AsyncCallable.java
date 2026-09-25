package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface AsyncCallable<V> {
    ListenableFuture<V> call() throws Exception;
}
