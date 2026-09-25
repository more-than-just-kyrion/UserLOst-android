package org.apache.commons.compress.harmony.pack200;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes3.dex */
public class CodecEncoding {
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final BHSDCodec[] canonicalCodec;
    private static Map<BHSDCodec, Integer> canonicalCodecsToSpecifiers;

    static {
        int i = 0;
        BHSDCodec[] bHSDCodecArr = {null, new BHSDCodec(1, 256), new BHSDCodec(1, 256, 1), new BHSDCodec(1, 256, 0, 1), new BHSDCodec(1, 256, 1, 1), new BHSDCodec(2, 256), new BHSDCodec(2, 256, 1), new BHSDCodec(2, 256, 0, 1), new BHSDCodec(2, 256, 1, 1), new BHSDCodec(3, 256), new BHSDCodec(3, 256, 1), new BHSDCodec(3, 256, 0, 1), new BHSDCodec(3, 256, 1, 1), new BHSDCodec(4, 256), new BHSDCodec(4, 256, 1), new BHSDCodec(4, 256, 0, 1), new BHSDCodec(4, 256, 1, 1), new BHSDCodec(5, 4), new BHSDCodec(5, 4, 1), new BHSDCodec(5, 4, 2), new BHSDCodec(5, 16), new BHSDCodec(5, 16, 1), new BHSDCodec(5, 16, 2), new BHSDCodec(5, 32), new BHSDCodec(5, 32, 1), new BHSDCodec(5, 32, 2), new BHSDCodec(5, 64), new BHSDCodec(5, 64, 1), new BHSDCodec(5, 64, 2), new BHSDCodec(5, 128), new BHSDCodec(5, 128, 1), new BHSDCodec(5, 128, 2), new BHSDCodec(5, 4, 0, 1), new BHSDCodec(5, 4, 1, 1), new BHSDCodec(5, 4, 2, 1), new BHSDCodec(5, 16, 0, 1), new BHSDCodec(5, 16, 1, 1), new BHSDCodec(5, 16, 2, 1), new BHSDCodec(5, 32, 0, 1), new BHSDCodec(5, 32, 1, 1), new BHSDCodec(5, 32, 2, 1), new BHSDCodec(5, 64, 0, 1), new BHSDCodec(5, 64, 1, 1), new BHSDCodec(5, 64, 2, 1), new BHSDCodec(5, 128, 0, 1), new BHSDCodec(5, 128, 1, 1), new BHSDCodec(5, 128, 2, 1), new BHSDCodec(2, 192), new BHSDCodec(2, 224), new BHSDCodec(2, 240), new BHSDCodec(2, 248), new BHSDCodec(2, 252), new BHSDCodec(2, 8, 0, 1), new BHSDCodec(2, 8, 1, 1), new BHSDCodec(2, 16, 0, 1), new BHSDCodec(2, 16, 1, 1), new BHSDCodec(2, 32, 0, 1), new BHSDCodec(2, 32, 1, 1), new BHSDCodec(2, 64, 0, 1), new BHSDCodec(2, 64, 1, 1), new BHSDCodec(2, 128, 0, 1), new BHSDCodec(2, 128, 1, 1), new BHSDCodec(2, 192, 0, 1), new BHSDCodec(2, 192, 1, 1), new BHSDCodec(2, 224, 0, 1), new BHSDCodec(2, 224, 1, 1), new BHSDCodec(2, 240, 0, 1), new BHSDCodec(2, 240, 1, 1), new BHSDCodec(2, 248, 0, 1), new BHSDCodec(2, 248, 1, 1), new BHSDCodec(3, 192), new BHSDCodec(3, 224), new BHSDCodec(3, 240), new BHSDCodec(3, 248), new BHSDCodec(3, 252), new BHSDCodec(3, 8, 0, 1), new BHSDCodec(3, 8, 1, 1), new BHSDCodec(3, 16, 0, 1), new BHSDCodec(3, 16, 1, 1), new BHSDCodec(3, 32, 0, 1), new BHSDCodec(3, 32, 1, 1), new BHSDCodec(3, 64, 0, 1), new BHSDCodec(3, 64, 1, 1), new BHSDCodec(3, 128, 0, 1), new BHSDCodec(3, 128, 1, 1), new BHSDCodec(3, 192, 0, 1), new BHSDCodec(3, 192, 1, 1), new BHSDCodec(3, 224, 0, 1), new BHSDCodec(3, 224, 1, 1), new BHSDCodec(3, 240, 0, 1), new BHSDCodec(3, 240, 1, 1), new BHSDCodec(3, 248, 0, 1), new BHSDCodec(3, 248, 1, 1), new BHSDCodec(4, 192), new BHSDCodec(4, 224), new BHSDCodec(4, 240), new BHSDCodec(4, 248), new BHSDCodec(4, 252), new BHSDCodec(4, 8, 0, 1), new BHSDCodec(4, 8, 1, 1), new BHSDCodec(4, 16, 0, 1), new BHSDCodec(4, 16, 1, 1), new BHSDCodec(4, 32, 0, 1), new BHSDCodec(4, 32, 1, 1), new BHSDCodec(4, 64, 0, 1), new BHSDCodec(4, 64, 1, 1), new BHSDCodec(4, 128, 0, 1), new BHSDCodec(4, 128, 1, 1), new BHSDCodec(4, 192, 0, 1), new BHSDCodec(4, 192, 1, 1), new BHSDCodec(4, 224, 0, 1), new BHSDCodec(4, 224, 1, 1), new BHSDCodec(4, 240, 0, 1), new BHSDCodec(4, 240, 1, 1), new BHSDCodec(4, 248, 0, 1), new BHSDCodec(4, 248, 1, 1)};
        canonicalCodec = bHSDCodecArr;
        HashMap map = new HashMap(bHSDCodecArr.length);
        while (true) {
            BHSDCodec[] bHSDCodecArr2 = canonicalCodec;
            if (i < bHSDCodecArr2.length) {
                map.put(bHSDCodecArr2[i], Integer.valueOf(i));
                i++;
            } else {
                canonicalCodecsToSpecifiers = map;
                return;
            }
        }
    }

