package com.iiordanov.jcraft.jzlib;

import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentTransaction;
import com.iiordanov.bVNC.Constants;
import com.undatech.opaque.input.RemoteKeyboard;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.spongycastle.bcpg.SecretKeyPacket;
import org.spongycastle.crypto.tls.CipherSuite;
import org.spongycastle.math.Primes;

/* JADX INFO: loaded from: classes2.dex */
final class InfTree {
    static final int BMAX = 15;
    private static final int MANY = 1440;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_ERRNO = -1;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    private static final int Z_OK = 0;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    private static final int Z_VERSION_ERROR = -6;
    static final int fixed_bd = 5;
    static final int fixed_bl = 9;
    static final int[] fixed_tl = {96, 7, 256, 0, 8, 80, 0, 8, 16, 84, 8, 115, 82, 7, 31, 0, 8, 112, 0, 8, 48, 0, 9, 192, 80, 7, 10, 0, 8, 96, 0, 8, 32, 0, 9, CipherSuite.TLS_DH_RSA_WITH_AES_128_GCM_SHA256, 0, 8, 0, 0, 8, 128, 0, 8, 64, 0, 9, 224, 80, 7, 6, 0, 8, 88, 0, 8, 24, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA, 83, 7, 59, 0, 8, 120, 0, 8, 56, 0, 9, 208, 81, 7, 17, 0, 8, 104, 0, 8, 40, 0, 9, CipherSuite.TLS_PSK_WITH_NULL_SHA256, 0, 8, 8, 0, 8, CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 72, 0, 9, 240, 80, 7, 4, 0, 8, 84, 0, 8, 20, 85, 8, 227, 83, 7, 43, 0, 8, 116, 0, 8, 52, 0, 9, 200, 81, 7, 13, 0, 8, 100, 0, 8, 36, 0, 9, CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256, 0, 8, 4, 0, 8, CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 68, 0, 9, 232, 80, 7, 8, 0, 8, 92, 0, 8, 28, 0, 9, CipherSuite.TLS_DH_RSA_WITH_SEED_CBC_SHA, 84, 7, 83, 0, 8, 124, 0, 8, 60, 0, 9, 216, 82, 7, 23, 0, 8, 108, 0, 8, 44, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA256, 0, 8, 12, 0, 8, CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA, 0, 8, 76, 0, 9, 248, 80, 7, 3, 0, 8, 82, 0, 8, 18, 85, 8, CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384, 83, 7, 35, 0, 8, 114, 0, 8, 50, 0, 9, CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256, 81, 7, 11, 0, 8, 98, 0, 8, 34, 0, 9, CipherSuite.TLS_DH_DSS_WITH_AES_128_GCM_SHA256, 0, 8, 2, 0, 8, 130, 0, 8, 66, 0, 9, 228, 80, 7, 7, 0, 8, 90, 0, 8, 26, 0, 9, 148, 84, 7, 67, 0, 8, 122, 0, 8, 58, 0, 9, 212, 82, 7, 19, 0, 8, 106, 0, 8, 42, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256, 0, 8, 10, 0, 8, CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 0, 8, 74, 0, 9, 244, 80, 7, 5, 0, 8, 86, 0, 8, 22, 192, 8, 0, 83, 7, 51, 0, 8, 118, 0, 8, 54, 0, 9, 204, 81, 7, 15, 0, 8, 102, 0, 8, 38, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_128_GCM_SHA256, 0, 8, 6, 0, 8, CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 70, 0, 9, 236, 80, 7, 9, 0, 8, 94, 0, 8, 30, 0, 9, 156, 84, 7, 99, 0, 8, 126, 0, 8, 62, 0, 9, 220, 82, 7, 27, 0, 8, 110, 0, 8, 46, 0, 9, 188, 0, 8, 14, 0, 8, CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA, 0, 8, 78, 0, 9, 252, 96, 7, 256, 0, 8, 81, 0, 8, 17, 85, 8, TarConstants.PREFIXLEN_XSTAR, 82, 7, 31, 0, 8, 113, 0, 8, 49, 0, 9, CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256, 80, 7, 10, 0, 8, 97, 0, 8, 33, 0, 9, CipherSuite.TLS_DHE_DSS_WITH_AES_128_GCM_SHA256, 0, 8, 1, 0, 8, 129, 0, 8, 65, 0, 9, 226, 80, 7, 6, 0, 8, 89, 0, 8, 25, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA, 83, 7, 59, 0, 8, 121, 0, 8, 57, 0, 9, 210, 81, 7, 17, 0, 8, 105, 0, 8, 41, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA256, 0, 8, 9, 0, 8, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 73, 0, 9, 242, 80, 7, 4, 0, 8, 85, 0, 8, 21, 80, 8, 258, 83, 7, 43, 0, 8, 117, 0, 8, 53, 0, 9, 202, 81, 7, 13, 0, 8, 101, 0, 8, 37, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256, 0, 8, 5, 0, 8, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 69, 0, 9, 234, 80, 7, 8, 0, 8, 93, 0, 8, 29, 0, 9, CipherSuite.TLS_DHE_RSA_WITH_SEED_CBC_SHA, 84, 7, 83, 0, 8, RemoteKeyboard.SCAN_LEFTSUPER, 0, 8, 61, 0, 9, 218, 82, 7, 23, 0, 8, 109, 0, 8, 45, 0, 9, CipherSuite.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 13, 0, 8, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA, 0, 8, 77, 0, 9, 250, 80, 7, 3, 0, 8, 83, 0, 8, 19, 85, 8, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256, 83, 7, 35, 0, 8, 115, 0, 8, 51, 0, 9, 198, 81, 7, 11, 0, 8, 99, 0, 8, 35, 0, 9, CipherSuite.TLS_DH_anon_WITH_AES_128_GCM_SHA256, 0, 8, 3, 0, 8, TarConstants.PREFIXLEN_XSTAR, 0, 8, 67, 0, 9, 230, 80, 7, 7, 0, 8, 91, 0, 8, 27, 0, 9, CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, 84, 7, 67, 0, 8, 123, 0, 8, 59, 0, 9, 214, 82, 7, 19, 0, 8, 107, 0, 8, 43, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA256, 0, 8, 11, 0, 8, CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 0, 8, 75, 0, 9, 246, 80, 7, 5, 0, 8, 87, 0, 8, 23, 192, 8, 0, 83, 7, 51, 0, 8, 119, 0, 8, 55, 0, 9, 206, 81, 7, 15, 0, 8, 103, 0, 8, 39, 0, 9, CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA256, 0, 8, 7, 0, 8, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 71, 0, 9, 238, 80, 7, 9, 0, 8, 95, 0, 8, 31, 0, 9, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, 84, 7, 99, 0, 8, 127, 0, 8, 63, 0, 9, 222, 82, 7, 27, 0, 8, RemoteKeyboard.SCAN_DELETE, 0, 8, 47, 0, 9, CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 15, 0, 8, CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, 0, 8, 79, 0, 9, SecretKeyPacket.USAGE_SHA1, 96, 7, 256, 0, 8, 80, 0, 8, 16, 84, 8, 115, 82, 7, 31, 0, 8, 112, 0, 8, 48, 0, 9, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, 80, 7, 10, 0, 8, 96, 0, 8, 32, 0, 9, CipherSuite.TLS_DH_RSA_WITH_AES_256_GCM_SHA384, 0, 8, 0, 0, 8, 128, 0, 8, 64, 0, 9, 225, 80, 7, 6, 0, 8, 88, 0, 8, 24, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 83, 7, 59, 0, 8, 120, 0, 8, 56, 0, 9, 209, 81, 7, 17, 0, 8, 104, 0, 8, 40, 0, 9, CipherSuite.TLS_PSK_WITH_NULL_SHA384, 0, 8, 8, 0, 8, CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 72, 0, 9, 241, 80, 7, 4, 0, 8, 84, 0, 8, 20, 85, 8, 227, 83, 7, 43, 0, 8, 116, 0, 8, 52, 0, 9, 201, 81, 7, 13, 0, 8, 100, 0, 8, 36, 0, 9, CipherSuite.TLS_PSK_WITH_AES_256_GCM_SHA384, 0, 8, 4, 0, 8, CipherSuite.TLS_RSA_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 68, 0, 9, 233, 80, 7, 8, 0, 8, 92, 0, 8, 28, 0, 9, CipherSuite.TLS_DHE_DSS_WITH_SEED_CBC_SHA, 84, 7, 83, 0, 8, 124, 0, 8, 60, 0, 9, 217, 82, 7, 23, 0, 8, 108, 0, 8, 44, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA384, 0, 8, 12, 0, 8, CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA, 0, 8, 76, 0, 9, 249, 80, 7, 3, 0, 8, 82, 0, 8, 18, 85, 8, CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384, 83, 7, 35, 0, 8, 114, 0, 8, 50, 0, 9, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256, 81, 7, 11, 0, 8, 98, 0, 8, 34, 0, 9, CipherSuite.TLS_DH_DSS_WITH_AES_256_GCM_SHA384, 0, 8, 2, 0, 
    8, 130, 0, 8, 66, 0, 9, 229, 80, 7, 7, 0, 8, 90, 0, 8, 26, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, 84, 7, 67, 0, 8, 122, 0, 8, 58, 0, 9, 213, 82, 7, 19, 0, 8, 106, 0, 8, 42, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA384, 0, 8, 10, 0, 8, CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 0, 8, 74, 0, 9, 245, 80, 7, 5, 0, 8, 86, 0, 8, 22, 192, 8, 0, 83, 7, 51, 0, 8, 118, 0, 8, 54, 0, 9, 205, 81, 7, 15, 0, 8, 102, 0, 8, 38, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384, 0, 8, 6, 0, 8, CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 70, 0, 9, 237, 80, 7, 9, 0, 8, 94, 0, 8, 30, 0, 9, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, 84, 7, 99, 0, 8, 126, 0, 8, 62, 0, 9, 221, 82, 7, 27, 0, 8, 110, 0, 8, 46, 0, 9, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 14, 0, 8, CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA, 0, 8, 78, 0, 9, 253, 96, 7, 256, 0, 8, 81, 0, 8, 17, 85, 8, TarConstants.PREFIXLEN_XSTAR, 82, 7, 31, 0, 8, 113, 0, 8, 49, 0, 9, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256, 80, 7, 10, 0, 8, 97, 0, 8, 33, 0, 9, CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384, 0, 8, 1, 0, 8, 129, 0, 8, 65, 0, 9, 227, 80, 7, 6, 0, 8, 89, 0, 8, 25, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 83, 7, 59, 0, 8, 121, 0, 8, 57, 0, 9, Primes.SMALL_FACTOR_LIMIT, 81, 7, 17, 0, 8, 105, 0, 8, 41, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384, 0, 8, 9, 0, 8, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 73, 0, 9, 243, 80, 7, 4, 0, 8, 85, 0, 8, 21, 80, 8, 258, 83, 7, 43, 0, 8, 117, 0, 8, 53, 0, 9, 203, 81, 7, 13, 0, 8, 101, 0, 8, 37, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384, 0, 8, 5, 0, 8, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 69, 0, 9, 235, 80, 7, 8, 0, 8, 93, 0, 8, 29, 0, 9, 155, 84, 7, 83, 0, 8, RemoteKeyboard.SCAN_LEFTSUPER, 0, 8, 61, 0, 9, 219, 82, 7, 23, 0, 8, 109, 0, 8, 45, 0, 9, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 13, 0, 8, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA, 0, 8, 77, 0, 9, 251, 80, 7, 3, 0, 8, 83, 0, 8, 19, 85, 8, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256, 83, 7, 35, 0, 8, 115, 0, 8, 51, 0, 9, Constants.COMMAND_LINUX_END, 81, 7, 11, 0, 8, 99, 0, 8, 35, 0, 9, CipherSuite.TLS_DH_anon_WITH_AES_256_GCM_SHA384, 0, 8, 3, 0, 8, TarConstants.PREFIXLEN_XSTAR, 0, 8, 67, 0, 9, 231, 80, 7, 7, 0, 8, 91, 0, 8, 27, 0, 9, CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA, 84, 7, 67, 0, 8, 123, 0, 8, 59, 0, 9, 215, 82, 7, 19, 0, 8, 107, 0, 8, 43, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA384, 0, 8, 11, 0, 8, CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 0, 8, 75, 0, 9, 247, 80, 7, 5, 0, 8, 87, 0, 8, 23, 192, 8, 0, 83, 7, 51, 0, 8, 119, 0, 8, 55, 0, 9, 207, 81, 7, 15, 0, 8, 103, 0, 8, 39, 0, 9, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA384, 0, 8, 7, 0, 8, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA, 0, 8, 71, 0, 9, 239, 80, 7, 9, 0, 8, 95, 0, 8, 31, 0, 9, CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384, 84, 7, 99, 0, 8, 127, 0, 8, 63, 0, 9, 223, 82, 7, 27, 0, 8, RemoteKeyboard.SCAN_DELETE, 0, 8, 47, 0, 9, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 15, 0, 8, CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, 0, 8, 79, 0, 9, 255};
    static final int[] fixed_td = {80, 5, 1, 87, 5, 257, 83, 5, 17, 91, 5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN, 81, 5, 5, 89, 5, InputDeviceCompat.SOURCE_GAMEPAD, 85, 5, 65, 93, 5, 16385, 80, 5, 3, 88, 5, InputDeviceCompat.SOURCE_DPAD, 84, 5, 33, 92, 5, 8193, 82, 5, 9, 90, 5, 2049, 86, 5, 129, 192, 5, 24577, 80, 5, 2, 87, 5, 385, 83, 5, 25, 91, 5, 6145, 81, 5, 7, 89, 5, 1537, 85, 5, 97, 93, 5, 24577, 80, 5, 4, 88, 5, 769, 84, 5, 49, 92, 5, 12289, 82, 5, 13, 90, 5, 3073, 86, 5, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, 192, 5, 24577};
    static final int[] cplens = {3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59, 67, 83, 99, 115, TarConstants.PREFIXLEN_XSTAR, CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256, 227, 258, 0, 0};
    static final int[] cplext = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0, 112, 112};
    static final int[] cpdist = {1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, 257, 385, InputDeviceCompat.SOURCE_DPAD, 769, InputDeviceCompat.SOURCE_GAMEPAD, 1537, 2049, 3073, FragmentTransaction.TRANSIT_FRAGMENT_OPEN, 6145, 8193, 12289, 16385, 24577};
    static final int[] cpdext = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13};
    int[] hn = null;
    int[] v = null;
    int[] c = null;
    int[] r = null;
    int[] u = null;
    int[] x = null;

    InfTree() {
    }

    private int huft_build(int[] iArr, int i, int i2, int i3, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int[] iArr8) {
        int[] iArr9;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        int i9 = i2;
        int i10 = 0;
        do {
            iArr9 = this.c;
            int i11 = iArr[i + i10];
            i4 = 1;
            iArr9[i11] = iArr9[i11] + 1;
            i10++;
            i5 = -1;
            i9--;
        } while (i9 != 0);
        if (iArr9[0] == i2) {
            iArr4[0] = -1;
            iArr5[0] = 0;
            return 0;
        }
        int i12 = iArr5[0];
        int i13 = 1;
        while (i13 <= 15 && this.c[i13] == 0) {
            i13++;
        }
        if (i12 < i13) {
            i12 = i13;
        }
        int i14 = 15;
        while (i14 != 0 && this.c[i14] == 0) {
            i14--;
        }
        int i15 = i12 > i14 ? i14 : i12;
        iArr5[0] = i15;
        int i16 = 1 << i13;
        int i17 = i13;
        while (i17 < i14) {
            int i18 = i16 - this.c[i17];
            if (i18 < 0) {
                return -3;
            }
            i17++;
            i16 = i18 << 1;
        }
        int[] iArr10 = this.c;
        int i19 = iArr10[i14];
        int i20 = i16 - i19;
        if (i20 < 0) {
            return -3;
        }
        iArr10[i14] = i19 + i20;
        this.x[1] = 0;
        int i21 = 0;
        int i22 = i14;
        int i23 = 1;
        int i24 = 2;
        while (true) {
            i22 += i5;
            if (i22 == 0) {
                break;
            }
            int[] iArr11 = this.x;
            i21 += this.c[i23];
            iArr11[i24] = i21;
            i24++;
            i23++;
            i5 = -1;
        }
        int i25 = 0;
        int i26 = 0;
        while (true) {
            int i27 = iArr[i + i25];
            if (i27 != 0) {
                int[] iArr12 = this.x;
                int i28 = iArr12[i27];
                iArr12[i27] = i28 + 1;
                iArr8[i28] = i26;
            }
            i25++;
            int i29 = i26 + 1;
            if (i29 >= i2) {
                break;
            }
            i26 = i29;
            i3 = i3;
        }
        int[] iArr13 = this.x;
        int i30 = iArr13[i14];
        iArr13[0] = 0;
        int i31 = -i15;
        this.u[0] = 0;
        int i32 = 0;
        int i33 = 0;
        int i34 = 0;
        int i35 = 0;
        int i36 = -1;
        while (i13 <= i14) {
            int i37 = this.c[i13];
            while (true) {
                int i38 = i37 - 1;
                if (i37 != 0) {
                    int i39 = i35;
                    while (true) {
                        int i40 = i31 + i15;
                        if (i13 > i40) {
                            int i41 = i36 + 1;
                            int i42 = i14 - i40;
                            if (i42 > i15) {
                                i42 = i15;
                            }
                            int i43 = i13 - i40;
                            int i44 = i14;
                            int i45 = 1 << i43;
                            if (i45 > i37) {
                                int i46 = i45 - i37;
                                if (i43 < i42) {
                                    int i47 = i13;
                                    while (true) {
                                        int i48 = i43 + 1;
                                        if (i48 >= i42) {
                                            i7 = i48;
                                            break;
                                        }
                                        int i49 = i46 << 1;
                                        i7 = i48;
                                        i47++;
                                        int i50 = this.c[i47];
                                        if (i49 <= i50) {
                                            break;
                                        }
                                        i46 = i49 - i50;
                                        i43 = i7;
                                    }
                                    i43 = i7;
                                }
                            }
                            i39 = 1 << i43;
                            i34 = iArr7[0];
                            int i51 = i37;
                            if (i34 + i39 > MANY) {
                                return -3;
                            }
                            int[] iArr14 = this.u;
                            iArr14[i41] = i34;
                            iArr7[0] = iArr7[0] + i39;
                            if (i41 != 0) {
                                this.x[i41] = i32;
                                int[] iArr15 = this.r;
                                iArr15[0] = (byte) i43;
                                iArr15[1] = (byte) i15;
                                int i52 = i32 >>> (i40 - i15);
                                iArr15[2] = (i34 - iArr14[i36]) - i52;
                                System.arraycopy(iArr15, 0, iArr6, (iArr14[i36] + i52) * 3, 3);
                            } else {
                                iArr4[0] = i34;
                            }
                            i37 = i51;
                            i36 = i41;
                            i31 = i40;
                            i14 = i44;
                        }
                    }
                    int i53 = i14;
                    int[] iArr16 = this.r;
                    int i54 = i13 - i31;
                    iArr16[1] = (byte) i54;
                    if (i33 >= i30) {
                        iArr16[0] = 192;
                        i6 = 1;
                    } else {
                        int i55 = iArr8[i33];
                        if (i55 < i3) {
                            iArr16[0] = (byte) (i55 < 256 ? 0 : 96);
                            iArr16[2] = iArr8[i33];
                            i33++;
                        } else {
                            iArr16[0] = (byte) (iArr3[i55 - i3] + 80);
                            iArr16[2] = iArr2[iArr8[i33] - i3];
                            i33++;
                        }
                        i6 = 1;
                    }
                    int i56 = i6 << i54;
                    int i57 = i32 >>> i31;
                    int i58 = i39;
                    while (i57 < i58) {
                        System.arraycopy(this.r, 0, iArr6, (i34 + i57) * 3, 3);
                        i57 += i56;
                        i30 = i30;
                        i32 = i32;
                    }
                    int i59 = i30;
                    int i60 = 1 << (i13 - 1);
                    int i61 = i32;
                    while ((i61 & i60) != 0) {
                        i61 ^= i60;
                        i60 >>>= 1;
                    }
                    int i62 = i60 ^ i61;
                    while ((((1 << i31) - 1) & i62) != this.x[i36]) {
                        i36--;
                        i31 -= i15;
                    }
                    i30 = i59;
                    i35 = i58;
                    i37 = i38;
                    i14 = i53;
                    i4 = 1;
                    i8 = 0;
                    i32 = i62;
                    i3 = i3;
                }
            }
            i13++;
            i3 = i3;
            i8 = i8;
            i32 = i32;
        }
        int i63 = i8;
        int i64 = i14;
        int i65 = i4;
        if (i20 == 0 || i64 == i65) {
            return i63;
        }
        return -5;
    }

    int inflate_trees_bits(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, ZStream zStream) {
        initWorkArea(19);
        int[] iArr5 = this.hn;
        iArr5[0] = 0;
        int iHuft_build = huft_build(iArr, 0, 19, 19, null, null, iArr3, iArr2, iArr4, iArr5, this.v);
        if (iHuft_build == -3) {
            zStream.msg = "oversubscribed dynamic bit lengths tree";
            return iHuft_build;
        }
        if (iHuft_build != -5 && iArr2[0] != 0) {
            return iHuft_build;
        }
        zStream.msg = "incomplete dynamic bit lengths tree";
        return -3;
    }

    int inflate_trees_dynamic(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, ZStream zStream) {
        initWorkArea(288);
        int[] iArr7 = this.hn;
        iArr7[0] = 0;
        int iHuft_build = huft_build(iArr, 0, i, 257, cplens, cplext, iArr4, iArr2, iArr6, iArr7, this.v);
        if (iHuft_build != 0 || iArr2[0] == 0) {
            if (iHuft_build == -3) {
                zStream.msg = "oversubscribed literal/length tree";
                return iHuft_build;
            }
            if (iHuft_build == -4) {
                return iHuft_build;
            }
            zStream.msg = "incomplete literal/length tree";
            return -3;
        }
        initWorkArea(288);
        int iHuft_build2 = huft_build(iArr, i, i2, 0, cpdist, cpdext, iArr5, iArr3, iArr6, this.hn, this.v);
        if (iHuft_build2 == 0 && (iArr3[0] != 0 || i <= 257)) {
            return 0;
        }
        if (iHuft_build2 == -3) {
            zStream.msg = "oversubscribed distance tree";
            return iHuft_build2;
        }
        if (iHuft_build2 == -5) {
            zStream.msg = "incomplete distance tree";
        } else {
            if (iHuft_build2 == -4) {
                return iHuft_build2;
            }
            zStream.msg = "empty distance tree with lengths";
        }
        return -3;
    }

    static int inflate_trees_fixed(int[] iArr, int[] iArr2, int[][] iArr3, int[][] iArr4, ZStream zStream) {
        iArr[0] = 9;
        iArr2[0] = 5;
        iArr3[0] = fixed_tl;
        iArr4[0] = fixed_td;
        return 0;
    }

    private void initWorkArea(int i) {
        if (this.hn == null) {
            this.hn = new int[1];
            this.v = new int[i];
            this.c = new int[16];
            this.r = new int[3];
            this.u = new int[15];
            this.x = new int[16];
        }
        if (this.v.length < i) {
            this.v = new int[i];
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.v[i2] = 0;
        }
        for (int i3 = 0; i3 < 16; i3++) {
            this.c[i3] = 0;
        }
        for (int i4 = 0; i4 < 3; i4++) {
            this.r[i4] = 0;
        }
        System.arraycopy(this.c, 0, this.u, 0, 15);
        System.arraycopy(this.c, 0, this.x, 0, 16);
    }
}
