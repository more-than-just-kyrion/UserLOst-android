package net.vrallev.java.ecc;

import djb.Curve25519;
import java.util.Arrays;
import net.i2p.crypto.eddsa.spec.EdDSANamedCurveTable;
import net.i2p.crypto.eddsa.spec.EdDSAPrivateKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class KeyHolder {
    protected final byte[] mOriginalPrivateKey;
    protected final byte[] mPrivateKey;
    protected final byte[] mPublicKeyDiffieHellman;
    protected final byte[] mPublicKeySignature;

    public static byte[] createPrivateKey(byte[] bArr) {
        return Ecc25519Helper.getSha256Digest().digest(bArr);
    }

    public KeyHolder(byte[] bArr) {
        if (bArr == null || (bArr.length != 32 && bArr.length != 64)) {
            throw new IllegalArgumentException("private key must contain 32 or 64 bytes.");
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        this.mOriginalPrivateKey = bArrCopyOf;
        byte[] bArrCopyOf2 = Arrays.copyOf(bArrCopyOf, bArrCopyOf.length);
        this.mPrivateKey = bArrCopyOf2;
        Curve25519.clamp(bArrCopyOf2);
        byte[] bArr2 = new byte[32];
        this.mPublicKeyDiffieHellman = bArr2;
        Curve25519.keygen(bArr2, null, bArrCopyOf2);
        this.mPublicKeySignature = computePublicSignatureKey(bArrCopyOf2);
    }

    public KeyHolder(byte[] bArr, byte[] bArr2) {
        this(null, bArr, bArr2);
    }

    public KeyHolder(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.mPrivateKey = bArr;
        this.mOriginalPrivateKey = bArr;
        this.mPublicKeyDiffieHellman = bArr2;
        this.mPublicKeySignature = bArr3;
    }

    protected byte[] computePublicSignatureKey(byte[] bArr) {
        return new EdDSAPrivateKeySpec(bArr, EdDSANamedCurveTable.getByName("ed25519-sha-512")).getA().toByteArray();
    }

    public byte[] getPrivateKey() {
        return this.mPrivateKey;
    }

    public byte[] getPrivateKeyUnclamped() {
        return this.mOriginalPrivateKey;
    }

    public byte[] getPublicKeyDiffieHellman() {
        return this.mPublicKeyDiffieHellman;
    }

    public byte[] getPublicKeySignature() {
        return this.mPublicKeySignature;
    }
}
