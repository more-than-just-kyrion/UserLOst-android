package com.termux.terminal;

import androidx.exifinterface.media.ExifInterface;
import com.squareup.moshi.Json;
import io.sentry.connection.AbstractConnection;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Marker;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.pqc.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes2.dex */
public final class KeyHandler {
    public static final int KEYMOD_ALT = Integer.MIN_VALUE;
    public static final int KEYMOD_CTRL = 1073741824;
    public static final int KEYMOD_SHIFT = 536870912;
    private static final Map<String, Integer> TERMCAP_TO_KEYCODE;

    static {
        HashMap map = new HashMap();
        TERMCAP_TO_KEYCODE = map;
        map.put("%i", 536870934);
        map.put("#2", 536871034);
        map.put("#4", 536870933);
        map.put("*7", 536871035);
        map.put("k1", Integer.valueOf(TarConstants.PREFIXLEN_XSTAR));
        map.put("k2", Integer.valueOf(CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA));
        map.put("k3", Integer.valueOf(CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA));
        map.put("k4", Integer.valueOf(CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA));
        map.put("k5", Integer.valueOf(CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA));
        map.put("k6", Integer.valueOf(CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA));
        map.put("k7", Integer.valueOf(CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA));
        map.put("k8", Integer.valueOf(CipherSuite.TLS_PSK_WITH_RC4_128_SHA));
        map.put("k9", Integer.valueOf(CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA));
        map.put("k;", Integer.valueOf(CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA));
        map.put("F1", Integer.valueOf(CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA));
        map.put("F2", Integer.valueOf(CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA));
        map.put("F3", 536871043);
        map.put("F4", 536871044);
        map.put("F5", 536871045);
        map.put("F6", 536871046);
        map.put("F7", 536871047);
        map.put("F8", 536871048);
        map.put("F9", 536871049);
        map.put("FA", 536871050);
        map.put("FB", 536871051);
        map.put("FC", 536871052);
        map.put("FD", 536871053);
        map.put("FE", 536871054);
        map.put("kb", 67);
        map.put("kd", 20);
        map.put("kh", 122);
        map.put("kl", 21);
        map.put("kr", 22);
        map.put("K1", 122);
        map.put("K3", 92);
        map.put("K4", 123);
        map.put("K5", 93);
        map.put("ku", 19);
        map.put("kB", 536870973);
        map.put("kD", 112);
        map.put("kDN", 536870932);
        map.put("kF", 536870932);
        map.put("kI", 124);
        map.put("kN", 92);
        map.put("kP", 93);
        map.put("kR", 536870931);
        map.put("kUP", 536870931);
        map.put("@7", 123);
        map.put("@8", Integer.valueOf(CipherSuite.TLS_DH_RSA_WITH_AES_128_GCM_SHA256));
    }

    static String getCodeFromTermcap(String str, boolean z, boolean z2) {
        Integer num = TERMCAP_TO_KEYCODE.get(str);
        if (num == null) {
            return null;
        }
        int iIntValue = num.intValue();
        int i = 536870912;
        if ((iIntValue & 536870912) != 0) {
            iIntValue &= -536870913;
        } else {
            i = 0;
        }
        if ((iIntValue & 1073741824) != 0) {
            i |= 1073741824;
            iIntValue &= -1073741825;
        }
        if ((iIntValue & Integer.MIN_VALUE) != 0) {
            i |= Integer.MIN_VALUE;
            iIntValue &= Integer.MAX_VALUE;
        }
        return getCode(iIntValue, i, z, z2);
    }

