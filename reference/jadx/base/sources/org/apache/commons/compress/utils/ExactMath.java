package org.apache.commons.compress.utils;

/* JADX INFO: loaded from: classes3.dex */
public class ExactMath {
    public static int add(int i, long j) {
        try {
            return Math.addExact(i, Math.toIntExact(j));
        } catch (ArithmeticException e) {
            throw new IllegalArgumentException("Argument too large or result overflows", e);
        }
    }

    private ExactMath() {
    }
}
