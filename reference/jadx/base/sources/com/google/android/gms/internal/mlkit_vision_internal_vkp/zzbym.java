package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbym extends zzbel implements zzbft {
    private static final zzbym zzb;

    static {
        zzbym zzbymVar = new zzbym();
        zzb = zzbymVar;
        zzbel.zzR(zzbym.class, zzbymVar);
    }

    private zzbym() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbel
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        zzbyk zzbykVar = null;
        if (i2 == 2) {
            return zzO(zzb, TarConstants.VERSION_ANT, null);
        }
        if (i2 == 3) {
            return new zzbym();
        }
        if (i2 == 4) {
            return new zzbyl(zzbykVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