    public static BHSDCodec getCanonicalCodec(int i) {
        return canonicalCodec[i];
    }

    public static Codec getCodec(int i, InputStream inputStream, Codec codec) throws IOException {
        BHSDCodec[] bHSDCodecArr = canonicalCodec;
        if (bHSDCodecArr.length != 116) {
            throw new Error("Canonical encodings have been incorrectly modified");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Encoding cannot be less than zero");
        }
        if (i == 0) {
            return codec;
        }
        if (i <= 115) {
            return bHSDCodecArr[i];
        }
        if (i == 116) {
            int i2 = inputStream.read();
            if (i2 == -1) {
                throw new EOFException("End of buffer read whilst trying to decode codec");
            }
            int i3 = i2 & 1;
            int i4 = (i2 >> 1) & 3;
            int i5 = ((i2 >> 3) & 7) + 1;
            int i6 = inputStream.read();
            if (i6 == -1) {
                throw new EOFException("End of buffer read whilst trying to decode codec");
            }
            return new BHSDCodec(i5, i6 + 1, i4, i3);
        }
        if (i >= 117 && i <= 140) {
            int i7 = i - 117;
            int i8 = i7 & 3;
            boolean z = ((i7 >> 2) & 1) == 1;
            boolean z2 = ((i7 >> 3) & 1) == 1;
            boolean z3 = ((i7 >> 4) & 1) == 1;
            if (z2 && z3) {
                throw new Pack200Exception("ADef and BDef should never both be true");
            }
            int iPow = ((z ? inputStream.read() : 3) + 1) * ((int) Math.pow(16.0d, i8));
            Codec codec2 = z2 ? codec : getCodec(inputStream.read(), inputStream, codec);
            if (!z3) {
                codec = getCodec(inputStream.read(), inputStream, codec);
            }
            return new RunCodec(iPow, codec2, codec);
        }
        if (i < 141 || i > 188) {
            throw new Pack200Exception("Invalid codec encoding byte (" + i + ") found");
        }
        int i9 = i - CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA;
        boolean z4 = (i9 & 1) == 1;
        boolean z5 = ((i9 >> 1) & 1) == 1;
        int i10 = i9 >> 2;
        boolean z6 = i10 != 0;
        int i11 = new int[]{0, 4, 8, 16, 32, 64, 128, 192, 224, 240, 248, 252}[i10];
        if (z6) {
            Codec codec3 = z4 ? codec : getCodec(inputStream.read(), inputStream, codec);
            if (!z5) {
                codec = getCodec(inputStream.read(), inputStream, codec);
            }
            return new PopulationCodec(codec3, i11, codec);
        }
        Codec codec4 = z4 ? codec : getCodec(inputStream.read(), inputStream, codec);
        Codec codec5 = getCodec(inputStream.read(), inputStream, codec);
        if (!z5) {
            codec = getCodec(inputStream.read(), inputStream, codec);
        }
        return new PopulationCodec(codec4, codec5, codec);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x0110  */
    public static int[] getSpecifier(Codec codec, Codec codec2) {
        int iBinarySearch;
        int i;
        int i2;
        int i3;
        if (canonicalCodecsToSpecifiers.containsKey(codec)) {
            return new int[]{canonicalCodecsToSpecifiers.get(codec).intValue()};
        }
        int i4 = 2;
        if (codec instanceof BHSDCodec) {
            BHSDCodec bHSDCodec = (BHSDCodec) codec;
            return new int[]{116, (bHSDCodec.isDelta() ? 1 : 0) + (bHSDCodec.getS() * 2) + ((bHSDCodec.getB() - 1) * 8), bHSDCodec.getH() - 1};
        }
        int i5 = 0;
        if (codec instanceof RunCodec) {
            RunCodec runCodec = (RunCodec) codec;
            int k = runCodec.getK();
            if (k <= 256) {
                i = k - 1;
                i2 = 0;
            } else if (k <= 4096) {
                i = (k / 16) - 1;
                i2 = 1;
            } else if (k <= 65536) {
                i = (k / 256) - 1;
                i2 = 2;
            } else {
                i = (k / 4096) - 1;
                i2 = 3;
            }
            Codec aCodec = runCodec.getACodec();
            Codec bCodec = runCodec.getBCodec();
            if (aCodec.equals(codec2)) {
                i3 = 1;
            } else {
                i3 = bCodec.equals(codec2) ? 2 : 0;
            }
            int i6 = i2 + 117 + (i == 3 ? 0 : 4) + (i3 * 8);
            int[] specifier = i3 == 1 ? EMPTY_INT_ARRAY : getSpecifier(aCodec, codec2);
            int[] specifier2 = i3 == 2 ? EMPTY_INT_ARRAY : getSpecifier(bCodec, codec2);
            int[] iArr = new int[(i == 3 ? 0 : 1) + 1 + specifier.length + specifier2.length];
            iArr[0] = i6;
            if (i != 3) {
                iArr[1] = i;
            } else {
                i4 = 1;
            }
            for (int i7 : specifier) {
                iArr[i4] = i7;
                i4++;
            }
            int length = specifier2.length;
            while (i5 < length) {
                iArr[i4] = specifier2[i5];
                i4++;
                i5++;
            }
            return iArr;
        }
        if (!(codec instanceof PopulationCodec)) {
            return null;
        }
        PopulationCodec populationCodec = (PopulationCodec) codec;
        Codec tokenCodec = populationCodec.getTokenCodec();
        Codec favouredCodec = populationCodec.getFavouredCodec();
        Codec unfavouredCodec = populationCodec.getUnfavouredCodec();
        boolean zEquals = favouredCodec.equals(codec2);
        boolean zEquals2 = unfavouredCodec.equals(codec2);
        if (populationCodec.getFavoured() == null) {
            iBinarySearch = 0;
        } else if (tokenCodec == Codec.BYTE1) {
            iBinarySearch = 1;
        } else if (tokenCodec instanceof BHSDCodec) {
            BHSDCodec bHSDCodec2 = (BHSDCodec) tokenCodec;
            if (bHSDCodec2.getS() != 0 || (iBinarySearch = Arrays.binarySearch(new int[]{4, 8, 16, 32, 64, 128, 192, 224, 240, 248, 252}, 256 - bHSDCodec2.getH())) == -1) {
                iBinarySearch = 0;
            }
        } else {
            iBinarySearch = 0;
        }
        int i8 = (zEquals ? 1 : 0) + CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA + ((zEquals2 ? 1 : 0) * 2) + (iBinarySearch * 4);
        int[] specifier3 = zEquals ? EMPTY_INT_ARRAY : getSpecifier(favouredCodec, codec2);
        int[] specifier4 = iBinarySearch != 0 ? EMPTY_INT_ARRAY : getSpecifier(tokenCodec, codec2);
        int[] specifier5 = zEquals2 ? EMPTY_INT_ARRAY : getSpecifier(unfavouredCodec, codec2);
        int[] iArr2 = new int[specifier3.length + 1 + specifier5.length + specifier4.length];
        iArr2[0] = i8;
        int i9 = 1;
        for (int i10 : specifier3) {
            iArr2[i9] = i10;
            i9++;
        }
        for (int i11 : specifier4) {
            iArr2[i9] = i11;
            i9++;
        }
        int length2 = specifier5.length;
        while (i5 < length2) {
            iArr2[i9] = specifier5[i5];
            i9++;
            i5++;
        }
        return iArr2;
    }

    public static int getSpecifierForDefaultCodec(BHSDCodec bHSDCodec) {
        return getSpecifier(bHSDCodec, null)[0];
    }
}
