package com.trilead.ssh2.crypto.keys;

import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import java.io.IOException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Arrays;
import javax.security.auth.DestroyFailedException;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519PrivateKey implements PrivateKey {
    private static final byte[] ED25519_OID = {43, 101, 112};
    private static final int ENCODED_SIZE = 48;
    private static final int KEY_BYTES_LENGTH = 32;
    private boolean destroyed;
    private final byte[] seed;

    public Ed25519PrivateKey(byte[] bArr) {
        this.seed = bArr;
    }

    public Ed25519PrivateKey(PKCS8EncodedKeySpec pKCS8EncodedKeySpec) throws InvalidKeySpecException {
        this.seed = decode(pKCS8EncodedKeySpec);
    }

    public int hashCode() {
        return Arrays.hashCode(this.seed);
    }

    public boolean equals(Object obj) {
        byte[] bArr;
        if (!(obj instanceof Ed25519PrivateKey)) {
            return false;
        }
        Ed25519PrivateKey ed25519PrivateKey = (Ed25519PrivateKey) obj;
        byte[] bArr2 = this.seed;
        if (bArr2 == null || (bArr = ed25519PrivateKey.seed) == null || bArr2.length != bArr.length) {
            return false;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr3 = this.seed;
            if (i >= bArr3.length) {
                break;
            }
            i2 |= bArr3[i] ^ ed25519PrivateKey.seed[i];
            i++;
        }
        return i2 == 0;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "EdDSA";
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getSeed() {
        return this.seed;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeByte(48);
        byte[] bArr = ED25519_OID;
        typesWriter.writeByte(bArr.length + 11 + this.seed.length);
        typesWriter.writeByte(2);
        typesWriter.writeByte(1);
        typesWriter.writeByte(0);
        typesWriter.writeByte(48);
        typesWriter.writeByte(bArr.length + 2);
        typesWriter.writeByte(6);
        typesWriter.writeByte(bArr.length);
        typesWriter.writeBytes(bArr);
        typesWriter.writeByte(4);
        typesWriter.writeByte(this.seed.length + 2);
        typesWriter.writeByte(4);
        typesWriter.writeByte(this.seed.length);
        typesWriter.writeBytes(this.seed);
        return typesWriter.getBytes();
    }

    private static byte[] decode(PKCS8EncodedKeySpec pKCS8EncodedKeySpec) throws InvalidKeySpecException {
        if (pKCS8EncodedKeySpec.getEncoded().length != 48) {
            throw new InvalidKeySpecException("Key spec is of invalid size");
        }
        try {
            TypesReader typesReader = new TypesReader(pKCS8EncodedKeySpec.getEncoded());
            if (typesReader.readByte() == 48 && typesReader.readByte() == 46 && typesReader.readByte() == 2 && typesReader.readByte() == 1 && typesReader.readByte() == 0 && typesReader.readByte() == 48) {
                int i = typesReader.readByte();
                byte[] bArr = ED25519_OID;
                if (i == bArr.length + 2 && typesReader.readByte() == 6 && typesReader.readByte() == bArr.length) {
                    if (!Arrays.equals(bArr, typesReader.readBytes(bArr.length)) || typesReader.readByte() != 4 || typesReader.readByte() != 34 || typesReader.readByte() != 4 || typesReader.readByte() != 32) {
                        throw new InvalidKeySpecException("Key was not encoded correctly");
                    }
                    return typesReader.readBytes(32);
                }
            }
            throw new InvalidKeySpecException("Key was not encoded correctly");
        } catch (IOException e) {
            throw new InvalidKeySpecException("Key was not encoded correctly", e);
        }
    }

    @Override // javax.security.auth.Destroyable
    public void destroy() throws DestroyFailedException {
        Arrays.fill(this.seed, (byte) 0);
        this.destroyed = true;
    }

    @Override // javax.security.auth.Destroyable
    public boolean isDestroyed() {
        return this.destroyed;
    }
}
