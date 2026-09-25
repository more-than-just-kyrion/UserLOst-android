package com.trilead.ssh2.crypto.keys;

import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import java.io.IOException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519PublicKey implements PublicKey {
    private static final byte[] ED25519_OID = {43, 101, 112};
    private static final int ENCODED_SIZE = 44;
    private static final int KEY_BYTES_LENGTH = 32;
    private final byte[] keyBytes;

    public Ed25519PublicKey(byte[] bArr) {
        this.keyBytes = bArr;
    }

    public Ed25519PublicKey(X509EncodedKeySpec x509EncodedKeySpec) throws InvalidKeySpecException {
        this.keyBytes = decode(x509EncodedKeySpec.getEncoded());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "EdDSA";
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeByte(48);
        byte[] bArr = ED25519_OID;
        typesWriter.writeByte(bArr.length + 7 + this.keyBytes.length);
        typesWriter.writeByte(48);
        typesWriter.writeByte(bArr.length + 2);
        typesWriter.writeByte(6);
        typesWriter.writeByte(bArr.length);
        typesWriter.writeBytes(bArr);
        typesWriter.writeByte(3);
        typesWriter.writeByte(this.keyBytes.length + 1);
        typesWriter.writeByte(0);
        typesWriter.writeBytes(this.keyBytes);
        return typesWriter.getBytes();
    }

    public int hashCode() {
        return Arrays.hashCode(this.keyBytes);
    }

    public boolean equals(Object obj) {
        byte[] bArr;
        if (!(obj instanceof Ed25519PublicKey)) {
            return false;
        }
        Ed25519PublicKey ed25519PublicKey = (Ed25519PublicKey) obj;
        byte[] bArr2 = this.keyBytes;
        if (bArr2 == null || (bArr = ed25519PublicKey.keyBytes) == null) {
            return false;
        }
        return Arrays.equals(bArr2, bArr);
    }

    private static byte[] decode(byte[] bArr) throws InvalidKeySpecException {
        if (bArr.length != 44) {
            throw new InvalidKeySpecException("Key is not of correct size");
        }
        try {
            TypesReader typesReader = new TypesReader(bArr);
            if (typesReader.readByte() == 48) {
                int i = typesReader.readByte();
                byte[] bArr2 = ED25519_OID;
                if (i == bArr2.length + 39 && typesReader.readByte() == 48 && typesReader.readByte() == bArr2.length + 2 && typesReader.readByte() == 6 && typesReader.readByte() == bArr2.length) {
                    if (!Arrays.equals(typesReader.readBytes(bArr2.length), bArr2) || typesReader.readByte() != 3 || typesReader.readByte() != 33 || typesReader.readByte() != 0) {
                        throw new InvalidKeySpecException("Key was not encoded correctly");
                    }
                    return typesReader.readBytes(32);
                }
            }
            throw new InvalidKeySpecException("Key was not encoded correctly");
        } catch (IOException unused) {
            throw new InvalidKeySpecException("Key was not encoded correctly");
        }
    }

    public byte[] getAbyte() {
        return this.keyBytes;
    }
}
