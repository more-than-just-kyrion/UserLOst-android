package com.google.android.gms.internal.mlkit_vision_internal_vkp;

import com.undatech.opaque.input.RemoteKeyboard;
import org.apache.http.HttpStatus;

/* JADX INFO: compiled from: com.google.mlkit:vision-internal-vkp@@18.2.3 */
/* JADX INFO: loaded from: classes.dex */
final class zzuc implements zzbep {
    static final zzbep zza = new zzuc();

    private zzuc() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_internal_vkp.zzbep
    public final boolean zza(int i) {
        if (i == 500 || i == 501 || i == 9999) {
            return true;
        }
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                switch (i) {
                    case 100:
                    case 101:
                    case 102:
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
                    case 113:
                    case 114:
                    case 115:
                    case 116:
                        return true;
                    default:
                        switch (i) {
                            case 201:
                            case 202:
                            case 203:
                            case 204:
                            case 205:
                            case 206:
                            case 207:
                                return true;
                            default:
                                switch (i) {
                                    case 301:
                                    case HttpStatus.SC_MOVED_TEMPORARILY /* 302 */:
                                    case HttpStatus.SC_SEE_OTHER /* 303 */:
                                    case HttpStatus.SC_NOT_MODIFIED /* 304 */:
                                    case HttpStatus.SC_USE_PROXY /* 305 */:
                                        return true;
                                    default:
                                        switch (i) {
                                            case HttpStatus.SC_BAD_REQUEST /* 400 */:
                                            case HttpStatus.SC_UNAUTHORIZED /* 401 */:
                                            case HttpStatus.SC_PAYMENT_REQUIRED /* 402 */:
                                            case HttpStatus.SC_FORBIDDEN /* 403 */:
                                            case HttpStatus.SC_NOT_FOUND /* 404 */:
                                            case HttpStatus.SC_METHOD_NOT_ALLOWED /* 405 */:
                                            case HttpStatus.SC_NOT_ACCEPTABLE /* 406 */:
                                            case HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED /* 407 */:
                                                return true;
                                            default:
                                                switch (i) {
                                                    case 600:
                                                    case 601:
                                                    case 602:
                                                    case 603:
                                                        return true;
                                                    default:
                                                        return false;
                                                }
                                        }
                                }
                        }
                }
        }
    }
}
