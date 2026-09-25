package com.google.common.base;

/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface Function<F, T> extends java.util.function.Function<F, T> {
    @Override // java.util.function.Function
    T apply(F f);

    boolean equals(Object obj);
}
