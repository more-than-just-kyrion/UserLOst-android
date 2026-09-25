package net.vrallev.java.ecc;

import djb.Curve25519;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.util.Arrays;
import net.i2p.crypto.eddsa.EdDSAEngine;
import net.i2p.crypto.eddsa.EdDSAPrivateKey;
import net.i2p.crypto.eddsa.EdDSAPublicKey;
import net.i2p.crypto.eddsa.spec.EdDSANamedCurveTable;
import net.i2p.crypto.eddsa.spec.EdDSAPrivateKeySpec;
import net.i2p.crypto.eddsa.spec.EdDSAPublicKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class Ecc25519Helper {
    private final EdDSAEngine mEdDSAEngine;
    private final KeyHolder mKeyHolder;

    static MessageDigest getSha256Digest() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.reset();
            return messageDigest;
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    static MessageDigest getSha512Digest() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
            messageDigest.reset();
            return messageDigest;
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Ecc25519Helper() {
        this((KeyHolder) null);
    }

    public Ecc25519Helper(byte[] bArr) {
        this(new KeyHolder(bArr));
    }

    public Ecc25519Helper(KeyHolder keyHolder) {
        this.mKeyHolder = keyHolder;
        this.mEdDSAEngine = new EdDSAEngine(getSha512Digest());
    }

    public byte[] diffieHellman() {
        return diffieHellman(this.mKeyHolder.getPrivateKey(), this.mKeyHolder.getPublicKeyDiffieHellman());
    }

    public byte[] diffieHellman(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[32];
        Curve25519.curve(bArr3, bArr, bArr2);
        return getSha256Digest().digest(bArr3);
    }

    public byte[] sign(byte[] bArr) {
        return signWithoutClamp(bArr, this.mKeyHolder.getPrivateKey(), this.mKeyHolder.getPublicKeySignature());
    }

    public byte[] sign(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArrCopyOf = Arrays.copyOf(bArr2, bArr2.length);
        Curve25519.clamp(bArrCopyOf);
        return signWithoutClamp(bArr, bArrCopyOf, bArr3);
    }

    protected byte[] signWithoutClamp(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            this.mEdDSAEngine.initSign(new EdDSAPrivateKey(new EdDSAPrivateKeySpec(bArr2, EdDSANamedCurveTable.getByName("ed25519-sha-512"))));
            this.mEdDSAEngine.update(bArr);
            return this.mEdDSAEngine.sign();
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (SignatureException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public boolean isValidSignature(byte[] bArr, byte[] bArr2) {
        return isValidSignature(bArr, bArr2, this.mKeyHolder.getPublicKeySignature());
    }

    public boolean isValidSignature(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            this.mEdDSAEngine.initVerify(new EdDSAPublicKey(new EdDSAPublicKeySpec(bArr3, EdDSANamedCurveTable.getByName("ed25519-sha-512"))));
            this.mEdDSAEngine.update(bArr);
            return this.mEdDSAEngine.verify(bArr2);
        } catch (Exception e) {
            throw new IllegalArgumentException(e);
        }
    }

    public KeyHolder getKeyHolder() {
        return this.mKeyHolder;
    }
}
