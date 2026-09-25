package com.trilead.ssh2.crypto;

import java.io.CharArrayWriter;
import java.io.IOException;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public class Base64 {
    static final char[] alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    public static char[] encode(byte[] bArr) {
        int i;
        CharArrayWriter charArrayWriter = new CharArrayWriter((bArr.length * 4) / 3);
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < bArr.length; i4++) {
            if (i2 == 0) {
                i3 = (bArr[i4] & 255) << 16;
            } else {
                if (i2 == 1) {
                    i = (bArr[i4] & 255) << 8;
                } else {
                    i = bArr[i4] & 255;
                }
                i3 |= i;
            }
            i2++;
            if (i2 == 3) {
                char[] cArr = alphabet;
                charArrayWriter.write(cArr[i3 >> 18]);
                charArrayWriter.write(cArr[(i3 >> 12) & 63]);
                charArrayWriter.write(cArr[(i3 >> 6) & 63]);
                charArrayWriter.write(cArr[i3 & 63]);
                i2 = 0;
            }
        }
        if (i2 == 1) {
            char[] cArr2 = alphabet;
            charArrayWriter.write(cArr2[i3 >> 18]);
            charArrayWriter.write(cArr2[(i3 >> 12) & 63]);
            charArrayWriter.write(61);
            charArrayWriter.write(61);
        }
        if (i2 == 2) {
            char[] cArr3 = alphabet;
            charArrayWriter.write(cArr3[i3 >> 18]);
            charArrayWriter.write(cArr3[(i3 >> 12) & 63]);
            charArrayWriter.write(cArr3[(i3 >> 6) & 63]);
            charArrayWriter.write(61);
        }
        return charArrayWriter.toCharArray();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x007c  */
    /* JADX WARN: Code duplicated, block: B:46:0x0081  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ee A[EDGE_INSN: B:62:0x00ee->B:58:0x00ee BREAK  A[LOOP:0: B:3:0x000a->B:57:0x00ea], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x009a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x00ea A[SYNTHETIC] */
    public static byte[] decode(char[] cArr) throws IOException {
        int i;
        int i2;
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[cArr.length];
        int i3 = 0;
        int i4 = 0;
        for (char c : cArr) {
            if (c != '\n' && c != '\r' && c != ' ' && c != '\t') {
                if (c >= 'A' && c <= 'Z') {
                    i2 = i3 + 1;
                    bArr[i3] = (byte) (c - 'A');
                } else if (c < 'a' || c > 'z') {
                    if (c < '0' || c > '9') {
                        if (c == '+') {
                            i = i3 + 1;
                            bArr[i3] = 62;
                        } else if (c == '/') {
                            i = i3 + 1;
                            bArr[i3] = Utf8.REPLACEMENT_BYTE;
                        } else if (c == '=') {
                            i = i3 + 1;
                            bArr[i3] = 64;
                        } else {
                            throw new IOException("Illegal char in base64 code.");
                        }
                        i3 = i;
                    } else {
                        i2 = i3 + 1;
                        bArr[i3] = (byte) (c + 4);
                    }
                    if (i3 != 4) {
                        b = bArr[0];
                        if (b != 64) {
                            break;
                        }
                        b2 = bArr[1];
                        if (b2 != 64) {
                            throw new IOException("Unexpected '=' in base64 code.");
                        }
                        b3 = bArr[2];
                        if (b3 == 64) {
                            bArr2[i4] = (byte) ((((b & Utf8.REPLACEMENT_BYTE) << 6) | (b2 & Utf8.REPLACEMENT_BYTE)) >> 4);
                            i4++;
                            break;
                        }
                        b4 = bArr[3];
                        if (b4 == 64) {
                            int i5 = ((b & Utf8.REPLACEMENT_BYTE) << 12) | ((b2 & Utf8.REPLACEMENT_BYTE) << 6) | (b3 & Utf8.REPLACEMENT_BYTE);
                            int i6 = i4 + 1;
                            bArr2[i4] = (byte) (i5 >> 10);
                            i4 += 2;
                            bArr2[i6] = (byte) (i5 >> 2);
                            break;
                        }
                        int i7 = ((b & Utf8.REPLACEMENT_BYTE) << 18) | ((b2 & Utf8.REPLACEMENT_BYTE) << 12) | ((b3 & Utf8.REPLACEMENT_BYTE) << 6) | (b4 & Utf8.REPLACEMENT_BYTE);
                        bArr2[i4] = (byte) (i7 >> 16);
                        int i8 = i4 + 2;
                        bArr2[i4 + 1] = (byte) (i7 >> 8);
                        i4 += 3;
                        bArr2[i8] = (byte) i7;
                        i3 = 0;
                    } else {
                        continue;
                    }
                } else {
                    i2 = i3 + 1;
                    bArr[i3] = (byte) (c - 'G');
                }
                i3 = i2;
                if (i3 != 4) {
                    b = bArr[0];
                    if (b != 64) {
                        break;
                        break;
                    }
                    b2 = bArr[1];
                    if (b2 != 64) {
                        throw new IOException("Unexpected '=' in base64 code.");
                    }
                    b3 = bArr[2];
                    if (b3 == 64) {
                        bArr2[i4] = (byte) ((((b & Utf8.REPLACEMENT_BYTE) << 6) | (b2 & Utf8.REPLACEMENT_BYTE)) >> 4);
                        i4++;
                        break;
                    }
                    b4 = bArr[3];
                    if (b4 == 64) {
                        int i9 = ((b & Utf8.REPLACEMENT_BYTE) << 12) | ((b2 & Utf8.REPLACEMENT_BYTE) << 6) | (b3 & Utf8.REPLACEMENT_BYTE);
                        int i10 = i4 + 1;
                        bArr2[i4] = (byte) (i9 >> 10);
                        i4 += 2;
                        bArr2[i10] = (byte) (i9 >> 2);
                        break;
                    }
                    int i11 = ((b & Utf8.REPLACEMENT_BYTE) << 18) | ((b2 & Utf8.REPLACEMENT_BYTE) << 12) | ((b3 & Utf8.REPLACEMENT_BYTE) << 6) | (b4 & Utf8.REPLACEMENT_BYTE);
                    bArr2[i4] = (byte) (i11 >> 16);
                    int i12 = i4 + 2;
                    bArr2[i4 + 1] = (byte) (i11 >> 8);
                    i4 += 3;
                    bArr2[i12] = (byte) i11;
                    i3 = 0;
                } else {
                    continue;
                }
            }
        }
        byte[] bArr3 = new byte[i4];
        System.arraycopy(bArr2, 0, bArr3, 0, i4);
        return bArr3;
    }
}
