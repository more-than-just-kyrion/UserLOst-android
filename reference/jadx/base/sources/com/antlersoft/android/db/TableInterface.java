package com.antlersoft.android.db;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.CLASS)
public @interface TableInterface {
    String ImplementingClassName() default "";

    boolean ImplementingIsAbstract() default true;

    boolean ImplementingIsPublic() default true;

    String TableName() default "";
}
