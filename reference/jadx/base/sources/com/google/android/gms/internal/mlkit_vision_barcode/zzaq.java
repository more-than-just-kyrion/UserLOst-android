package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.SystemClock;
import org.apache.commons.compress.harmony.pack200.PackingOptions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-mlkit-barcode-scanning@@18.3.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzaq extends zzbb {
    zzaq() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzbb
    public final long zza() {
        return SystemClock.elapsedRealtime() * PackingOptions.SEGMENT_LIMIT;
    }
}
