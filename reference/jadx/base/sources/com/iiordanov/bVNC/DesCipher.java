package com.iiordanov.bVNC;

import android.R;
import androidx.core.view.InputDeviceCompat;
import com.google.common.base.Ascii;
import kotlin.io.encoding.Base64;
import net.sqlcipher.database.SQLiteDatabase;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes2.dex */
public class DesCipher {
    private static byte[] bytebit = {1, 2, 4, 8, 16, 32, 64, -128};
    private static int[] bigbyte = {8388608, 4194304, 2097152, 1048576, 524288, 262144, 131072, 65536, 32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1};
    private static byte[] pc1 = {56, TarConstants.LF_NORMAL, 40, 32, Ascii.CAN, 16, 8, 0, 57, TarConstants.LF_LINK, 41, 33, Ascii.EM, 17, 9, 1, 58, TarConstants.LF_SYMLINK, 42, 34, Ascii.SUB, Ascii.DC2, 10, 2, 59, TarConstants.LF_CHR, 43, 35, 62, TarConstants.LF_FIFO, 46, 38, Ascii.RS, Ascii.SYN, Ascii.SO, 6, Base64.padSymbol, TarConstants.LF_DIR, 45, 37, Ascii.GS, Ascii.NAK, 13, 5, 60, TarConstants.LF_BLK, 44, 36, Ascii.FS, Ascii.DC4, 12, 4, Ascii.ESC, 19, 11, 3};
    private static int[] totrot = {1, 2, 4, 6, 8, 10, 12, 14, 15, 17, 19, 21, 23, 25, 27, 28};
    private static byte[] pc2 = {13, 16, 10, Ascii.ETB, 0, 4, 2, Ascii.ESC, Ascii.SO, 5, Ascii.DC4, 9, Ascii.SYN, Ascii.DC2, 11, 3, Ascii.EM, 7, Ascii.SI, 6, Ascii.SUB, 19, 12, 1, 40, TarConstants.LF_CHR, Ascii.RS, 36, 46, TarConstants.LF_FIFO, Ascii.GS, 39, TarConstants.LF_SYMLINK, 44, 32, 47, 43, TarConstants.LF_NORMAL, 38, TarConstants.LF_CONTIG, 33, TarConstants.LF_BLK, 45, 41, TarConstants.LF_LINK, 35, Ascii.FS, Ascii.US};
    private static int[] SP1 = {R.attr.transitionName, 0, 65536, R.attr.fillColor, R.attr.manageSpaceActivity, 66564, 4, 65536, 1024, R.attr.transitionName, R.attr.fillColor, 1024, 16778244, R.attr.manageSpaceActivity, 16777216, 4, 1028, 16778240, 16778240, 66560, 66560, R.attr.theme, R.attr.theme, 16778244, InputDeviceCompat.SOURCE_TRACKBALL, 16777220, 16777220, InputDeviceCompat.SOURCE_TRACKBALL, 0, 1028, 66564, 16777216, 65536, R.attr.fillColor, 4, R.attr.theme, R.attr.transitionName, 16777216, 16777216, 1024, R.attr.manageSpaceActivity, 65536, 66560, 16777220, 1024, 4, 16778244, 66564, R.attr.fillColor, InputDeviceCompat.SOURCE_TRACKBALL, R.attr.theme, 16778244, 16777220, 1028, 66564, R.attr.transitionName, 1028, 16778240, 16778240, 0, InputDeviceCompat.SOURCE_TRACKBALL, 66560, 0, R.attr.manageSpaceActivity};
    private static int[] SP2 = {-2146402272, -2147450880, 32768, 1081376, 1048576, 32, -2146435040, -2147450848, -2147483616, -2146402272, -2146402304, Integer.MIN_VALUE, -2147450880, 1048576, 32, -2146435040, 1081344, 1048608, -2147450848, 0, Integer.MIN_VALUE, 32768, 1081376, -2146435072, 1048608, -2147483616, 0, 1081344, 32800, -2146402304, -2146435072, 32800, 0, 1081376, -2146435040, 1048576, -2147450848, -2146435072, -2146402304, 32768, -2146435072, -2147450880, 32, -2146402272, 1081376, 32, 32768, Integer.MIN_VALUE, 32800, -2146402304, 1048576, -2147483616, 1048608, -2147450848, -2147483616, 1048608, 1081344, 0, -2147450880, 32800, Integer.MIN_VALUE, -2146435040, -2146402272, 1081344};
    private static int[] SP3 = {520, 134349312, 0, 134348808, 134218240, 0, 131592, 134218240, 131080, 134217736, 134217736, 131072, 134349320, 131080, 134348800, 520, 134217728, 8, 134349312, 512, 131584, 134348800, 134348808, 131592, 134218248, 131584, 131072, 134218248, 8, 134349320, 512, 134217728, 134349312, 134217728, 131080, 520, 131072, 134349312, 134218240, 0, 512, 131080, 134349320, 134218240, 134217736, 512, 0, 134348808, 134218248, 131072, 134217728, 134349320, 8, 131592, 131584, 134217736, 134348800, 134218248, 520, 134348800, 131592, 8, 134348808, 131584};
    private static int[] SP4 = {8396801, 8321, 8321, 128, 8396928, 8388737, 8388609, 8193, 0, 8396800, 8396800, 8396929, 129, 0, 8388736, 8388609, 1, 8192, 8388608, 8396801, 128, 8388608, 8193, 8320, 8388737, 1, 8320, 8388736, 8192, 8396928, 8396929, 129, 8388736, 8388609, 8396800, 8396929, 129, 0, 0, 8396800, 8320, 8388736, 8388737, 1, 8396801, 8321, 8321, 128, 8396929, 129, 1, 8192, 8388609, 8193, 8396928, 8388737, 8193, 8320, 8388608, 8396801, 128, 8388608, 8192, 8396928};
    private static int[] SP5 = {256, 34078976, 34078720, 1107296512, 524288, 256, 1073741824, 34078720, 1074266368, 524288, 33554688, 1074266368, 1107296512, 1107820544, 524544, 1073741824, 33554432, 1074266112, 1074266112, 0, 1073742080, 1107820800, 1107820800, 33554688, 1107820544, 1073742080, 0, 1107296256, 34078976, 33554432, 1107296256, 524544, 524288, 1107296512, 256, 33554432, 1073741824, 34078720, 1107296512, 1074266368, 33554688, 1073741824, 1107820544, 34078976, 1074266368, 256, 33554432, 1107820544, 1107820800, 524544, 1107296256, 1107820800, 34078720, 0, 1074266112, 1107296256, 524544, 33554688, 1073742080, 524288, 0, 1074266112, 34078976, 1073742080};
    private static int[] SP6 = {536870928, 541065216, 16384, 541081616, 541065216, 16, 541081616, 4194304, 536887296, 4210704, 4194304, 536870928, 4194320, 536887296, 536870912, 16400, 0, 4194320, 536887312, 16384, 4210688, 536887312, 16, 541065232, 541065232, 0, 4210704, 541081600, 16400, 4210688, 541081600, 536870912, 536887296, 16, 541065232, 4210688, 541081616, 4194304, 16400, 536870928, 4194304, 536887296, 536870912, 16400, 536870928, 541081616, 4210688, 541065216, 4210704, 541081600, 0, 541065232, 16, 16384, 541065216, 4210704, 16384, 4194320, 536887312, 0, 541081600, 536870912, 4194320, 536887312};
    private static int[] SP7 = {2097152, 69206018, 67110914, 0, 2048, 67110914, 2099202, 69208064, 69208066, 2097152, 0, 67108866, 2, 67108864, 69206018, 2050, 67110912, 2099202, 2097154, 67110912, 67108866, 69206016, 69208064, 2097154, 69206016, 2048, 2050, 69208066, 2099200, 2, 67108864, 2099200, 67108864, 2099200, 2097152, 67110914, 67110914, 69206018, 69206018, 2, 2097154, 67108864, 67110912, 2097152, 69208064, 2050, 2099202, 69208064, 2050, 67108866, 69208066, 69206016, 2099200, 0, 2, 69208066, 0, 2099202, 69206016, 2048, 67108866, 67110912, 2048, 2097154};
    private static int[] SP8 = {268439616, 4096, 262144, 268701760, SQLiteDatabase.CREATE_IF_NECESSARY, 268439616, 64, SQLiteDatabase.CREATE_IF_NECESSARY, 262208, 268697600, 268701760, 266240, 268701696, 266304, 4096, 64, 268697600, 268435520, 268439552, 4160, 266240, 262208, 268697664, 268701696, 4160, 0, 0, 268697664, 268435520, 268439552, 266304, 262144, 266304, 262144, 268701696, 4096, 64, 268697664, 4096, 266304, 268439552, 64, 268435520, 268697600, 268697664, SQLiteDatabase.CREATE_IF_NECESSARY, 262144, 268439616, 0, 268701760, 262208, 268435520, 268697600, 268439552, 268439616, 0, 268701760, 266240, 266240, 4160, 4160, 262208, SQLiteDatabase.CREATE_IF_NECESSARY, 268701696};
    private int[] encryptKeys = new int[32];
    private int[] decryptKeys = new int[32];
    private int[] tempInts = new int[2];

