package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbxc extends zzbel implements zzbft {
    private static final zzbxc zzb;

    static {
        zzbxc zzbxcVar = new zzbxc();
        zzb = zzbxcVar;
        zzbel.zzR(zzbxc.class, zzbxcVar);
    }

    private zzbxc() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbel
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        zzbxa zzbxaVar = null;
        if (i2 == 2) {
            return zzO(zzb, TarConstants.VERSION_ANT, null);
        }
        if (i2 == 3) {
            return new zzbxc();
        }
        if (i2 == 4) {
            return new zzbxb(zzbxaVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
