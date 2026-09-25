package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface AsyncFunction<I, O> {
    ListenableFuture<O> apply(I i) throws Exception;
}
