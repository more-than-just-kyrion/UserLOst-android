package com.google.common.base;

/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface Predicate<T> extends java.util.function.Predicate<T> {
    boolean apply(T t);

    boolean equals(Object obj);

    @Override // java.util.function.Predicate
    default boolean test(T t) {
        return apply(t);
    }
}
