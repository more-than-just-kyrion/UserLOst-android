package com.iiordanov.bVNC;

/* JADX INFO: loaded from: classes2.dex */
public class DH {
    private static final int DH_GEN = 2;
    private static final int DH_KEY = 5;
    private static final int DH_MAX_BITS = 31;
    private static final int DH_MOD = 1;
    private static final int DH_PRIV = 3;
    private static final int DH_PUB = 4;
    private static final int DH_RANGE = 100;
    private long gen;
    private long key;
    private long maxNum = 2147483647L;
    private long mod;
    private long priv;
    private long pub;

    public DH() {
    }

    public DH(long j, long j2) throws Exception {
        if (j >= 2147483647L || j2 >= 2147483647L) {
            throw new Exception("Modulus or generator too large.");
        }
        this.gen = j;
        this.mod = j2;
    }

    private long rng(long j) {
        return (long) (Math.random() * j);
    }

    private boolean millerRabin(long j, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (XpowYmodN(rng(j - 3) + 2, j - 1, j) != 1) {
                return false;
            }
        }
        return true;
    }

    private long generatePrime() {
        long jTryToGeneratePrime;
        do {
            jTryToGeneratePrime = tryToGeneratePrime(rng(this.maxNum));
        } while (jTryToGeneratePrime == 0);
        return jTryToGeneratePrime;
    }

    private long tryToGeneratePrime(long j) {
        if ((j & 1) == 0) {
            j++;
        }
        long j2 = 0;
        while (!millerRabin(j, 25)) {
            long j3 = j2 + 1;
            if (j2 >= 100 || j >= this.maxNum) {
                j2 = j3;
                break;
            }
            long j4 = 2 + j;
            j = j4 % 3 == 0 ? j + 4 : j4;
            j2 = j3;
        }
        if (j2 >= 100 || j >= this.maxNum) {
            return 0L;
        }
        return j;
    }

    private long XpowYmodN(long j, long j2, long j3) {
        long j4 = 1;
        for (int i = 0; i < 64; i++) {
            j4 = (j4 * j4) % j3;
            if ((Long.MIN_VALUE & j2) != 0) {
                j4 = (j4 * j) % j3;
            }
            j2 <<= 1;
        }
        return j4;
    }

    public void createKeys() {
        this.gen = generatePrime();
        long jGeneratePrime = generatePrime();
        this.mod = jGeneratePrime;
        long j = this.gen;
        if (j > jGeneratePrime) {
            this.gen = jGeneratePrime;
            this.mod = j;
        }
    }

    public long createInterKey() {
        long jRng = rng(this.maxNum);
        this.priv = jRng;
        long jXpowYmodN = XpowYmodN(this.gen, jRng, this.mod);
        this.pub = jXpowYmodN;
        return jXpowYmodN;
    }

    public long createEncryptionKey(long j) throws Exception {
        if (j >= this.maxNum) {
            throw new Exception("interKey too large");
        }
        long jXpowYmodN = XpowYmodN(j, this.priv, this.mod);
        this.key = jXpowYmodN;
        return jXpowYmodN;
    }

    public long getValue(int i) {
        if (i == 1) {
            return this.mod;
        }
        if (i == 2) {
            return this.gen;
        }
        if (i == 3) {
            return this.priv;
        }
        if (i == 4) {
            return this.pub;
        }
        if (i != 5) {
            return 0L;
        }
        return this.key;
    }

    public int bits(long j) {
        for (int i = 0; i < 64; i++) {
            j /= 2;
            if (j < 2) {
                return i;
            }
        }
        return 0;
    }

    public static byte[] longToBytes(long j) {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) ((j >> ((7 - i) * 8)) & 255);
        }
        return bArr;
    }

    public static long bytesToLong(byte[] bArr) {
        long j = 0;
        for (int i = 0; i < 8; i++) {
            j = (j << 8) + ((long) bArr[i]);
        }
        return j;
    }
}
