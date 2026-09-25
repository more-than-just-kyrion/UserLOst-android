package com.iiordanov.bVNC.input;

import android.os.Handler;
import android.view.KeyEvent;
import com.iiordanov.bVNC.App;
import com.iiordanov.bVNC.RemoteCanvas;
import com.iiordanov.tigervnc.rfb.UnicodeToKeysym;
import com.undatech.opaque.RfbConnectable;
import com.undatech.opaque.util.GeneralUtils;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteVncKeyboard extends RemoteKeyboard {
    private static final String TAG = "RemoteKeyboard";
    public static boolean rAltAsIsoL3Shift = false;
    protected RemoteCanvas canvas;

    public RemoteVncKeyboard(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas, Handler handler, boolean z, boolean z2) {
        super(rfbConnectable, remoteCanvas.getContext(), handler, z2);
        this.canvas = remoteCanvas;
        rAltAsIsoL3Shift = z;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x0210  */
    /* JADX WARN: Code duplicated, block: B:126:0x023b  */
    /* JADX WARN: Code duplicated, block: B:128:0x0241 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x0243 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:130:0x0245  */
    /* JADX WARN: Code duplicated, block: B:132:0x0249  */
    /* JADX WARN: Code duplicated, block: B:133:0x024c  */
    /* JADX WARN: Code duplicated, block: B:134:0x024f  */
    /* JADX WARN: Code duplicated, block: B:135:0x0252  */
    /* JADX WARN: Code duplicated, block: B:136:0x0255  */
    /* JADX WARN: Code duplicated, block: B:137:0x0258  */
    /* JADX WARN: Code duplicated, block: B:138:0x025b  */
    /* JADX WARN: Code duplicated, block: B:139:0x025e  */
    /* JADX WARN: Code duplicated, block: B:140:0x0261  */
    /* JADX WARN: Code duplicated, block: B:141:0x0264  */
    /* JADX WARN: Code duplicated, block: B:142:0x026b  */
    /* JADX WARN: Code duplicated, block: B:144:0x0274  */
    /* JADX WARN: Code duplicated, block: B:146:0x0278  */
    /* JADX WARN: Code duplicated, block: B:148:0x027c  */
    /* JADX WARN: Code duplicated, block: B:151:0x0281  */
    /* JADX WARN: Code duplicated, block: B:152:0x0288 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:153:0x028a  */
    /* JADX WARN: Code duplicated, block: B:154:0x0291  */
    /* JADX WARN: Code duplicated, block: B:158:0x029d A[Catch: Exception -> 0x036a, TryCatch #0 {Exception -> 0x036a, blocks: (B:156:0x0299, B:158:0x029d, B:160:0x02a2, B:164:0x02a9, B:165:0x02ab, B:167:0x02b3, B:171:0x02bd, B:173:0x02f4, B:177:0x0324, B:168:0x02b6), top: B:186:0x0299 }] */
    /* JADX WARN: Code duplicated, block: B:160:0x02a2 A[Catch: Exception -> 0x036a, TryCatch #0 {Exception -> 0x036a, blocks: (B:156:0x0299, B:158:0x029d, B:160:0x02a2, B:164:0x02a9, B:165:0x02ab, B:167:0x02b3, B:171:0x02bd, B:173:0x02f4, B:177:0x0324, B:168:0x02b6), top: B:186:0x0299 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x02a9 A[Catch: Exception -> 0x036a, TryCatch #0 {Exception -> 0x036a, blocks: (B:156:0x0299, B:158:0x029d, B:160:0x02a2, B:164:0x02a9, B:165:0x02ab, B:167:0x02b3, B:171:0x02bd, B:173:0x02f4, B:177:0x0324, B:168:0x02b6), top: B:186:0x0299 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x02b3 A[Catch: Exception -> 0x036a, TryCatch #0 {Exception -> 0x036a, blocks: (B:156:0x0299, B:158:0x029d, B:160:0x02a2, B:164:0x02a9, B:165:0x02ab, B:167:0x02b3, B:171:0x02bd, B:173:0x02f4, B:177:0x0324, B:168:0x02b6), top: B:186:0x0299 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x02b6 A[Catch: Exception -> 0x036a, TRY_LEAVE, TryCatch #0 {Exception -> 0x036a, blocks: (B:156:0x0299, B:158:0x029d, B:160:0x02a2, B:164:0x02a9, B:165:0x02ab, B:167:0x02b3, B:171:0x02bd, B:173:0x02f4, B:177:0x0324, B:168:0x02b6), top: B:186:0x0299 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x02bd A[Catch: Exception -> 0x036a, TRY_ENTER, TryCatch #0 {Exception -> 0x036a, blocks: (B:156:0x0299, B:158:0x029d, B:160:0x02a2, B:164:0x02a9, B:165:0x02ab, B:167:0x02b3, B:171:0x02bd, B:173:0x02f4, B:177:0x0324, B:168:0x02b6), top: B:186:0x0299 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x02f4 A[Catch: Exception -> 0x036a, TryCatch #0 {Exception -> 0x036a, blocks: (B:156:0x0299, B:158:0x029d, B:160:0x02a2, B:164:0x02a9, B:165:0x02ab, B:167:0x02b3, B:171:0x02bd, B:173:0x02f4, B:177:0x0324, B:168:0x02b6), top: B:186:0x0299 }] */
    /* JADX WARN: Code duplicated, block: B:174:0x031f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:175:0x0321  */
    /* JADX WARN: Code duplicated, block: B:177:0x0324 A[Catch: Exception -> 0x036a, TRY_LEAVE, TryCatch #0 {Exception -> 0x036a, blocks: (B:156:0x0299, B:158:0x029d, B:160:0x02a2, B:164:0x02a9, B:165:0x02ab, B:167:0x02b3, B:171:0x02bd, B:173:0x02f4, B:177:0x0324, B:168:0x02b6), top: B:186:0x0299 }] */
    @Override // com.undatech.opaque.input.RemoteKeyboard
    public boolean processLocalKeyEvent(int i, KeyEvent keyEvent, int i2) {
        int iTranslate;
        int unicodeChar;
        int i3;
        boolean z;
        int i4;
        int i5;
        int i6;
        int scanCode;
        GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: " + keyEvent.toString() + " " + i);
        if (this.rfb == null || !this.rfb.isInNormalProtocol()) {
            return false;
        }
        RemotePointer pointer = this.canvas.getPointer();
        int length = 1;
        boolean z2 = keyEvent.getAction() == 0 || keyEvent.getAction() == 2;
        int iConvertEventMetaState = i2 | convertEventMetaState(keyEvent);
        if (i == 82) {
            return true;
        }
        if (i == 25 || i == 24) {
            return false;
        }
        if (pointer.hardwareButtonsAsMouseEvents(i, keyEvent, this.onScreenMetaState | iConvertEventMetaState | this.hardwareMetaState)) {
            return true;
        }
        boolean z3 = keyEvent.getDeviceId() == 0;
        int i7 = 65479;
        if (z2) {
            iTranslate = 0;
            unicodeChar = 0;
        } else {
            int scanCode2 = keyEvent.getScanCode();
            if (scanCode2 != 1) {
                if (scanCode2 == 29) {
                    this.hardwareMetaState &= -4097;
                } else if (scanCode2 != 97) {
                    switch (scanCode2) {
                        case 59:
                            iTranslate = 65470;
                            break;
                        case 60:
                            iTranslate = 65471;
                            break;
                        case 61:
                            iTranslate = 65472;
                            break;
                        case 62:
                            iTranslate = 65473;
                            break;
                        case 63:
                            iTranslate = 65474;
                            break;
                        case 64:
                            iTranslate = 65475;
                            break;
                        case 65:
                            iTranslate = 65476;
                            break;
                        case 66:
                            iTranslate = 65477;
                            break;
                        case 67:
                            iTranslate = 65478;
                            break;
                        case 68:
                            iTranslate = 65479;
                            break;
                    }
                    unicodeChar = 0;
                } else {
                    this.hardwareMetaState &= -16385;
                }
                iTranslate = 0;
                unicodeChar = 0;
            } else {
                unicodeChar = 65307;
                iTranslate = 0;
            }
            if (i == 23) {
                this.hardwareMetaState &= -4097;
            } else if (i != 57) {
                if (i == 58) {
                    this.hardwareMetaState &= -33;
                }
            } else if (!z3) {
                this.hardwareMetaState &= -3;
            }
        }
        try {
            if (i == 0) {
                if (keyEvent.getCharacters() != null) {
                    char cCharAt = keyEvent.getCharacters().charAt(0);
                    iTranslate = UnicodeToKeysym.translate(cCharAt);
                    length = keyEvent.getCharacters().length();
                    i3 = cCharAt;
                    z = true;
                }
                if (z2) {
                    scanCode = keyEvent.getScanCode();
                    if (scanCode != 1) {
                        if (scanCode == 29) {
                            this.hardwareMetaState |= 4096;
                        } else if (scanCode != 97) {
                            switch (scanCode) {
                                case 59:
                                    i7 = 65470;
                                    break;
                                case 60:
                                    i7 = 65471;
                                    break;
                                case 61:
                                    i7 = 65472;
                                    break;
                                case 62:
                                    i7 = 65473;
                                    break;
                                case 63:
                                    i7 = 65474;
                                    break;
                                case 64:
                                    i7 = 65475;
                                    break;
                                case 65:
                                    i7 = 65476;
                                    break;
                                case 66:
                                    i7 = 65477;
                                    break;
                                case 67:
                                    i7 = 65478;
                                    break;
                            }
                        } else {
                            this.hardwareMetaState |= 16384;
                        }
                        i7 = iTranslate;
                    } else {
                        i7 = 65307;
                    }
                    if (i == 23) {
                        this.hardwareMetaState |= 4096;
                    } else if (i != 57) {
                        if (i == 58) {
                            this.hardwareMetaState |= 32;
                        }
                    } else if (!z3) {
                        this.hardwareMetaState |= 2;
                    }
                    iTranslate = i7;
                }
                if (this.afterMenu) {
                    this.afterMenu = false;
                    if (!z2) {
                        return true;
                    }
                }
                if (z2) {
                    this.lastKeyDown = iTranslate;
                }
                i4 = this.onScreenMetaState | iConvertEventMetaState | this.hardwareMetaState;
                if (z2) {
                    this.lastDownMetaState = i4;
                } else {
                    this.lastDownMetaState = 0;
                }
                if (length == 1) {
                    i6 = i3;
                    GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: Sending key. Down: " + z2 + ", key: " + i6 + ". keysym:" + iTranslate + ", metaState: " + i4);
                    this.rfb.writeKeyEvent(iTranslate, i4, z2);
                    if (z) {
                        GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: Unicode key. Down: false, key: " + i6 + ". keysym:" + iTranslate + ", metaState: " + i4);
                        this.rfb.writeKeyEvent(iTranslate, i4, false);
                    }
                } else if (length > 1) {
                    for (i5 = 0; i5 < length; i5++) {
                        char cCharAt2 = keyEvent.getCharacters().charAt(i5);
                        int iTranslate2 = UnicodeToKeysym.translate(cCharAt2);
                        GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: Sending multiple keys. Key: " + ((int) cCharAt2) + " keysym: " + iTranslate2 + ", metaState: " + i4);
                        this.rfb.writeKeyEvent(iTranslate2, i4, true);
                        this.rfb.writeKeyEvent(iTranslate2, i4, false);
                        this.lastDownMetaState = 0;
                    }
                }
                return true;
            }
            if (i == 4) {
                iTranslate = 65307;
            } else if (i == 61) {
                iTranslate = 65289;
            } else if (i == 66) {
                iTranslate = 65293;
            } else if (i == 67) {
                iTranslate = 65288;
            } else if (i == 92) {
                iTranslate = 65365;
            } else if (i != 93) {
                switch (i) {
                    case 19:
                        iTranslate = 65362;
                        break;
                    case 20:
                        iTranslate = 65364;
                        break;
                    case 21:
                        iTranslate = 65361;
                        break;
                    case 22:
                        iTranslate = 65363;
                        break;
                    default:
                        switch (i) {
                            case com.undatech.opaque.input.RemoteKeyboard.SCAN_DELETE /* 111 */:
                                iTranslate = 65307;
                                break;
                            case 112:
                                iTranslate = 65535;
                                break;
                            case 113:
                                iTranslate = 65507;
                                break;
                            case 114:
                                iTranslate = 65508;
                                break;
                            case 115:
                                iTranslate = 65509;
                                break;
                            case 116:
                                iTranslate = CipherSuite.DRAFT_TLS_ECDHE_PSK_WITH_AES_128_OCB;
                                break;
                            case 117:
                                iTranslate = 65515;
                                break;
                            case 118:
                                iTranslate = 65516;
                                break;
                            default:
                                switch (i) {
                                    case 120:
                                        iTranslate = 65377;
                                        break;
                                    case 121:
                                        iTranslate = 65387;
                                        break;
                                    case 122:
                                        iTranslate = 65360;
                                        break;
                                    case 123:
                                        iTranslate = 65367;
                                        break;
                                    case 124:
                                        iTranslate = 65379;
                                        break;
                                    default:
                                        switch (i) {
                                            case TarConstants.PREFIXLEN_XSTAR /* 131 */:
                                                iTranslate = 65470;
                                                break;
                                            case CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA /* 132 */:
                                                iTranslate = 65471;
                                                break;
                                            case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA /* 133 */:
                                                iTranslate = 65472;
                                                break;
                                            case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA /* 134 */:
                                                iTranslate = 65473;
                                                break;
                                            case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA /* 135 */:
                                                iTranslate = 65474;
                                                break;
                                            case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA /* 136 */:
                                                iTranslate = 65475;
                                                break;
                                            case CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA /* 137 */:
                                                iTranslate = 65476;
                                                break;
                                            case CipherSuite.TLS_PSK_WITH_RC4_128_SHA /* 138 */:
                                                iTranslate = 65477;
                                                break;
                                            case CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA /* 139 */:
                                                iTranslate = 65478;
                                                break;
                                            case CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA /* 140 */:
                                                iTranslate = 65479;
                                                break;
                                            case CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA /* 141 */:
                                                iTranslate = 65480;
                                                break;
                                            case CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA /* 142 */:
                                                iTranslate = 65481;
                                                break;
                                            case CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA /* 143 */:
                                                iTranslate = 65407;
                                                break;
                                            default:
                                                unicodeChar = new KeyEvent(keyEvent.getDownTime(), keyEvent.getEventTime(), keyEvent.getAction(), keyEvent.getKeyCode(), keyEvent.getRepeatCount(), keyEvent.getMetaState() & (~(((iConvertEventMetaState & 2) == 0 && (iConvertEventMetaState & 32) == 0) ? 487424 : 487474)), keyEvent.getDeviceId(), keyEvent.getScanCode()).getUnicodeChar();
                                                iTranslate = UnicodeToKeysym.translate(unicodeChar);
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                iTranslate = 65366;
            }
            i3 = unicodeChar;
            z = false;
            if (z2) {
                scanCode = keyEvent.getScanCode();
                if (scanCode != 1) {
                    if (scanCode == 29) {
                        this.hardwareMetaState |= 4096;
                    } else if (scanCode != 97) {
                        switch (scanCode) {
                            case 59:
                                i7 = 65470;
                                break;
                            case 60:
                                i7 = 65471;
                                break;
                            case 61:
                                i7 = 65472;
                                break;
                            case 62:
                                i7 = 65473;
                                break;
                            case 63:
                                i7 = 65474;
                                break;
                            case 64:
                                i7 = 65475;
                                break;
                            case 65:
                                i7 = 65476;
                                break;
                            case 66:
                                i7 = 65477;
                                break;
                            case 67:
                                i7 = 65478;
                                break;
                        }
                    } else {
                        this.hardwareMetaState |= 16384;
                    }
                    i7 = iTranslate;
                } else {
                    i7 = 65307;
                }
                if (i == 23) {
                    this.hardwareMetaState |= 4096;
                } else if (i != 57) {
                    if (i == 58) {
                        this.hardwareMetaState |= 32;
                    }
                } else if (!z3) {
                    this.hardwareMetaState |= 2;
                }
                iTranslate = i7;
            }
            if (this.afterMenu) {
                this.afterMenu = false;
                if (!z2 && iTranslate != this.lastKeyDown) {
                    return true;
                }
            }
            if (z2) {
                this.lastKeyDown = iTranslate;
            }
            i4 = this.onScreenMetaState | iConvertEventMetaState | this.hardwareMetaState;
            if (z2) {
                this.lastDownMetaState = i4;
            } else {
                this.lastDownMetaState = 0;
            }
            if (length == 1) {
                i6 = i3;
                GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: Sending key. Down: " + z2 + ", key: " + i6 + ". keysym:" + iTranslate + ", metaState: " + i4);
                this.rfb.writeKeyEvent(iTranslate, i4, z2);
                if (z) {
                    GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: Unicode key. Down: false, key: " + i6 + ". keysym:" + iTranslate + ", metaState: " + i4);
                    this.rfb.writeKeyEvent(iTranslate, i4, false);
                }
            } else if (length > 1) {
                while (i5 < length) {
                    char cCharAt3 = keyEvent.getCharacters().charAt(i5);
                    int iTranslate3 = UnicodeToKeysym.translate(cCharAt3);
                    GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: Sending multiple keys. Key: " + ((int) cCharAt3) + " keysym: " + iTranslate3 + ", metaState: " + i4);
                    this.rfb.writeKeyEvent(iTranslate3, i4, true);
                    this.rfb.writeKeyEvent(iTranslate3, i4, false);
                    this.lastDownMetaState = 0;
                }
            }
            return true;
            if (this.afterMenu) {
                this.afterMenu = false;
                if (!z2) {
                    return true;
                }
            }
            if (z2) {
                this.lastKeyDown = iTranslate;
            }
            i4 = this.onScreenMetaState | iConvertEventMetaState | this.hardwareMetaState;
            if (z2) {
                this.lastDownMetaState = i4;
            } else {
                this.lastDownMetaState = 0;
            }
            if (length == 1) {
                i6 = i3;
                GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: Sending key. Down: " + z2 + ", key: " + i6 + ". keysym:" + iTranslate + ", metaState: " + i4);
                this.rfb.writeKeyEvent(iTranslate, i4, z2);
                if (z) {
                    GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: Unicode key. Down: false, key: " + i6 + ". keysym:" + iTranslate + ", metaState: " + i4);
                    this.rfb.writeKeyEvent(iTranslate, i4, false);
                }
            } else if (length > 1) {
                while (i5 < length) {
                    char cCharAt4 = keyEvent.getCharacters().charAt(i5);
                    int iTranslate4 = UnicodeToKeysym.translate(cCharAt4);
                    GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: Sending multiple keys. Key: " + ((int) cCharAt4) + " keysym: " + iTranslate4 + ", metaState: " + i4);
                    this.rfb.writeKeyEvent(iTranslate4, i4, true);
                    this.rfb.writeKeyEvent(iTranslate4, i4, false);
                    this.lastDownMetaState = 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        i3 = unicodeChar;
        z = false;
        if (z2) {
            scanCode = keyEvent.getScanCode();
            if (scanCode != 1) {
                if (scanCode == 29) {
                    this.hardwareMetaState |= 4096;
                } else if (scanCode != 97) {
                    switch (scanCode) {
                        case 59:
                            i7 = 65470;
                            break;
                        case 60:
                            i7 = 65471;
                            break;
                        case 61:
                            i7 = 65472;
                            break;
                        case 62:
                            i7 = 65473;
                            break;
                        case 63:
                            i7 = 65474;
                            break;
                        case 64:
                            i7 = 65475;
                            break;
                        case 65:
                            i7 = 65476;
                            break;
                        case 66:
                            i7 = 65477;
                            break;
                        case 67:
                            i7 = 65478;
                            break;
                    }
                } else {
                    this.hardwareMetaState |= 16384;
                }
                i7 = iTranslate;
            } else {
                i7 = 65307;
            }
            if (i == 23) {
                this.hardwareMetaState |= 4096;
            } else if (i != 57) {
                if (i == 58) {
                    this.hardwareMetaState |= 32;
                }
            } else if (!z3) {
                this.hardwareMetaState |= 2;
            }
            iTranslate = i7;
        }
        return true;
    }

    @Override // com.iiordanov.bVNC.input.RemoteKeyboard
    public void sendMetaKey(MetaKeyBean metaKeyBean) {
        RemotePointer pointer = this.canvas.getPointer();
        int x = pointer.getX();
        int y = pointer.getY();
        if (metaKeyBean.isMouseClick()) {
            this.rfb.writePointerEvent(x, y, metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState, metaKeyBean.getMouseButtons(), false);
            this.rfb.writePointerEvent(x, y, metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState, 0, false);
        } else {
            this.rfb.writeKeyEvent(metaKeyBean.getKeySym(), metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState, true);
            this.rfb.writeKeyEvent(metaKeyBean.getKeySym(), metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState, false);
        }
    }
}
