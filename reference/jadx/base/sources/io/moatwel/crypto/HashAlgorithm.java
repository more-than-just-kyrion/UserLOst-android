package io.moatwel.crypto;

import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes2.dex */
public enum HashAlgorithm {
    KECCAK_256("KECCAK-256", 256),
    KECCAK_512("KECCAK-512", 512),
    SHA3_256("SHA3-256", 256),
    SHA3_512(MessageDigestAlgorithms.SHA3_512, 512),
    SHA_512("SHA-512", 512),
    SHAKE_128("SHAKE-128", 128),
    SHAKE_256("SHAKE-256", 256),
    RIPEMD_160("RipeMD160", CipherSuite.TLS_DH_RSA_WITH_AES_128_GCM_SHA256);

    private String algorithm;
    private int defaultBitLength;

    HashAlgorithm(String str, int i) {
        this.algorithm = str;
        this.defaultBitLength = i;
    }

    public String getName() {
        return this.algorithm;
    }

    public int getDefaultBitLength() {
        return this.defaultBitLength;
    }
}
