package com.google.android.libraries.vision.visionkit.pipeline;

import androidx.core.os.EnvironmentCompat;
import io.sentry.event.EventBuilder;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzch {
    OK("ok"),
    CANCELLED("canceled"),
    UNKNOWN(EnvironmentCompat.MEDIA_UNKNOWN),
    INVALID_ARGUMENT("invalid argument"),
    DEADLINE_EXCEEDED("deadline exceeded"),
    NOT_FOUND("not found"),
    ALREADY_EXISTS("already exists"),
    PERMISSION_DENIED("permission denied"),
    RESOURCE_EXHAUSTED("resource exhausted"),
    FAILED_PRECONDITION("failed precondition"),
    ABORTED("aborted"),
    OUT_OF_RANGE("out of range"),
    UNIMPLEMENTED("unimplemented"),
    INTERNAL("internal"),
    UNAVAILABLE(EventBuilder.DEFAULT_HOSTNAME),
    DATA_LOSS("data loss"),
    UNAUTHENTICATED("unauthenticated");

    private final String zzs;

    zzch(String str) {
        this.zzs = str;
    }

    public final String zza() {
        return this.zzs;
    }
}