    public DesCipher(byte[] bArr) {
        setKey(bArr);
    }

    public void setKey(byte[] bArr) {
        deskey(bArr, true, this.encryptKeys);
        deskey(bArr, false, this.decryptKeys);
    }

    private void deskey(byte[] bArr, boolean z, int[] iArr) {
        int i;
        int[] iArr2 = new int[56];
        int[] iArr3 = new int[56];
        int[] iArr4 = new int[32];
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (i2 >= 56) {
                break;
            }
            byte b = pc1[i2];
            if ((bArr[b >>> 3] & bytebit[b & 7]) == 0) {
                i3 = 0;
            }
            iArr2[i2] = i3;
            i2++;
        }
        for (int i4 = 0; i4 < 16; i4++) {
            int i5 = z ? i4 << 1 : (15 - i4) << 1;
            int i6 = i5 + 1;
            iArr4[i6] = 0;
            iArr4[i5] = 0;
            int i7 = 0;
            while (true) {
                if (i7 >= 28) {
                    break;
                }
                int i8 = totrot[i4] + i7;
                if (i8 < 28) {
                    iArr3[i7] = iArr2[i8];
                } else {
                    iArr3[i7] = iArr2[i8 - 28];
                }
                i7++;
            }
            for (i = 28; i < 56; i++) {
                int i9 = totrot[i4] + i;
                if (i9 < 56) {
                    iArr3[i] = iArr2[i9];
                } else {
                    iArr3[i] = iArr2[i9 - 28];
                }
            }
            for (int i10 = 0; i10 < 24; i10++) {
                byte[] bArr2 = pc2;
                if (iArr3[bArr2[i10]] != 0) {
                    iArr4[i5] = iArr4[i5] | bigbyte[i10];
                }
                if (iArr3[bArr2[i10 + 24]] != 0) {
                    iArr4[i6] = iArr4[i6] | bigbyte[i10];
                }
            }
        }
        cookey(iArr4, iArr);
    }

    private void cookey(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            int i4 = i + 1;
            int i5 = iArr[i];
            i += 2;
            int i6 = iArr[i4];
            int i7 = (i5 & 16515072) << 6;
            iArr2[i2] = i7;
            int i8 = i7 | ((i5 & 4032) << 10);
            iArr2[i2] = i8;
            int i9 = ((16515072 & i6) >>> 10) | i8;
            iArr2[i2] = i9;
            iArr2[i2] = i9 | ((i6 & 4032) >>> 6);
            int i10 = i2 + 1;
            int i11 = (i5 & 258048) << 12;
            iArr2[i10] = i11;
            int i12 = ((i5 & 63) << 16) | i11;
            iArr2[i10] = i12;
            int i13 = i12 | ((i6 & 258048) >>> 4);
            iArr2[i10] = i13;
            iArr2[i10] = i13 | (i6 & 63);
            i2 += 2;
        }
    }

    public void encrypt(byte[] bArr, int i, byte[] bArr2, int i2) {
        squashBytesToInts(bArr, i, this.tempInts, 0, 2);
        int[] iArr = this.tempInts;
        des(iArr, iArr, this.encryptKeys);
        spreadIntsToBytes(this.tempInts, 0, bArr2, i2, 2);
    }

    public void decrypt(byte[] bArr, int i, byte[] bArr2, int i2) {
        squashBytesToInts(bArr, i, this.tempInts, 0, 2);
        int[] iArr = this.tempInts;
        des(iArr, iArr, this.decryptKeys);
        spreadIntsToBytes(this.tempInts, 0, bArr2, i2, 2);
    }

    public void encryptText(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) (bArr[i] ^ bArr3[i]);
        }
        encrypt(bArr, 0, bArr2, 0);
        for (int i2 = 8; i2 < bArr.length; i2 += 8) {
            for (int i3 = 0; i3 < 8; i3++) {
                int i4 = i2 + i3;
                bArr[i4] = (byte) (bArr[i4] ^ bArr2[i4 - 8]);
            }
            encrypt(bArr, i2, bArr2, i2);
        }
    }

    public void decryptText(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i;
        int length = bArr.length - 8;
        while (true) {
            i = 0;
            if (length <= 0) {
                break;
            }
            decrypt(bArr, length, bArr2, length);
            while (i < 8) {
                int i2 = length + i;
                bArr2[i2] = (byte) (bArr2[i2] ^ bArr[i2 - 8]);
                i++;
            }
            length -= 8;
        }
        decrypt(bArr, 0, bArr2, 0);
        while (i < 8) {
            bArr2[i] = (byte) (bArr2[i] ^ bArr3[i]);
            i++;
        }
    }

    private void des(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = ((i >>> 4) ^ i2) & 252645135;
        int i4 = i2 ^ i3;
        int i5 = i ^ (i3 << 4);
        int i6 = ((i5 >>> 16) ^ i4) & 65535;
        int i7 = i4 ^ i6;
        int i8 = i5 ^ (i6 << 16);
        int i9 = ((i7 >>> 2) ^ i8) & 858993459;
        int i10 = i8 ^ i9;
        int i11 = i7 ^ (i9 << 2);
        int i12 = ((i11 >>> 8) ^ i10) & 16711935;
        int i13 = i10 ^ i12;
        int i14 = i11 ^ (i12 << 8);
        int i15 = ((i14 >>> 31) & 1) | (i14 << 1);
        int i16 = (i13 ^ i15) & (-1431655766);
        int i17 = i13 ^ i16;
        int i18 = i15 ^ i16;
        int i19 = ((i17 >>> 31) & 1) | (i17 << 1);
        int i20 = 0;
        for (int i21 = 0; i21 < 8; i21++) {
            int i22 = ((i18 << 28) | (i18 >>> 4)) ^ iArr3[i20];
            int[] iArr4 = SP7;
            int i23 = iArr4[i22 & 63];
            int[] iArr5 = SP5;
            int i24 = i23 | iArr5[(i22 >>> 8) & 63];
            int[] iArr6 = SP3;
            int i25 = i24 | iArr6[(i22 >>> 16) & 63];
            int[] iArr7 = SP1;
            int i26 = iArr7[(i22 >>> 24) & 63] | i25;
            int i27 = iArr3[i20 + 1] ^ i18;
            int[] iArr8 = SP8;
            int i28 = i26 | iArr8[i27 & 63];
            int[] iArr9 = SP6;
            int i29 = i28 | iArr9[(i27 >>> 8) & 63];
            int[] iArr10 = SP4;
            int i30 = i29 | iArr10[(i27 >>> 16) & 63];
            int[] iArr11 = SP2;
            i19 ^= i30 | iArr11[(i27 >>> 24) & 63];
            int i31 = i20 + 3;
            int i32 = ((i19 << 28) | (i19 >>> 4)) ^ iArr3[i20 + 2];
            int i33 = iArr7[(i32 >>> 24) & 63] | iArr4[i32 & 63] | iArr5[(i32 >>> 8) & 63] | iArr6[(i32 >>> 16) & 63];
            i20 += 4;
            int i34 = iArr3[i31] ^ i19;
            i18 ^= (((i33 | iArr8[i34 & 63]) | iArr9[(i34 >>> 8) & 63]) | iArr10[(i34 >>> 16) & 63]) | iArr11[(i34 >>> 24) & 63];
        }
        int i35 = (i18 >>> 1) | (i18 << 31);
        int i36 = (i19 ^ i35) & (-1431655766);
        int i37 = i19 ^ i36;
        int i38 = i35 ^ i36;
        int i39 = (i37 >>> 1) | (i37 << 31);
        int i40 = ((i39 >>> 8) ^ i38) & 16711935;
        int i41 = i38 ^ i40;
        int i42 = i39 ^ (i40 << 8);
        int i43 = ((i42 >>> 2) ^ i41) & 858993459;
        int i44 = i41 ^ i43;
        int i45 = i42 ^ (i43 << 2);
        int i46 = ((i44 >>> 16) ^ i45) & 65535;
        int i47 = i45 ^ i46;
        int i48 = i44 ^ (i46 << 16);
        int i49 = ((i48 >>> 4) ^ i47) & 252645135;
        iArr2[0] = i48 ^ (i49 << 4);
        iArr2[1] = i47 ^ i49;
    }

    public static void squashBytesToInts(byte[] bArr, int i, int[] iArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 4) + i;
            iArr[i2 + i4] = (bArr[i5 + 3] & 255) | ((bArr[i5] & 255) << 24) | ((bArr[i5 + 1] & 255) << 16) | ((bArr[i5 + 2] & 255) << 8);
        }
    }

    public static void spreadIntsToBytes(int[] iArr, int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 4) + i2;
            int i6 = iArr[i + i4];
            bArr[i5] = (byte) (i6 >>> 24);
            bArr[i5 + 1] = (byte) (i6 >>> 16);
            bArr[i5 + 2] = (byte) (i6 >>> 8);
            bArr[i5 + 3] = (byte) i6;
        }
    }
}
