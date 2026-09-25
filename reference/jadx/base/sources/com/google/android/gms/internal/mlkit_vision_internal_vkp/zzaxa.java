package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
final class zzaxa extends IOException {
    private final zzags zza;

    zzaxa(zzags zzagsVar, String str) {
        super(str);
        this.zza = zzagsVar;
    }

    final zzags zza() {
        return this.zza;
    }

    zzaxa(zzags zzagsVar, String str, Throwable th) {
        super(str, th);
        this.zza = zzagsVar;
    }
}