    public static String getCode(int i, int i2, boolean z, boolean z2) {
        String str = "\u001b";
        if (i != 4) {
            if (i == 61) {
                return (536870912 & i2) == 0 ? "\t" : "\u001b[Z";
            }
            if (i == 62) {
                if ((i2 & 1073741824) == 0) {
                    return null;
                }
                return Json.UNSET_NAME;
            }
            if (i == 66) {
                return (i2 & Integer.MIN_VALUE) == 0 ? StringUtils.CR : "\u001b\r";
            }
            if (i == 67) {
                if ((i2 & Integer.MIN_VALUE) == 0) {
                    str = "";
                }
                return str.concat((i2 & 1073741824) == 0 ? "\u007f" : "\b");
            }
            if (i == 92) {
                return "\u001b[5~";
            }
            if (i == 93) {
                return "\u001b[6~";
            }
            if (i != 111) {
                if (i != 112) {
                    switch (i) {
                        case 19:
                            if (i2 == 0) {
                                return z ? "\u001bOA" : "\u001b[A";
                            }
                            return transformForModifiers("\u001b[1", i2, 'A');
                        case 20:
                            if (i2 == 0) {
                                return z ? "\u001bOB" : "\u001b[B";
                            }
                            return transformForModifiers("\u001b[1", i2, 'B');
                        case 21:
                            if (i2 == 0) {
                                return z ? "\u001bOD" : "\u001b[D";
                            }
                            return transformForModifiers("\u001b[1", i2, 'D');
                        case 22:
                            if (i2 == 0) {
                                return z ? "\u001bOC" : "\u001b[C";
                            }
                            return transformForModifiers("\u001b[1", i2, 'C');
                        case 23:
                            return StringUtils.CR;
                        default:
                            switch (i) {
                                case 120:
                                    return "\u001b[32~";
                                case 121:
                                    return "\u001b[34~";
                                case 122:
                                    if (i2 == 0) {
                                        return z ? "\u001bOH" : "\u001b[H";
                                    }
                                    return transformForModifiers("\u001b[1", i2, 'H');
                                case 123:
                                    if (i2 == 0) {
                                        return z ? "\u001bOF" : "\u001b[F";
                                    }
                                    return transformForModifiers("\u001b[1", i2, 'F');
                                case 124:
                                    return transformForModifiers("\u001b[2", i2, '~');
                                default:
                                    switch (i) {
                                        case TarConstants.PREFIXLEN_XSTAR /* 131 */:
                                            return i2 == 0 ? "\u001bOP" : transformForModifiers("\u001b[1", i2, 'P');
                                        case CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA /* 132 */:
                                            return i2 == 0 ? "\u001bOQ" : transformForModifiers("\u001b[1", i2, 'Q');
                                        case CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA /* 133 */:
                                            return i2 == 0 ? "\u001bOR" : transformForModifiers("\u001b[1", i2, Matrix.MATRIX_TYPE_RANDOM_REGULAR);
                                        case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA /* 134 */:
                                            return i2 == 0 ? "\u001bOS" : transformForModifiers("\u001b[1", i2, 'S');
                                        case CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA /* 135 */:
                                            return transformForModifiers("\u001b[15", i2, '~');
                                        case CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA /* 136 */:
                                            return transformForModifiers("\u001b[17", i2, '~');
                                        case CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA /* 137 */:
                                            return transformForModifiers("\u001b[18", i2, '~');
                                        case CipherSuite.TLS_PSK_WITH_RC4_128_SHA /* 138 */:
                                            return transformForModifiers("\u001b[19", i2, '~');
                                        case CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA /* 139 */:
                                            return transformForModifiers("\u001b[20", i2, '~');
                                        case CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA /* 140 */:
                                            return transformForModifiers("\u001b[21", i2, '~');
                                        case CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA /* 141 */:
                                            return transformForModifiers("\u001b[23", i2, '~');
                                        case CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA /* 142 */:
                                            return transformForModifiers("\u001b[24", i2, '~');
                                        case CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA /* 143 */:
                                            return "\u001bOP";
                                        case CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA /* 144 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'p') : "0";
                                        case CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA /* 145 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'q') : "1";
                                        case CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA /* 146 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'r') : ExifInterface.GPS_MEASUREMENT_2D;
                                        case CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA /* 147 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 's') : ExifInterface.GPS_MEASUREMENT_3D;
                                        case 148:
                                            return z2 ? transformForModifiers("\u001bO", i2, 't') : "4";
                                        case CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA /* 149 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'u') : "5";
                                        case CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA /* 150 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'v') : AbstractConnection.SENTRY_PROTOCOL_VERSION;
                                        case CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA /* 151 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'w') : "7";
                                        case CipherSuite.TLS_DH_RSA_WITH_SEED_CBC_SHA /* 152 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'x') : "8";
                                        case CipherSuite.TLS_DHE_DSS_WITH_SEED_CBC_SHA /* 153 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'y') : "9";
                                        case CipherSuite.TLS_DHE_RSA_WITH_SEED_CBC_SHA /* 154 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'o') : "/";
                                        case 155:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'j') : Marker.ANY_MARKER;
                                        case 156:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'm') : "-";
                                        case CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384 /* 157 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'k') : Marker.ANY_NON_NULL_MARKER;
                                        case CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 /* 158 */:
                                            return z2 ? "\u001bOn" : ".";
                                        case CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 /* 159 */:
                                            return ",";
                                        case CipherSuite.TLS_DH_RSA_WITH_AES_128_GCM_SHA256 /* 160 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'M') : StringUtils.LF;
                                        case CipherSuite.TLS_DH_RSA_WITH_AES_256_GCM_SHA384 /* 161 */:
                                            return z2 ? transformForModifiers("\u001bO", i2, 'X') : "=";
                                        default:
                                            return null;
                                    }
                            }
                    }
                }
                return transformForModifiers("\u001b[3", i2, '~');
            }
        }
        return "\u001b";
    }

    private static String transformForModifiers(String str, int i, char c) {
        int i2;
        if (i == Integer.MIN_VALUE) {
            i2 = 3;
        } else if (i == -1610612736) {
            i2 = 4;
        } else if (i == -1073741824) {
            i2 = 7;
        } else if (i == -536870912) {
            i2 = 8;
        } else if (i == 536870912) {
            i2 = 2;
        } else if (i == 1073741824) {
            i2 = 5;
        } else {
            if (i != 1610612736) {
                return str + c;
            }
            i2 = 6;
        }
        return str + ";" + i2 + c;
    }
}
