package com.google.common.base;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
final class Java8Usage {

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.RUNTIME)
    private @interface SomeTypeAnnotation {
    }

    static /* synthetic */ void lambda$performCheck$0() {
    }

    static String performCheck() {
        new Runnable() { // from class: com.google.common.base.Java8Usage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Java8Usage.lambda$performCheck$0();
            }
        }.run();
        return "";
    }

    private Java8Usage() {
    }
}
