package org.spongycastle.crypto.engines;

import com.google.common.base.Ascii;
import com.iiordanov.bVNC.Constants;
import com.undatech.opaque.input.RemoteKeyboard;
import java.lang.reflect.Array;
import kotlin.io.encoding.Base64;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.spongycastle.asn1.cmc.BodyPartID;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.signers.PSSSigner;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes3.dex */
public class RijndaelEngine implements BlockCipher {
    private static final int MAXKC = 64;
    private static final int MAXROUNDS = 14;
    private long A0;
    private long A1;
    private long A2;
    private long A3;
    private int BC;
    private long BC_MASK;
    private int ROUNDS;
    private int blockBits;
    private boolean forEncryption;
    private byte[] shifts0SC;
    private byte[] shifts1SC;
    private long[][] workingKey;
    private static final byte[] logtable = {0, 0, Ascii.EM, 1, TarConstants.LF_SYMLINK, 2, Ascii.SUB, -58, TarConstants.LF_GNUTYPE_LONGLINK, -57, Ascii.ESC, 104, TarConstants.LF_CHR, -18, -33, 3, 100, 4, -32, Ascii.SO, TarConstants.LF_BLK, -115, -127, -17, TarConstants.LF_GNUTYPE_LONGNAME, 113, 8, -56, -8, 105, Ascii.FS, -63, 125, -62, Ascii.GS, -75, -7, -71, 39, 106, TarConstants.LF_MULTIVOLUME, -28, -90, 114, -102, -55, 9, TarConstants.LF_PAX_EXTENDED_HEADER_LC, 101, 47, -118, 5, 33, Ascii.SI, -31, 36, Ascii.DC2, -16, -126, 69, TarConstants.LF_DIR, -109, -38, -114, -106, -113, -37, -67, TarConstants.LF_FIFO, -48, -50, -108, 19, 92, -46, -15, 64, 70, -125, 56, 102, -35, -3, TarConstants.LF_NORMAL, -65, 6, -117, 98, -77, 37, -30, -104, 34, -120, -111, 16, 126, 110, 72, -61, -93, -74, Ascii.RS, 66, 58, 107, 40, 84, -6, -123, Base64.padSymbol, -70, 43, 121, 10, Ascii.NAK, -101, -97, 94, -54, 78, -44, -84, -27, -13, 115, -89, 87, -81, TarConstants.LF_PAX_EXTENDED_HEADER_UC, -88, 80, -12, -22, -42, 116, 79, -82, -23, -43, -25, -26, -83, -24, 44, -41, 117, 122, -21, Ascii.SYN, 11, -11, 89, -53, 95, -80, -100, -87, 81, -96, 127, 12, -10, 111, Ascii.ETB, -60, 73, -20, -40, 67, Ascii.US, 45, -92, 118, 123, -73, -52, -69, 62, 90, -5, 96, -79, -122, 59, 82, -95, 108, -86, 85, 41, -99, -105, -78, -121, -112, 97, -66, -36, -4, PSSSigner.TRAILER_IMPLICIT, -107, -49, -51, TarConstants.LF_CONTIG, Utf8.REPLACEMENT_BYTE, 91, -47, TarConstants.LF_GNUTYPE_SPARSE, 57, -124, 60, 65, -94, 109, 71, Ascii.DC4, 42, -98, 93, 86, -14, -45, -85, 68, 17, -110, -39, 35, 32, 46, -119, -76, 124, -72, 38, 119, -103, -29, -91, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 74, -19, -34, -59, TarConstants.LF_LINK, -2, Ascii.CAN, 13, 99, -116, -128, -64, -9, 112, 7};
    private static final byte[] aLogtable = {0, 3, 5, Ascii.SI, 17, TarConstants.LF_CHR, 85, -1, Ascii.SUB, 46, 114, -106, -95, -8, 19, TarConstants.LF_DIR, 95, -31, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, Ascii.RS, 34, 102, -86, -27, TarConstants.LF_BLK, 92, -28, TarConstants.LF_CONTIG, 89, -21, 38, 106, -66, -39, 112, -112, -85, -26, TarConstants.LF_LINK, TarConstants.LF_GNUTYPE_SPARSE, -11, 4, 12, Ascii.DC4, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, TarConstants.LF_GNUTYPE_LONGNAME, -44, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, -87, -32, 59, TarConstants.LF_MULTIVOLUME, -41, 98, -90, -15, 8, Ascii.CAN, 40, TarConstants.LF_PAX_EXTENDED_HEADER_LC, -120, -125, -98, -71, -48, 107, -67, -36, 127, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, TarConstants.LF_NORMAL, 80, -16, 11, Ascii.GS, 39, 105, -69, -42, 97, -93, -2, Ascii.EM, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, -96, -5, Ascii.SYN, 58, 78, -46, 109, -73, -62, 93, -25, TarConstants.LF_SYMLINK, 86, -6, Ascii.NAK, Utf8.REPLACEMENT_BYTE, 65, -61, 94, -30, Base64.padSymbol, 71, -55, 64, -64, 91, -19, 44, 116, -100, -65, -38, 117, -97, -70, -43, 100, -84, -17, 42, 126, -126, -99, PSSSigner.TRAILER_IMPLICIT, -33, 122, -114, -119, -128, -101, -74, -63, TarConstants.LF_PAX_EXTENDED_HEADER_UC, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, Ascii.US, 33, 99, -91, -12, 7, 9, Ascii.ESC, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, Ascii.SO, Ascii.DC2, TarConstants.LF_FIFO, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, Ascii.ETB, 57, TarConstants.LF_GNUTYPE_LONGLINK, -35, 124, -124, -105, -94, -3, Ascii.FS, 36, 108, -76, -57, 82, -10, 1, 3, 5, Ascii.SI, 17, TarConstants.LF_CHR, 85, -1, Ascii.SUB, 46, 114, -106, -95, -8, 19, TarConstants.LF_DIR, 95, -31, 56, 72, -40, 115, -107, -92, -9, 2, 6, 10, Ascii.RS, 34, 102, -86, -27, TarConstants.LF_BLK, 92, -28, TarConstants.LF_CONTIG, 89, -21, 38, 106, -66, -39, 112, -112, -85, -26, TarConstants.LF_LINK, TarConstants.LF_GNUTYPE_SPARSE, -11, 4, 12, Ascii.DC4, 60, 68, -52, 79, -47, 104, -72, -45, 110, -78, -51, TarConstants.LF_GNUTYPE_LONGNAME, -44, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, -87, -32, 59, TarConstants.LF_MULTIVOLUME, -41, 98, -90, -15, 8, Ascii.CAN, 40, TarConstants.LF_PAX_EXTENDED_HEADER_LC, -120, -125, -98, -71, -48, 107, -67, -36, 127, -127, -104, -77, -50, 73, -37, 118, -102, -75, -60, 87, -7, 16, TarConstants.LF_NORMAL, 80, -16, 11, Ascii.GS, 39, 105, -69, -42, 97, -93, -2, Ascii.EM, 43, 125, -121, -110, -83, -20, 47, 113, -109, -82, -23, 32, 96, -96, -5, Ascii.SYN, 58, 78, -46, 109, -73, -62, 93, -25, TarConstants.LF_SYMLINK, 86, -6, Ascii.NAK, Utf8.REPLACEMENT_BYTE, 65, -61, 94, -30, Base64.padSymbol, 71, -55, 64, -64, 91, -19, 44, 116, -100, -65, -38, 117, -97, -70, -43, 100, -84, -17, 42, 126, -126, -99, PSSSigner.TRAILER_IMPLICIT, -33, 122, -114, -119, -128, -101, -74, -63, TarConstants.LF_PAX_EXTENDED_HEADER_UC, -24, 35, 101, -81, -22, 37, 111, -79, -56, 67, -59, 84, -4, Ascii.US, 33, 99, -91, -12, 7, 9, Ascii.ESC, 45, 119, -103, -80, -53, 70, -54, 69, -49, 74, -34, 121, -117, -122, -111, -88, -29, 62, 66, -58, 81, -13, Ascii.SO, Ascii.DC2, TarConstants.LF_FIFO, 90, -18, 41, 123, -115, -116, -113, -118, -123, -108, -89, -14, 13, Ascii.ETB, 57, TarConstants.LF_GNUTYPE_LONGLINK, -35, 124, -124, -105, -94, -3, Ascii.FS, 36, 108, -76, -57, 82, -10, 1};
    private static final byte[] S = {99, 124, 119, 123, -14, 107, 111, -59, TarConstants.LF_NORMAL, 1, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, TarConstants.LF_FIFO, Utf8.REPLACEMENT_BYTE, -9, -52, TarConstants.LF_BLK, -91, -27, -15, 113, -40, TarConstants.LF_LINK, Ascii.NAK, 4, -57, 35, -61, Ascii.CAN, -106, 5, -102, 7, Ascii.DC2, -128, -30, -21, 39, -78, 117, 9, -125, 44, Ascii.SUB, Ascii.ESC, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, TarConstants.LF_GNUTYPE_SPARSE, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, TarConstants.LF_GNUTYPE_LONGNAME, TarConstants.LF_PAX_EXTENDED_HEADER_UC, -49, -48, -17, -86, -5, 67, TarConstants.LF_MULTIVOLUME, TarConstants.LF_CHR, -123, 69, -7, 2, 127, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, PSSSigner.TRAILER_IMPLICIT, -74, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, Ascii.ETB, -60, -89, 126, Base64.padSymbol, 100, 93, Ascii.EM, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, Ascii.DC4, -34, 94, 11, -37, -32, TarConstants.LF_SYMLINK, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, TarConstants.LF_CONTIG, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, TarConstants.LF_PAX_EXTENDED_HEADER_LC, 37, 46, Ascii.FS, -90, -76, -58, -24, -35, 116, Ascii.US, TarConstants.LF_GNUTYPE_LONGLINK, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, Ascii.SO, 97, TarConstants.LF_DIR, 87, -71, -122, -63, Ascii.GS, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, Ascii.RS, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, Ascii.SI, -80, 84, -69, Ascii.SYN};
    private static final byte[] Si = {82, 9, 106, -43, TarConstants.LF_NORMAL, TarConstants.LF_FIFO, -91, 56, -65, 64, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, TarConstants.LF_BLK, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, TarConstants.LF_SYMLINK, -90, -62, 35, Base64.padSymbol, -18, TarConstants.LF_GNUTYPE_LONGNAME, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, Ascii.SYN, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, Ascii.NAK, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, PSSSigner.TRAILER_IMPLICIT, -45, 10, -9, -28, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 5, -72, -77, 69, 6, -48, 44, Ascii.RS, -113, -54, Utf8.REPLACEMENT_BYTE, Ascii.SI, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, TarConstants.LF_DIR, -123, -30, -7, TarConstants.LF_CONTIG, -24, Ascii.FS, 117, -33, 110, 71, -15, Ascii.SUB, 113, Ascii.GS, 41, -59, -119, 111, -73, 98, Ascii.SO, -86, Ascii.CAN, -66, Ascii.ESC, -4, 86, 62, TarConstants.LF_GNUTYPE_LONGLINK, -58, -46, 121, 32, -102, -37, -64, -2, TarConstants.LF_PAX_EXTENDED_HEADER_LC, -51, 90, -12, Ascii.US, -35, -88, TarConstants.LF_CHR, -120, 7, -57, TarConstants.LF_LINK, -79, Ascii.DC2, 16, 89, 39, -128, -20, 95, 96, 81, 127, -87, Ascii.EM, -75, 74, 13, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, TarConstants.LF_MULTIVOLUME, -82, 42, -11, -80, -56, -21, -69, 60, -125, TarConstants.LF_GNUTYPE_SPARSE, -103, 97, Ascii.ETB, 43, 4, 126, -70, 119, -42, 38, -31, 105, Ascii.DC4, 99, 85, 33, 12, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384, 77, CipherSuite.TLS_DHE_RSA_WITH_SEED_CBC_SHA, 47, 94, 188, 99, 198, CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA, 53, 106, 212, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384, RemoteKeyboard.SCAN_LEFTSUPER, 250, 239, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA};
    static byte[][] shifts0 = {new byte[]{0, 8, 16, Ascii.CAN}, new byte[]{0, 8, 16, Ascii.CAN}, new byte[]{0, 8, 16, Ascii.CAN}, new byte[]{0, 8, 16, 32}, new byte[]{0, 8, Ascii.CAN, 32}};
    static byte[][] shifts1 = {new byte[]{0, Ascii.CAN, 16, 8}, new byte[]{0, 32, Ascii.CAN, 16}, new byte[]{0, 40, 32, Ascii.CAN}, new byte[]{0, TarConstants.LF_NORMAL, 40, Ascii.CAN}, new byte[]{0, 56, 40, 32}};

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
    }

    private byte mul0x2(int i) {
        if (i != 0) {
            return aLogtable[(logtable[i] & 255) + 25];
        }
        return (byte) 0;
    }

    private byte mul0x3(int i) {
        if (i != 0) {
            return aLogtable[(logtable[i] & 255) + 1];
        }
        return (byte) 0;
    }

    private byte mul0x9(int i) {
        if (i >= 0) {
            return aLogtable[i + Constants.COMMAND_LINUX_END];
        }
        return (byte) 0;
    }

    private byte mul0xb(int i) {
        if (i >= 0) {
            return aLogtable[i + 104];
        }
        return (byte) 0;
    }

    private byte mul0xd(int i) {
        if (i >= 0) {
            return aLogtable[i + 238];
        }
        return (byte) 0;
    }

    private byte mul0xe(int i) {
        if (i >= 0) {
            return aLogtable[i + 223];
        }
        return (byte) 0;
    }

    private void KeyAddition(long[] jArr) {
        this.A0 ^= jArr[0];
        this.A1 ^= jArr[1];
        this.A2 ^= jArr[2];
        this.A3 ^= jArr[3];
    }

    private long shift(long j, int i) {
        return ((j << (this.BC - i)) | (j >>> i)) & this.BC_MASK;
    }

    private void ShiftRow(byte[] bArr) {
        this.A1 = shift(this.A1, bArr[1]);
        this.A2 = shift(this.A2, bArr[2]);
        this.A3 = shift(this.A3, bArr[3]);
    }

    private long applyS(long j, byte[] bArr) {
        long j2 = 0;
        for (int i = 0; i < this.BC; i += 8) {
            j2 |= ((long) (bArr[(int) ((j >> i) & 255)] & 255)) << i;
        }
        return j2;
    }

    private void Substitution(byte[] bArr) {
        this.A0 = applyS(this.A0, bArr);
        this.A1 = applyS(this.A1, bArr);
        this.A2 = applyS(this.A2, bArr);
        this.A3 = applyS(this.A3, bArr);
    }

    private void MixColumn() {
        long jMul0x2 = 0;
        long jMul0x3 = 0;
        long jMul0x4 = 0;
        long jMul0x5 = 0;
        for (int i = 0; i < this.BC; i += 8) {
            int i2 = (int) ((this.A0 >> i) & 255);
            int i3 = (int) ((this.A1 >> i) & 255);
            int i4 = (int) ((this.A2 >> i) & 255);
            long j = jMul0x4;
            int i5 = (int) ((this.A3 >> i) & 255);
            jMul0x2 |= ((long) ((((mul0x2(i2) ^ mul0x3(i3)) ^ i4) ^ i5) & 255)) << i;
            jMul0x5 |= ((long) ((((mul0x2(i3) ^ mul0x3(i4)) ^ i5) ^ i2) & 255)) << i;
            jMul0x3 |= ((long) ((((mul0x2(i4) ^ mul0x3(i5)) ^ i2) ^ i3) & 255)) << i;
            jMul0x4 = (((long) ((((mul0x2(i5) ^ mul0x3(i2)) ^ i3) ^ i4) & 255)) << i) | j;
        }
        this.A0 = jMul0x2;
        this.A1 = jMul0x5;
        this.A2 = jMul0x3;
        this.A3 = jMul0x4;
    }

    private void InvMixColumn() {
        long jMul0xe = 0;
        long jMul0xe2 = 0;
        long jMul0xe3 = 0;
        long jMul0xe4 = 0;
        for (int i = 0; i < this.BC; i += 8) {
            int i2 = (int) ((this.A0 >> i) & 255);
            int i3 = (int) ((this.A1 >> i) & 255);
            int i4 = (int) ((this.A2 >> i) & 255);
            long j = jMul0xe3;
            int i5 = (int) ((this.A3 >> i) & 255);
            int i6 = -1;
            int i7 = i2 != 0 ? logtable[i2 & 255] & 255 : -1;
            int i8 = i3 != 0 ? logtable[i3 & 255] & 255 : -1;
            int i9 = i4 != 0 ? logtable[i4 & 255] & 255 : -1;
            if (i5 != 0) {
                i6 = logtable[i5 & 255] & 255;
            }
            jMul0xe |= ((long) ((((mul0xe(i7) ^ mul0xb(i8)) ^ mul0xd(i9)) ^ mul0x9(i6)) & 255)) << i;
            jMul0xe4 |= ((long) ((((mul0xe(i8) ^ mul0xb(i9)) ^ mul0xd(i6)) ^ mul0x9(i7)) & 255)) << i;
            jMul0xe2 |= ((long) ((((mul0xe(i9) ^ mul0xb(i6)) ^ mul0xd(i7)) ^ mul0x9(i8)) & 255)) << i;
            jMul0xe3 = (((long) ((((mul0xe(i6) ^ mul0xb(i7)) ^ mul0xd(i8)) ^ mul0x9(i9)) & 255)) << i) | j;
        }
        this.A0 = jMul0xe;
        this.A1 = jMul0xe4;
        this.A2 = jMul0xe2;
        this.A3 = jMul0xe3;
    }

    private long[][] generateWorkingKey(byte[] bArr) {
        int i;
        int i2 = 8;
        int length = bArr.length * 8;
        int i3 = 1;
        int i4 = 0;
        int i5 = 4;
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 4, 64);
        long[][] jArr = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 15, 4);
        if (length == 128) {
            i = 4;
        } else if (length == 160) {
            i = 5;
        } else if (length == 192) {
            i = 6;
        } else if (length == 224) {
            i = 7;
        } else {
            if (length != 256) {
                throw new IllegalArgumentException("Key length not 128/160/192/224/256 bits.");
            }
            i = 8;
        }
        if (length >= this.blockBits) {
            this.ROUNDS = i + 6;
        } else {
            this.ROUNDS = (this.BC / 8) + 6;
        }
        int i6 = 0;
        int i7 = 0;
        while (i6 < bArr.length) {
            bArr2[i6 % 4][i6 / 4] = bArr[i7];
            i6++;
            i7++;
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < i && i9 < (this.ROUNDS + 1) * (this.BC / 8)) {
            int i10 = i4;
            while (i10 < i5) {
                int i11 = this.BC;
                long[] jArr2 = jArr[i9 / (i11 / 8)];
                jArr2[i10] = (((long) (bArr2[i10][i8] & 255)) << ((i9 * 8) % i11)) | jArr2[i10];
                i10++;
                i5 = 4;
            }
            i8++;
            i9++;
            i4 = 0;
            i5 = 4;
        }
        int i12 = 0;
        while (i9 < (this.ROUNDS + i3) * (this.BC / i2)) {
            int i13 = 0;
            while (i13 < 4) {
                byte[] bArr3 = bArr2[i13];
                i13++;
                bArr3[0] = (byte) (S[bArr2[i13 % 4][i - 1] & 255] ^ bArr3[0]);
            }
            byte[] bArr4 = bArr2[0];
            int i14 = i12 + 1;
            bArr4[0] = (byte) (rcon[i12] ^ bArr4[0]);
            if (i <= 6) {
                for (int i15 = i3; i15 < i; i15++) {
                    for (int i16 = 0; i16 < 4; i16++) {
                        byte[] bArr5 = bArr2[i16];
                        bArr5[i15] = (byte) (bArr5[i15] ^ bArr5[i15 - 1]);
                    }
                }
            } else {
                int i17 = i3;
                while (true) {
                    if (i17 >= 4) {
                        break;
                    }
                    int i18 = 0;
                    for (int i19 = 4; i18 < i19; i19 = 4) {
                        byte[] bArr6 = bArr2[i18];
                        bArr6[i17] = (byte) (bArr6[i17] ^ bArr6[i17 - 1]);
                        i18++;
                    }
                    i17++;
                }
                int i20 = 4;
                for (int i21 = 0; i21 < 4; i21++) {
                    byte[] bArr7 = bArr2[i21];
                    bArr7[4] = (byte) (bArr7[4] ^ S[bArr7[3] & 255]);
                }
                int i22 = 5;
                while (i22 < i) {
                    int i23 = 0;
                    while (i23 < i20) {
                        byte[] bArr8 = bArr2[i23];
                        bArr8[i22] = (byte) (bArr8[i22] ^ bArr8[i22 - 1]);
                        i23++;
                        i20 = 4;
                    }
                    i22++;
                    i20 = 4;
                }
            }
            int i24 = 0;
            while (i24 < i && i9 < (this.ROUNDS + i3) * (this.BC / i2)) {
                for (int i25 = 0; i25 < 4; i25++) {
                    int i26 = this.BC;
                    long[] jArr3 = jArr[i9 / (i26 / 8)];
                    jArr3[i25] = (((long) (bArr2[i25][i24] & 255)) << ((i9 * 8) % i26)) | jArr3[i25];
                }
                i24++;
                i9++;
                i2 = 8;
                i3 = 1;
            }
            i12 = i14;
            i2 = 8;
            i3 = 1;
        }
        return jArr;
    }

    public RijndaelEngine() {
        this(128);
    }

    public RijndaelEngine(int i) {
        if (i == 128) {
            this.BC = 32;
            this.BC_MASK = BodyPartID.bodyIdMax;
            this.shifts0SC = shifts0[0];
            this.shifts1SC = shifts1[0];
        } else if (i == 160) {
            this.BC = 40;
            this.BC_MASK = 1099511627775L;
            this.shifts0SC = shifts0[1];
            this.shifts1SC = shifts1[1];
        } else if (i == 192) {
            this.BC = 48;
            this.BC_MASK = 281474976710655L;
            this.shifts0SC = shifts0[2];
            this.shifts1SC = shifts1[2];
        } else if (i == 224) {
            this.BC = 56;
            this.BC_MASK = 72057594037927935L;
            this.shifts0SC = shifts0[3];
            this.shifts1SC = shifts1[3];
        } else if (i == 256) {
            this.BC = 64;
            this.BC_MASK = -1L;
            this.shifts0SC = shifts0[4];
            this.shifts1SC = shifts1[4];
        } else {
            throw new IllegalArgumentException("unknown blocksize to Rijndael");
        }
        this.blockBits = i;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey());
            this.forEncryption = z;
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to Rijndael init - " + cipherParameters.getClass().getName());
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Rijndael";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.BC / 2;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.workingKey == null) {
            throw new IllegalStateException("Rijndael engine not initialised");
        }
        int i3 = this.BC;
        if ((i3 / 2) + i > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if ((i3 / 2) + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.forEncryption) {
            unpackBlock(bArr, i);
            encryptBlock(this.workingKey);
            packBlock(bArr2, i2);
        } else {
            unpackBlock(bArr, i);
            decryptBlock(this.workingKey);
            packBlock(bArr2, i2);
        }
        return this.BC / 2;
    }

    private void unpackBlock(byte[] bArr, int i) {
        this.A0 = bArr[i] & 255;
        this.A1 = bArr[i + 1] & 255;
        int i2 = i + 3;
        this.A2 = bArr[i + 2] & 255;
        int i3 = i + 4;
        this.A3 = bArr[i2] & 255;
        for (int i4 = 8; i4 != this.BC; i4 += 8) {
            this.A0 |= ((long) (bArr[i3] & 255)) << i4;
            this.A1 |= ((long) (bArr[i3 + 1] & 255)) << i4;
            int i5 = i3 + 3;
            this.A2 |= ((long) (bArr[i3 + 2] & 255)) << i4;
            i3 += 4;
            this.A3 |= ((long) (bArr[i5] & 255)) << i4;
        }
    }

    private void packBlock(byte[] bArr, int i) {
        for (int i2 = 0; i2 != this.BC; i2 += 8) {
            bArr[i] = (byte) (this.A0 >> i2);
            bArr[i + 1] = (byte) (this.A1 >> i2);
            int i3 = i + 3;
            bArr[i + 2] = (byte) (this.A2 >> i2);
            i += 4;
            bArr[i3] = (byte) (this.A3 >> i2);
        }
    }

    private void encryptBlock(long[][] jArr) {
        KeyAddition(jArr[0]);
        for (int i = 1; i < this.ROUNDS; i++) {
            Substitution(S);
            ShiftRow(this.shifts0SC);
            MixColumn();
            KeyAddition(jArr[i]);
        }
        Substitution(S);
        ShiftRow(this.shifts0SC);
        KeyAddition(jArr[this.ROUNDS]);
    }

    private void decryptBlock(long[][] jArr) {
        KeyAddition(jArr[this.ROUNDS]);
        Substitution(Si);
        ShiftRow(this.shifts1SC);
        for (int i = this.ROUNDS - 1; i > 0; i--) {
            KeyAddition(jArr[i]);
            InvMixColumn();
            Substitution(Si);
            ShiftRow(this.shifts1SC);
        }
        KeyAddition(jArr[0]);
    }
}
