package com.google.android.gms.internal.mlkit_vision_object_detection_bundled;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import okio.internal.Buffer;

/* JADX INFO: compiled from: com.google.mlkit:object-detection@@17.0.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzdg implements Closeable {
    private final Reader zzb;
    private long zzi;
    private int zzj;
    private int[] zzk;
    private String[] zzm;
    private int[] zzn;
    private zzcp zzc = zzcp.LEGACY_STRICT;
    private final char[] zzd = new char[1024];
    private int zze = 0;
    private int zzf = 0;
    private int zzg = 0;
    private int zzh = 0;
    int zza = 0;
    private int zzl = 1;

    static {
        zzcr.zza = new zzdf();
    }

    public zzdg(Reader reader) {
        int[] iArr = new int[32];
        this.zzk = iArr;
        iArr[0] = 6;
        this.zzm = new String[32];
        this.zzn = new int[32];
        this.zzb = (Reader) Objects.requireNonNull(reader, "in == null");
    }

    private final int zzo(boolean z) throws IOException {
        int i = this.zze;
        int i2 = this.zzf;
        while (true) {
            if (i == i2) {
                this.zze = i;
                if (!zzw(1)) {
                    if (z) {
                        throw new EOFException("End of input".concat(zzc()));
                    }
                    return -1;
                }
                i = this.zze;
                i2 = this.zzf;
            }
            char[] cArr = this.zzd;
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.zzg++;
                this.zzh = i3;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.zze = i3;
                    if (i3 == i2) {
                        this.zze = i;
                        boolean zZzw = zzw(2);
                        this.zze++;
                        if (!zZzw) {
                            return 47;
                        }
                    }
                    zzt();
                    int i4 = this.zze;
                    char c2 = cArr[i4];
                    if (c2 == '*') {
                        this.zze = i4 + 1;
                        while (true) {
                            if (this.zze + 2 > this.zzf && !zzw(2)) {
                                throw zzp("Unterminated comment");
                            }
                            char[] cArr2 = this.zzd;
                            int i5 = this.zze;
                            if (cArr2[i5] != '\n') {
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= 2) {
                                        i = this.zze + 2;
                                        i2 = this.zzf;
                                        break;
                                    }
                                    if (this.zzd[this.zze + i6] != "*/".charAt(i6)) {
                                        break;
                                    }
                                    i6++;
                                }
                            } else {
                                this.zzg++;
                                this.zzh = i5 + 1;
                            }
                            this.zze++;
                        }
                    } else {
                        if (c2 != '/') {
                            return 47;
                        }
                        this.zze = i4 + 1;
                        zzv();
                        i = this.zze;
                        i2 = this.zzf;
                    }
                } else {
                    if (c != '#') {
                        this.zze = i3;
                        return c;
                    }
                    this.zze = i3;
                    zzt();
                    zzv();
                    i = this.zze;
                    i2 = this.zzf;
                }
            }
            i = i3;
        }
    }

    private final zzdj zzp(String str) throws zzdj {
        throw new zzdj(str + zzc() + "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#malformed-json");
    }

    private final IllegalStateException zzq(String str) throws IOException {
        int iZzn = zzn();
        String strZza = zzdh.zza(zzn());
        String strZzc = zzc();
        StringBuilder sb = new StringBuilder("Expected ");
        sb.append(str);
        sb.append(" but was ");
        sb.append(strZza);
        sb.append(strZzc);
        sb.append("\nSee ");
        sb.append("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat(iZzn == 9 ? "adapter-not-null-safe" : "unexpected-json-structure"));
        return new IllegalStateException(sb.toString());
    }

    private final String zzr(char c) throws IOException {
        char[] cArr;
        int i;
        StringBuilder sb = null;
        do {
            int i2 = this.zze;
            int i3 = this.zzf;
            int i4 = i2;
            while (true) {
                cArr = this.zzd;
                if (i2 < i3) {
                    int i5 = i2 + 1;
                    char c2 = cArr[i2];
                    if (this.zzc == zzcp.STRICT && c2 < ' ') {
                        throw zzp("Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode");
                    }
                    if (c2 == c) {
                        int i6 = (i5 - i4) - 1;
                        this.zze = i5;
                        if (sb == null) {
                            return new String(cArr, i4, i6);
                        }
                        sb.append(cArr, i4, i6);
                        return sb.toString();
                    }
                    char c3 = '\n';
                    if (c2 == '\\') {
                        int i7 = i5 - i4;
                        int i8 = i7 - 1;
                        this.zze = i5;
                        if (sb == null) {
                            sb = new StringBuilder(Math.max(i7 + i7, 16));
                        }
                        sb.append(cArr, i4, i8);
                        if (this.zze == this.zzf && !zzw(1)) {
                            throw zzp("Unterminated escape sequence");
                        }
                        char[] cArr2 = this.zzd;
                        int i9 = this.zze;
                        int i10 = i9 + 1;
                        this.zze = i10;
                        char c4 = cArr2[i9];
                        if (c4 != '\n') {
                            if (c4 == '\"') {
                                c3 = c4;
                            } else {
                                if (c4 != '\'') {
                                    if (c4 != '/' && c4 != '\\') {
                                        if (c4 == 'b') {
                                            c3 = '\b';
                                        } else if (c4 == 'f') {
                                            c3 = '\f';
                                        } else if (c4 != 'n') {
                                            if (c4 == 'r') {
                                                c3 = '\r';
                                            } else if (c4 == 't') {
                                                c3 = '\t';
                                            } else {
                                                if (c4 != 'u') {
                                                    throw zzp("Invalid escape sequence");
                                                }
                                                if (i9 + 5 > this.zzf && !zzw(4)) {
                                                    throw zzp("Unterminated escape sequence");
                                                }
                                                int i11 = this.zze;
                                                int i12 = i11 + 4;
                                                int i13 = 0;
                                                while (i11 < i12) {
                                                    char[] cArr3 = this.zzd;
                                                    int i14 = i13 << 4;
                                                    char c5 = cArr3[i11];
                                                    if (c5 >= '0' && c5 <= '9') {
                                                        i = c5 - '0';
                                                    } else if (c5 >= 'a' && c5 <= 'f') {
                                                        i = c5 - 'W';
                                                    } else {
                                                        if (c5 < 'A' || c5 > 'F') {
                                                            throw zzp("Malformed Unicode escape \\u".concat(new String(cArr3, this.zze, 4)));
                                                        }
                                                        i = c5 - '7';
                                                    }
                                                    i13 = i14 + i;
                                                    i11++;
                                                }
                                                this.zze += 4;
                                                c3 = (char) i13;
                                            }
                                        }
                                    }
                                }
                                c3 = c4;
                            }
                            sb.append(c3);
                            i4 = this.zze;
                            i3 = this.zzf;
                            i2 = i4;
                        } else {
                            if (this.zzc == zzcp.STRICT) {
                                throw zzp("Cannot escape a newline character in strict mode");
                            }
                            this.zzg++;
                            this.zzh = i10;
                        }
                        if (this.zzc == zzcp.STRICT) {
                            throw zzp("Invalid escaped character \"'\" in strict mode");
                        }
                        c3 = c4;
                        sb.append(c3);
                        i4 = this.zze;
                        i3 = this.zzf;
                        i2 = i4;
                    } else {
                        if (c2 == '\n') {
                            this.zzg++;
                            this.zzh = i5;
                        }
                        i2 = i5;
                    }
                }
            }
            int i15 = i2 - i4;
            if (sb == null) {
                sb = new StringBuilder(Math.max(i15 + i15, 16));
            }
            sb.append(cArr, i4, i15);
            this.zze = i2;
        } while (zzw(1));
        throw zzp("Unterminated string");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0042. Please report as an issue. */
    private final String zzs() throws IOException {
        String string;
        int i = 0;
        StringBuilder sb = null;
        while (true) {
            int i2 = 0;
            while (true) {
                int i3 = this.zze + i2;
                if (i3 < this.zzf) {
                    char c = this.zzd[i3];
                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                        if (c != '#') {
                            if (c != ',') {
                                if (c != '/' && c != '=') {
                                    if (c != '{' && c != '}' && c != ':') {
                                        if (c != ';') {
                                            switch (c) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i2++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        zzt();
                    }
                    i = i2;
                } else if (i2 >= 1024) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max(i2, 16));
                    }
                    sb.append(this.zzd, this.zze, i2);
                    this.zze += i2;
                    if (!zzw(1)) {
                    }
                } else if (!zzw(i2 + 1)) {
                    i = i2;
                }
                if (sb == null) {
                    string = new String(this.zzd, this.zze, i);
                } else {
                    sb.append(this.zzd, this.zze, i);
                    string = sb.toString();
                }
                this.zze += i;
                return string;
            }
        }
    }

    private final void zzt() throws zzdj {
        if (this.zzc != zzcp.LENIENT) {
            throw zzp("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
        }
    }

    private final void zzu(int i) throws zzdj {
        int i2 = this.zzl;
        if (i2 - 1 >= 1280) {
            throw new zzdj("Nesting limit 1280 reached" + zzc());
        }
        int[] iArr = this.zzk;
        if (i2 == iArr.length) {
            int i3 = i2 + i2;
            this.zzk = Arrays.copyOf(iArr, i3);
            this.zzn = Arrays.copyOf(this.zzn, i3);
            this.zzm = (String[]) Arrays.copyOf(this.zzm, i3);
        }
        int[] iArr2 = this.zzk;
        int i4 = this.zzl;
        this.zzl = i4 + 1;
        iArr2[i4] = i;
    }

    private final void zzv() throws IOException {
        char c;
        do {
            if (this.zze >= this.zzf && !zzw(1)) {
                return;
            }
            char[] cArr = this.zzd;
            int i = this.zze;
            int i2 = i + 1;
            this.zze = i2;
            c = cArr[i];
            if (c == '\n') {
                this.zzg++;
                this.zzh = i2;
                return;
            }
        } while (c != '\r');
    }

    private final boolean zzw(int i) throws IOException {
        int i2;
        int i3 = this.zzh;
        int i4 = this.zze;
        this.zzh = i3 - i4;
        char[] cArr = this.zzd;
        int i5 = this.zzf;
        if (i5 != i4) {
            int i6 = i5 - i4;
            this.zzf = i6;
            System.arraycopy(cArr, i4, cArr, 0, i6);
        } else {
            this.zzf = 0;
        }
        this.zze = 0;
        do {
            Reader reader = this.zzb;
            int i7 = this.zzf;
            int i8 = reader.read(cArr, i7, 1024 - i7);
            if (i8 == -1) {
                return false;
            }
            i2 = this.zzf + i8;
            this.zzf = i2;
            if (this.zzg == 0 && this.zzh == 0 && i2 > 0 && cArr[0] == 65279) {
                this.zze++;
                this.zzh = 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    private final boolean zzx(char c) throws IOException {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        zzt();
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zza = 0;
        this.zzk[0] = 8;
        this.zzl = 1;
        this.zzb.close();
    }

    public final String toString() {
        return String.valueOf(getClass().getSimpleName()).concat(zzc());
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0167  */
    /* JADX WARN: Code duplicated, block: B:106:0x016f  */
    /* JADX WARN: Code duplicated, block: B:111:0x0187  */
    /* JADX WARN: Code duplicated, block: B:114:0x0199  */
    /* JADX WARN: Code duplicated, block: B:117:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:120:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:121:0x01b1 A[PHI: r3 r4
  0x01b1: PHI (r3v10 int) = (r3v9 int), (r3v12 int) binds: [B:113:0x0197, B:120:0x01ab] A[DONT_GENERATE, DONT_INLINE]
  0x01b1: PHI (r4v9 int) = (r4v8 int), (r4v10 int) binds: [B:113:0x0197, B:120:0x01ab] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:123:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:125:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:165:0x021e  */
    /* JADX WARN: Code duplicated, block: B:166:0x0220  */
    /* JADX WARN: Code duplicated, block: B:168:0x0226 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:170:0x0229  */
    /* JADX WARN: Code duplicated, block: B:173:0x0231 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:175:0x0234 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:180:0x0248 A[DONT_INVERT, PHI: r1 r9
  0x0248: PHI (r1v59 int) = (r1v58 int), (r1v62 int) binds: [B:164:0x021c, B:179:0x0246] A[DONT_GENERATE, DONT_INLINE]
  0x0248: PHI (r9v18 int) = (r9v8 int), (r9v19 int) binds: [B:164:0x021c, B:179:0x0246] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:181:0x024a  */
    /* JADX WARN: Code duplicated, block: B:194:0x026c  */
    /* JADX WARN: Code duplicated, block: B:196:0x0272  */
    /* JADX WARN: Code duplicated, block: B:199:0x0277  */
    /* JADX WARN: Code duplicated, block: B:204:0x0287 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:205:0x0288  */
    /* JADX WARN: Code duplicated, block: B:207:0x0294  */
    /* JADX WARN: Code duplicated, block: B:209:0x029c  */
    /* JADX WARN: Code duplicated, block: B:211:0x02a3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:212:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:213:0x02a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:214:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:223:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:225:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:241:0x02fc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:242:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:244:0x0302  */
    /* JADX WARN: Code duplicated, block: B:246:0x0311  */
    /* JADX WARN: Code duplicated, block: B:247:0x0314  */
    /* JADX WARN: Code duplicated, block: B:249:0x0319 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:251:0x031c  */
    /* JADX WARN: Code duplicated, block: B:253:0x0321  */
    /* JADX WARN: Code duplicated, block: B:255:0x0329  */
    /* JADX WARN: Code duplicated, block: B:264:0x019d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x019d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:266:0x01a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:274:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00e9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:71:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:87:0x0128  */
    /* JADX WARN: Code duplicated, block: B:91:0x0138  */
    /* JADX WARN: Code duplicated, block: B:93:0x013f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0148  */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0231, code lost:
    
        if (r14 == 0) goto L177;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final int zza() throws IOException {
        int iZzo;
        int iZzo2;
        int i;
        int iZzo3;
        char c;
        String str;
        String str2;
        int i2;
        int i3;
        int length;
        char c2;
        char[] cArr;
        int i4;
        int i5;
        long j;
        int i6;
        int i7;
        int i8;
        long j2;
        boolean z;
        char c3;
        long j3;
        int i9;
        int i10;
        int i11;
        int[] iArr = this.zzk;
        int i12 = this.zzl - 1;
        int i13 = iArr[i12];
        int i14 = 3;
        int i15 = 1;
        if (i13 != 1) {
            if (i13 == 2) {
                int iZzo4 = zzo(true);
                if (iZzo4 != 44) {
                    if (iZzo4 == 59) {
                        zzt();
                    } else {
                        if (iZzo4 != 93) {
                            throw zzp("Unterminated array");
                        }
                        i14 = 4;
                    }
                }
            } else if (i13 == 3 || i13 == 5) {
                int i16 = 2;
                iArr[i12] = 4;
                if (i13 != 5 || (iZzo2 = zzo(true)) == 44) {
                    iZzo = zzo(true);
                    if (iZzo != 34) {
                        i14 = 13;
                    } else {
                        if (iZzo != 39) {
                            zzt();
                            this.zza = 12;
                            return 12;
                        }
                        if (iZzo != 125) {
                            zzt();
                            this.zze--;
                            if (zzx((char) iZzo)) {
                                throw zzp("Expected name");
                            }
                            i14 = 14;
                        } else {
                            if (i13 == 5) {
                                throw zzp("Expected name");
                            }
                            i14 = i16;
                        }
                    }
                } else {
                    if (iZzo2 == 59) {
                        zzt();
                        iZzo = zzo(true);
                        if (iZzo != 34) {
                            i14 = 13;
                        } else {
                            if (iZzo != 39) {
                                zzt();
                                this.zza = 12;
                                return 12;
                            }
                            if (iZzo != 125) {
                                zzt();
                                this.zze--;
                                if (zzx((char) iZzo)) {
                                    throw zzp("Expected name");
                                }
                                i14 = 14;
                            } else if (i13 == 5) {
                                throw zzp("Expected name");
                            }
                        }
                    } else if (iZzo2 != 125) {
                        throw zzp("Unterminated object");
                    }
                    i14 = i16;
                }
            } else if (i13 == 4) {
                iArr[i12] = 5;
                int iZzo5 = zzo(true);
                if (iZzo5 != 58) {
                    if (iZzo5 != 61) {
                        throw zzp("Expected ':'");
                    }
                    zzt();
                    if (this.zze < this.zzf || zzw(1)) {
                        char[] cArr2 = this.zzd;
                        int i17 = this.zze;
                        if (cArr2[i17] == '>') {
                            this.zze = i17 + 1;
                        }
                    }
                }
            } else if (i13 == 6) {
                if (this.zzc == zzcp.LENIENT) {
                    zzo(true);
                    int i18 = this.zze;
                    this.zze = i18 - 1;
                    if (i18 + 4 <= this.zzf || zzw(5)) {
                        int i19 = this.zze;
                        char[] cArr3 = this.zzd;
                        if (cArr3[i19] == ')' && cArr3[i19 + 1] == ']' && cArr3[i19 + 2] == '}' && cArr3[i19 + 3] == '\'' && cArr3[i19 + 4] == '\n') {
                            this.zze = i19 + 5;
                        }
                    }
                }
                this.zzk[this.zzl - 1] = 7;
            } else {
                if (i13 == 7) {
                    i = 0;
                    if (zzo(false) == -1) {
                        i14 = 17;
                    } else {
                        zzt();
                        this.zze--;
                    }
                } else {
                    i = 0;
                    if (i13 == 8) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                }
                iZzo3 = zzo(true);
                if (iZzo3 != 34) {
                    if (iZzo3 != 39) {
                        zzt();
                        this.zza = 8;
                        return 8;
                    }
                    if (iZzo3 != 44 && iZzo3 != 59) {
                        if (iZzo3 != 91) {
                            if (iZzo3 != 93) {
                                if (iZzo3 != 123) {
                                    int i20 = this.zze - 1;
                                    this.zze = i20;
                                    c = this.zzd[i20];
                                    if (c != 't' || c == 'T') {
                                        str = "TRUE";
                                        str2 = "true";
                                        i2 = 5;
                                    } else {
                                        if (c != 'f' && c != 'F') {
                                            if (c != 'n' && c != 'N') {
                                                i2 = i;
                                                break;
                                            }
                                            str = "NULL";
                                            str2 = "null";
                                            i2 = 7;
                                            if (i2 != 0) {
                                                return i2;
                                            }
                                            cArr = this.zzd;
                                            i4 = this.zze;
                                            i5 = this.zzf;
                                            j = 0;
                                            i6 = i;
                                            i7 = i6;
                                            i8 = i7;
                                            j2 = 0;
                                            z = true;
                                            while (true) {
                                                if (i4 + i7 != i5) {
                                                    c3 = cArr[i4 + i7];
                                                    if (c3 != '+') {
                                                        if (c3 != 'E' || c3 == 'e') {
                                                            j3 = j;
                                                            if (i6 != 2 || i6 == 4) {
                                                                i6 = 5;
                                                                i7++;
                                                                j = j3;
                                                            }
                                                        } else if (c3 == '-') {
                                                            j3 = j;
                                                            i9 = 6;
                                                            if (i6 == 0) {
                                                                i6 = 1;
                                                                i8 = 1;
                                                            } else {
                                                                if (i6 != 5) {
                                                                }
                                                                i6 = i9;
                                                            }
                                                            i7++;
                                                            j = j3;
                                                        } else if (c3 == '.') {
                                                            j3 = j;
                                                            if (i6 == 2) {
                                                                i6 = 3;
                                                                i7++;
                                                                j = j3;
                                                            }
                                                        } else if (c3 >= '0' && c3 <= '9') {
                                                            if (i6 == 1 || i6 == 0) {
                                                                j2 = -(c3 - '0');
                                                                i6 = 2;
                                                            } else if (i6 == 2) {
                                                                if (j2 != j) {
                                                                    long j4 = (10 * j2) - ((long) (c3 - '0'));
                                                                    z &= j2 > Buffer.OVERFLOW_ZONE || (j2 == Buffer.OVERFLOW_ZONE && j4 < j2);
                                                                    j2 = j4;
                                                                }
                                                            } else if (i6 == 3) {
                                                                i6 = 4;
                                                            } else if (i6 == 5 || i6 == 6) {
                                                                i6 = 7;
                                                            }
                                                            j3 = 0;
                                                            i7++;
                                                            j = j3;
                                                        } else if (!zzx(c3)) {
                                                            i11 = 2;
                                                            if (i6 == 2) {
                                                                if (z) {
                                                                    if (j2 == Long.MIN_VALUE) {
                                                                        i15 = i8;
                                                                    } else if (i8 != 0) {
                                                                    }
                                                                    if (j2 == 0) {
                                                                        if (i15 == 0) {
                                                                        }
                                                                        this.zzi = j2;
                                                                        this.zze += i7;
                                                                        this.zza = 15;
                                                                        i10 = 15;
                                                                    }
                                                                    j2 = -j2;
                                                                    this.zzi = j2;
                                                                    this.zze += i7;
                                                                    this.zza = 15;
                                                                    i10 = 15;
                                                                }
                                                                i11 = 2;
                                                                i6 = 2;
                                                                if (i6 != i11) {
                                                                }
                                                                this.zzj = i7;
                                                                i10 = 16;
                                                                this.zza = 16;
                                                            } else if (i6 != i11 || i6 == 4 || i6 == 7) {
                                                                this.zzj = i7;
                                                                i10 = 16;
                                                                this.zza = 16;
                                                            }
                                                        }
                                                        if (i10 != 0) {
                                                            return i10;
                                                        }
                                                        if (zzx(this.zzd[this.zze])) {
                                                            throw zzp("Expected value");
                                                        }
                                                        zzt();
                                                        this.zza = 10;
                                                        return 10;
                                                    }
                                                    j3 = j;
                                                    i9 = 6;
                                                    if (i6 != 5) {
                                                    }
                                                    i6 = i9;
                                                    i7++;
                                                    j = j3;
                                                } else if (i7 != 1024) {
                                                    if (zzw(i7 + 1)) {
                                                        int i21 = this.zze;
                                                        i5 = this.zzf;
                                                        i4 = i21;
                                                        c3 = cArr[i4 + i7];
                                                        if (c3 != '+') {
                                                            if (c3 != 'E') {
                                                                j3 = j;
                                                                if (i6 != 2) {
                                                                }
                                                                i6 = 5;
                                                                i7++;
                                                                j = j3;
                                                            } else {
                                                                j3 = j;
                                                                if (i6 != 2) {
                                                                }
                                                                i6 = 5;
                                                                i7++;
                                                                j = j3;
                                                            }
                                                            if (i10 != 0) {
                                                                return i10;
                                                            }
                                                            if (zzx(this.zzd[this.zze])) {
                                                                throw zzp("Expected value");
                                                            }
                                                            zzt();
                                                            this.zza = 10;
                                                            return 10;
                                                        }
                                                        j3 = j;
                                                        i9 = 6;
                                                        if (i6 != 5) {
                                                        }
                                                        i6 = i9;
                                                        i7++;
                                                        j = j3;
                                                    }
                                                    i11 = 2;
                                                    if (i6 == 2) {
                                                        if (i6 != i11) {
                                                        }
                                                        this.zzj = i7;
                                                        i10 = 16;
                                                        this.zza = 16;
                                                    } else {
                                                        if (z) {
                                                            if (j2 == Long.MIN_VALUE) {
                                                                i15 = i8;
                                                            } else if (i8 != 0) {
                                                            }
                                                            if (j2 == 0) {
                                                                if (i15 == 0) {
                                                                }
                                                                this.zzi = j2;
                                                                this.zze += i7;
                                                                this.zza = 15;
                                                                i10 = 15;
                                                            }
                                                            j2 = -j2;
                                                            this.zzi = j2;
                                                            this.zze += i7;
                                                            this.zza = 15;
                                                            i10 = 15;
                                                        }
                                                        i11 = 2;
                                                        i6 = 2;
                                                        if (i6 != i11) {
                                                        }
                                                        this.zzj = i7;
                                                        i10 = 16;
                                                        this.zza = 16;
                                                    }
                                                    if (i10 != 0) {
                                                        return i10;
                                                    }
                                                    if (zzx(this.zzd[this.zze])) {
                                                        throw zzp("Expected value");
                                                    }
                                                    zzt();
                                                    this.zza = 10;
                                                    return 10;
                                                }
                                                i10 = 0;
                                                if (i10 != 0) {
                                                    return i10;
                                                }
                                                if (zzx(this.zzd[this.zze])) {
                                                    throw zzp("Expected value");
                                                }
                                                zzt();
                                                this.zza = 10;
                                                return 10;
                                            }
                                        }
                                        str = "FALSE";
                                        str2 = "false";
                                        i2 = 6;
                                    }
                                    zzcp zzcpVar = this.zzc;
                                    zzcp zzcpVar2 = zzcp.STRICT;
                                    i3 = i;
                                    while (true) {
                                        length = str2.length();
                                        if (i3 >= length) {
                                            if ((this.zze + length < this.zzf && !zzw(length + 1)) || !zzx(this.zzd[this.zze + length])) {
                                                this.zze += length;
                                                this.zza = i2;
                                                break;
                                            }
                                            break;
                                        }
                                        if ((this.zze + i3 >= this.zzf || zzw(i3 + 1)) && ((c2 = this.zzd[this.zze + i3]) == str2.charAt(i3) || (zzcpVar != zzcpVar2 && c2 == str.charAt(i3)))) {
                                        }
                                        i2 = i;
                                        break;
                                    }
                                    if (i2 != 0) {
                                        return i2;
                                    }
                                    cArr = this.zzd;
                                    i4 = this.zze;
                                    i5 = this.zzf;
                                    j = 0;
                                    i6 = i;
                                    i7 = i6;
                                    i8 = i7;
                                    j2 = 0;
                                    z = true;
                                    while (true) {
                                        if (i4 + i7 != i5) {
                                            c3 = cArr[i4 + i7];
                                            if (c3 != '+') {
                                                if (c3 != 'E') {
                                                    j3 = j;
                                                    if (i6 != 2) {
                                                    }
                                                    i6 = 5;
                                                    i7++;
                                                    j = j3;
                                                } else {
                                                    j3 = j;
                                                    if (i6 != 2) {
                                                    }
                                                    i6 = 5;
                                                    i7++;
                                                    j = j3;
                                                }
                                                if (i10 != 0) {
                                                    return i10;
                                                }
                                                if (zzx(this.zzd[this.zze])) {
                                                    throw zzp("Expected value");
                                                }
                                                zzt();
                                                this.zza = 10;
                                                return 10;
                                            }
                                            j3 = j;
                                            i9 = 6;
                                            if (i6 != 5) {
                                            }
                                            i6 = i9;
                                            i7++;
                                            j = j3;
                                        } else if (i7 != 1024) {
                                            if (zzw(i7 + 1)) {
                                                int i22 = this.zze;
                                                i5 = this.zzf;
                                                i4 = i22;
                                                c3 = cArr[i4 + i7];
                                                if (c3 != '+') {
                                                    if (c3 != 'E') {
                                                        j3 = j;
                                                        if (i6 != 2) {
                                                        }
                                                        i6 = 5;
                                                        i7++;
                                                        j = j3;
                                                    } else {
                                                        j3 = j;
                                                        if (i6 != 2) {
                                                        }
                                                        i6 = 5;
                                                        i7++;
                                                        j = j3;
                                                    }
                                                    if (i10 != 0) {
                                                        return i10;
                                                    }
                                                    if (zzx(this.zzd[this.zze])) {
                                                        throw zzp("Expected value");
                                                    }
                                                    zzt();
                                                    this.zza = 10;
                                                    return 10;
                                                }
                                                j3 = j;
                                                i9 = 6;
                                                if (i6 != 5) {
                                                }
                                                i6 = i9;
                                                i7++;
                                                j = j3;
                                            }
                                            i11 = 2;
                                            if (i6 == 2) {
                                                if (i6 != i11) {
                                                }
                                                this.zzj = i7;
                                                i10 = 16;
                                                this.zza = 16;
                                            } else {
                                                if (z) {
                                                    if (j2 == Long.MIN_VALUE) {
                                                        i15 = i8;
                                                    } else if (i8 != 0) {
                                                    }
                                                    if (j2 == 0) {
                                                        if (i15 == 0) {
                                                        }
                                                        this.zzi = j2;
                                                        this.zze += i7;
                                                        this.zza = 15;
                                                        i10 = 15;
                                                    }
                                                    j2 = -j2;
                                                    this.zzi = j2;
                                                    this.zze += i7;
                                                    this.zza = 15;
                                                    i10 = 15;
                                                }
                                                i11 = 2;
                                                i6 = 2;
                                                if (i6 != i11) {
                                                }
                                                this.zzj = i7;
                                                i10 = 16;
                                                this.zza = 16;
                                            }
                                            if (i10 != 0) {
                                                return i10;
                                            }
                                            if (zzx(this.zzd[this.zze])) {
                                                throw zzp("Expected value");
                                            }
                                            zzt();
                                            this.zza = 10;
                                            return 10;
                                        }
                                        i10 = 0;
                                        if (i10 != 0) {
                                            return i10;
                                        }
                                        if (zzx(this.zzd[this.zze])) {
                                            throw zzp("Expected value");
                                        }
                                        zzt();
                                        this.zza = 10;
                                        return 10;
                                    }
                                }
                                i14 = 1;
                            } else if (i13 == 1) {
                                i14 = 4;
                            }
                        }
                    }
                    if (i13 == 1 && i13 != 2) {
                        throw zzp("Unexpected value");
                    }
                    zzt();
                    this.zze--;
                    this.zza = 7;
                    return 7;
                }
                i14 = 9;
            }
            this.zza = i14;
            return i14;
        }
        iArr[i12] = 2;
        i = 0;
        iZzo3 = zzo(true);
        if (iZzo3 != 34) {
            if (iZzo3 != 39) {
                zzt();
                this.zza = 8;
                return 8;
            }
            if (iZzo3 != 44) {
                if (iZzo3 != 91) {
                    if (iZzo3 != 93) {
                        if (iZzo3 != 123) {
                            int i23 = this.zze - 1;
                            this.zze = i23;
                            c = this.zzd[i23];
                            if (c != 't') {
                                str = "TRUE";
                                str2 = "true";
                                i2 = 5;
                                zzcp zzcpVar3 = this.zzc;
                                zzcp zzcpVar4 = zzcp.STRICT;
                                i3 = i;
                                while (true) {
                                    length = str2.length();
                                    if (i3 >= length) {
                                        if (this.zze + length < this.zzf) {
                                        }
                                        this.zze += length;
                                        this.zza = i2;
                                        break;
                                    }
                                    i3 = this.zze + i3 >= this.zzf ? i3 + 1 : i3 + 1;
                                }
                                if (i2 != 0) {
                                    return i2;
                                }
                                cArr = this.zzd;
                                i4 = this.zze;
                                i5 = this.zzf;
                                j = 0;
                                i6 = i;
                                i7 = i6;
                                i8 = i7;
                                j2 = 0;
                                z = true;
                                while (true) {
                                    if (i4 + i7 != i5) {
                                        c3 = cArr[i4 + i7];
                                        if (c3 != '+') {
                                            if (c3 != 'E') {
                                                j3 = j;
                                                if (i6 != 2) {
                                                }
                                                i6 = 5;
                                                i7++;
                                                j = j3;
                                            } else {
                                                j3 = j;
                                                if (i6 != 2) {
                                                }
                                                i6 = 5;
                                                i7++;
                                                j = j3;
                                            }
                                            if (i10 != 0) {
                                                return i10;
                                            }
                                            if (zzx(this.zzd[this.zze])) {
                                                throw zzp("Expected value");
                                            }
                                            zzt();
                                            this.zza = 10;
                                            return 10;
                                        }
                                        j3 = j;
                                        i9 = 6;
                                        if (i6 != 5) {
                                        }
                                        i6 = i9;
                                        i7++;
                                        j = j3;
                                    } else if (i7 != 1024) {
                                        if (zzw(i7 + 1)) {
                                            int i24 = this.zze;
                                            i5 = this.zzf;
                                            i4 = i24;
                                            c3 = cArr[i4 + i7];
                                            if (c3 != '+') {
                                                if (c3 != 'E') {
                                                    j3 = j;
                                                    if (i6 != 2) {
                                                    }
                                                    i6 = 5;
                                                    i7++;
                                                    j = j3;
                                                } else {
                                                    j3 = j;
                                                    if (i6 != 2) {
                                                    }
                                                    i6 = 5;
                                                    i7++;
                                                    j = j3;
                                                }
                                                if (i10 != 0) {
                                                    return i10;
                                                }
                                                if (zzx(this.zzd[this.zze])) {
                                                    throw zzp("Expected value");
                                                }
                                                zzt();
                                                this.zza = 10;
                                                return 10;
                                            }
                                            j3 = j;
                                            i9 = 6;
                                            if (i6 != 5) {
                                            }
                                            i6 = i9;
                                            i7++;
                                            j = j3;
                                        }
                                        i11 = 2;
                                        if (i6 == 2) {
                                            if (i6 != i11) {
                                            }
                                            this.zzj = i7;
                                            i10 = 16;
                                            this.zza = 16;
                                        } else {
                                            if (z) {
                                                if (j2 == Long.MIN_VALUE) {
                                                    i15 = i8;
                                                } else if (i8 != 0) {
                                                }
                                                if (j2 == 0) {
                                                    if (i15 == 0) {
                                                    }
                                                    this.zzi = j2;
                                                    this.zze += i7;
                                                    this.zza = 15;
                                                    i10 = 15;
                                                }
                                                j2 = -j2;
                                                this.zzi = j2;
                                                this.zze += i7;
                                                this.zza = 15;
                                                i10 = 15;
                                            }
                                            i11 = 2;
                                            i6 = 2;
                                            if (i6 != i11) {
                                            }
                                            this.zzj = i7;
                                            i10 = 16;
                                            this.zza = 16;
                                        }
                                        if (i10 != 0) {
                                            return i10;
                                        }
                                        if (zzx(this.zzd[this.zze])) {
                                            throw zzp("Expected value");
                                        }
                                        zzt();
                                        this.zza = 10;
                                        return 10;
                                    }
                                    i10 = 0;
                                    if (i10 != 0) {
                                        return i10;
                                    }
                                    if (zzx(this.zzd[this.zze])) {
                                        throw zzp("Expected value");
                                    }
                                    zzt();
                                    this.zza = 10;
                                    return 10;
                                }
                            }
                            str = "TRUE";
                            str2 = "true";
                            i2 = 5;
                            zzcp zzcpVar5 = this.zzc;
                            zzcp zzcpVar6 = zzcp.STRICT;
                            i3 = i;
                            while (true) {
                                length = str2.length();
                                if (i3 >= length) {
                                    if (this.zze + length < this.zzf) {
                                    }
                                    this.zze += length;
                                    this.zza = i2;
                                    break;
                                }
                                if (this.zze + i3 >= this.zzf) {
                                }
                            }
                            if (i2 != 0) {
                                return i2;
                            }
                            cArr = this.zzd;
                            i4 = this.zze;
                            i5 = this.zzf;
                            j = 0;
                            i6 = i;
                            i7 = i6;
                            i8 = i7;
                            j2 = 0;
                            z = true;
                            while (true) {
                                if (i4 + i7 != i5) {
                                    c3 = cArr[i4 + i7];
                                    if (c3 != '+') {
                                        if (c3 != 'E') {
                                            j3 = j;
                                            if (i6 != 2) {
                                            }
                                            i6 = 5;
                                            i7++;
                                            j = j3;
                                        } else {
                                            j3 = j;
                                            if (i6 != 2) {
                                            }
                                            i6 = 5;
                                            i7++;
                                            j = j3;
                                        }
                                        if (i10 != 0) {
                                            return i10;
                                        }
                                        if (zzx(this.zzd[this.zze])) {
                                            throw zzp("Expected value");
                                        }
                                        zzt();
                                        this.zza = 10;
                                        return 10;
                                    }
                                    j3 = j;
                                    i9 = 6;
                                    if (i6 != 5) {
                                    }
                                    i6 = i9;
                                    i7++;
                                    j = j3;
                                } else if (i7 != 1024) {
                                    if (zzw(i7 + 1)) {
                                        int i25 = this.zze;
                                        i5 = this.zzf;
                                        i4 = i25;
                                        c3 = cArr[i4 + i7];
                                        if (c3 != '+') {
                                            if (c3 != 'E') {
                                                j3 = j;
                                                if (i6 != 2) {
                                                }
                                                i6 = 5;
                                                i7++;
                                                j = j3;
                                            } else {
                                                j3 = j;
                                                if (i6 != 2) {
                                                }
                                                i6 = 5;
                                                i7++;
                                                j = j3;
                                            }
                                            if (i10 != 0) {
                                                return i10;
                                            }
                                            if (zzx(this.zzd[this.zze])) {
                                                throw zzp("Expected value");
                                            }
                                            zzt();
                                            this.zza = 10;
                                            return 10;
                                        }
                                        j3 = j;
                                        i9 = 6;
                                        if (i6 != 5) {
                                        }
                                        i6 = i9;
                                        i7++;
                                        j = j3;
                                    }
                                    i11 = 2;
                                    if (i6 == 2) {
                                        if (i6 != i11) {
                                        }
                                        this.zzj = i7;
                                        i10 = 16;
                                        this.zza = 16;
                                    } else {
                                        if (z) {
                                            if (j2 == Long.MIN_VALUE) {
                                                i15 = i8;
                                            } else if (i8 != 0) {
                                            }
                                            if (j2 == 0) {
                                                if (i15 == 0) {
                                                }
                                                this.zzi = j2;
                                                this.zze += i7;
                                                this.zza = 15;
                                                i10 = 15;
                                            }
                                            j2 = -j2;
                                            this.zzi = j2;
                                            this.zze += i7;
                                            this.zza = 15;
                                            i10 = 15;
                                        }
                                        i11 = 2;
                                        i6 = 2;
                                        if (i6 != i11) {
                                        }
                                        this.zzj = i7;
                                        i10 = 16;
                                        this.zza = 16;
                                    }
                                    if (i10 != 0) {
                                        return i10;
                                    }
                                    if (zzx(this.zzd[this.zze])) {
                                        throw zzp("Expected value");
                                    }
                                    zzt();
                                    this.zza = 10;
                                    return 10;
                                }
                                i10 = 0;
                                if (i10 != 0) {
                                    return i10;
                                }
                                if (zzx(this.zzd[this.zze])) {
                                    throw zzp("Expected value");
                                }
                                zzt();
                                this.zza = 10;
                                return 10;
                            }
                            i2 = i;
                            if (i2 != 0) {
                                return i2;
                            }
                            cArr = this.zzd;
                            i4 = this.zze;
                            i5 = this.zzf;
                            j = 0;
                            i6 = i;
                            i7 = i6;
                            i8 = i7;
                            j2 = 0;
                            z = true;
                            while (true) {
                                if (i4 + i7 != i5) {
                                    c3 = cArr[i4 + i7];
                                    if (c3 != '+') {
                                        if (c3 != 'E') {
                                            j3 = j;
                                            if (i6 != 2) {
                                            }
                                            i6 = 5;
                                            i7++;
                                            j = j3;
                                        } else {
                                            j3 = j;
                                            if (i6 != 2) {
                                            }
                                            i6 = 5;
                                            i7++;
                                            j = j3;
                                        }
                                        if (i10 != 0) {
                                            return i10;
                                        }
                                        if (zzx(this.zzd[this.zze])) {
                                            throw zzp("Expected value");
                                        }
                                        zzt();
                                        this.zza = 10;
                                        return 10;
                                    }
                                    j3 = j;
                                    i9 = 6;
                                    if (i6 != 5) {
                                    }
                                    i6 = i9;
                                    i7++;
                                    j = j3;
                                } else if (i7 != 1024) {
                                    if (zzw(i7 + 1)) {
                                        int i26 = this.zze;
                                        i5 = this.zzf;
                                        i4 = i26;
                                        c3 = cArr[i4 + i7];
                                        if (c3 != '+') {
                                            if (c3 != 'E') {
                                                j3 = j;
                                                if (i6 != 2) {
                                                }
                                                i6 = 5;
                                                i7++;
                                                j = j3;
                                            } else {
                                                j3 = j;
                                                if (i6 != 2) {
                                                }
                                                i6 = 5;
                                                i7++;
                                                j = j3;
                                            }
                                            if (i10 != 0) {
                                                return i10;
                                            }
                                            if (zzx(this.zzd[this.zze])) {
                                                throw zzp("Expected value");
                                            }
                                            zzt();
                                            this.zza = 10;
                                            return 10;
                                        }
                                        j3 = j;
                                        i9 = 6;
                                        if (i6 != 5) {
                                        }
                                        i6 = i9;
                                        i7++;
                                        j = j3;
                                    }
                                    i11 = 2;
                                    if (i6 == 2) {
                                        if (i6 != i11) {
                                        }
                                        this.zzj = i7;
                                        i10 = 16;
                                        this.zza = 16;
                                    } else {
                                        if (z) {
                                            if (j2 == Long.MIN_VALUE) {
                                                i15 = i8;
                                            } else if (i8 != 0) {
                                            }
                                            if (j2 == 0) {
                                                if (i15 == 0) {
                                                }
                                                this.zzi = j2;
                                                this.zze += i7;
                                                this.zza = 15;
                                                i10 = 15;
                                            }
                                            j2 = -j2;
                                            this.zzi = j2;
                                            this.zze += i7;
                                            this.zza = 15;
                                            i10 = 15;
                                        }
                                        i11 = 2;
                                        i6 = 2;
                                        if (i6 != i11) {
                                        }
                                        this.zzj = i7;
                                        i10 = 16;
                                        this.zza = 16;
                                    }
                                    if (i10 != 0) {
                                        return i10;
                                    }
                                    if (zzx(this.zzd[this.zze])) {
                                        throw zzp("Expected value");
                                    }
                                    zzt();
                                    this.zza = 10;
                                    return 10;
                                }
                                i10 = 0;
                                if (i10 != 0) {
                                    return i10;
                                }
                                if (zzx(this.zzd[this.zze])) {
                                    throw zzp("Expected value");
                                }
                                zzt();
                                this.zza = 10;
                                return 10;
                            }
                        }
                        i14 = 1;
                    } else if (i13 == 1) {
                        i14 = 4;
                    }
                }
            }
            if (i13 == 1) {
            }
            zzt();
            this.zze--;
            this.zza = 7;
            return 7;
        }
        i14 = 9;
        this.zza = i14;
        return i14;
    }

    public final zzcp zzb() {
        return this.zzc;
    }

    final String zzc() {
        int i = this.zzg + 1;
        int i2 = this.zze - this.zzh;
        StringBuilder sb = new StringBuilder("$");
        for (int i3 = 0; i3 < this.zzl; i3++) {
            int i4 = this.zzk[i3];
            switch (i4) {
                case 1:
                case 2:
                    int i5 = this.zzn[i3];
                    sb.append('[');
                    sb.append(i5);
                    sb.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sb.append('.');
                    String str = this.zzm[i3];
                    if (str != null) {
                        sb.append(str);
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    throw new AssertionError("Unknown scope value: " + i4);
            }
        }
        return " at line " + i + " column " + (i2 + 1) + " path " + sb.toString();
    }

    public final String zzd() throws IOException {
        String strZzr;
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        if (iZza == 14) {
            strZzr = zzs();
        } else if (iZza == 12) {
            strZzr = zzr('\'');
        } else {
            if (iZza != 13) {
                throw zzq("a name");
            }
            strZzr = zzr('\"');
        }
        this.zza = 0;
        this.zzm[this.zzl - 1] = strZzr;
        return strZzr;
    }

    public final String zze() throws IOException {
        String string;
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        if (iZza == 10) {
            string = zzs();
        } else if (iZza == 8) {
            string = zzr('\'');
        } else if (iZza == 9) {
            string = zzr('\"');
        } else if (iZza == 11) {
            string = null;
        } else if (iZza == 15) {
            string = Long.toString(this.zzi);
        } else {
            if (iZza != 16) {
                throw zzq("a string");
            }
            String str = new String(this.zzd, this.zze, this.zzj);
            this.zze += this.zzj;
            string = str;
        }
        this.zza = 0;
        int[] iArr = this.zzn;
        int i = this.zzl - 1;
        iArr[i] = iArr[i] + 1;
        return string;
    }

    public final void zzf() throws IOException {
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        if (iZza != 3) {
            throw zzq("BEGIN_ARRAY");
        }
        zzu(1);
        this.zzn[this.zzl - 1] = 0;
        this.zza = 0;
    }

    public final void zzg() throws IOException {
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        if (iZza != 1) {
            throw zzq("BEGIN_OBJECT");
        }
        zzu(3);
        this.zza = 0;
    }

    public final void zzh() throws IOException {
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        if (iZza != 4) {
            throw zzq("END_ARRAY");
        }
        int i = this.zzl;
        this.zzl = i - 1;
        int[] iArr = this.zzn;
        int i2 = i - 2;
        iArr[i2] = iArr[i2] + 1;
        this.zza = 0;
    }

    public final void zzi() throws IOException {
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        if (iZza != 2) {
            throw zzq("END_OBJECT");
        }
        int i = this.zzl;
        int i2 = i - 1;
        this.zzl = i2;
        this.zzm[i2] = null;
        int[] iArr = this.zzn;
        int i3 = i - 2;
        iArr[i3] = iArr[i3] + 1;
        this.zza = 0;
    }

    public final void zzj() throws IOException {
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        if (iZza != 7) {
            throw zzq("null");
        }
        this.zza = 0;
        int[] iArr = this.zzn;
        int i = this.zzl - 1;
        iArr[i] = iArr[i] + 1;
    }

    public final void zzk(zzcp zzcpVar) {
        Objects.requireNonNull(zzcpVar);
        this.zzc = zzcpVar;
    }

    public final boolean zzl() throws IOException {
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        return (iZza == 2 || iZza == 4 || iZza == 17) ? false : true;
    }

    public final boolean zzm() throws IOException {
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        if (iZza == 5) {
            this.zza = 0;
            int[] iArr = this.zzn;
            int i = this.zzl - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iZza != 6) {
            throw zzq("a boolean");
        }
        this.zza = 0;
        int[] iArr2 = this.zzn;
        int i2 = this.zzl - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return false;
    }

    public final int zzn() throws IOException {
        int iZza = this.zza;
        if (iZza == 0) {
            iZza = zza();
        }
        switch (iZza) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            default:
                return 10;
        }
    }
}
