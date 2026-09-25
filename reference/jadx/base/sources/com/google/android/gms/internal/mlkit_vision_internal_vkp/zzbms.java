package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import com.undatech.opaque.input.RemoteKeyboard;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
final class zzbms implements zzbep {
    static final zzbep zza = new zzbms();

    private zzbms() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbep
    public final boolean zza(int i) {
        if (i != 0 && i != 1 && i != 2 && i != 901 && i != 902) {
            switch (i) {
                default:
                    switch (i) {
                        case 201:
                        case 202:
                        case 203:
                            break;
                        default:
                            return false;
                    }
                case 103:
                case 104:
                case 105:
                case 106:
                case 107:
                case 108:
                case 109:
                case 110:
                case RemoteKeyboard.SCAN_DELETE /* 111 */:
                case 112:
                    return true;
            }
        }
        return true;
    }
}
