package com.trilead.ssh2.signature;

import com.google.crypto.tink.subtle.Ed25519Sign;
import com.trilead.ssh2.crypto.keys.Ed25519PrivateKey;
import com.trilead.ssh2.crypto.keys.Ed25519PublicKey;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519Verify implements SSHSignature {
    public static final String ED25519_ID = "ssh-ed25519";
    private static final int ED25519_PK_SIZE_BYTES = 32;
    private static final int ED25519_SIG_SIZE_BYTES = 64;
    private static final Logger log = Logger.getLogger(Ed25519Verify.class);

    private static class InstanceHolder {
        private static final Ed25519Verify sInstance = new Ed25519Verify();

        private InstanceHolder() {
        }
    }

    private Ed25519Verify() {
    }

    public static Ed25519Verify get() {
        return InstanceHolder.sInstance;
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public byte[] encodePublicKey(PublicKey publicKey) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(ED25519_ID);
        byte[] abyte = ((Ed25519PublicKey) publicKey).getAbyte();
        typesWriter.writeString(abyte, 0, abyte.length);
        return typesWriter.getBytes();
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public PublicKey decodePublicKey(byte[] bArr) throws IOException {
        TypesReader typesReader = new TypesReader(bArr);
        if (!typesReader.readString().equals(ED25519_ID)) {
            throw new IOException("This is not an Ed25519 key");
        }
        byte[] byteString = typesReader.readByteString();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in Ed25519 public key! " + typesReader.remain() + " bytes left.");
        }
        if (byteString.length != 32) {
            throw new IOException("Ed25519 was not of correct length: " + byteString.length + " vs 32");
        }
        return new Ed25519PublicKey(byteString);
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public byte[] generateSignature(byte[] bArr, PrivateKey privateKey, SecureRandom secureRandom) throws IOException {
        try {
            return encodeSSHEd25519Signature(new Ed25519Sign(((Ed25519PrivateKey) privateKey).getSeed()).sign(bArr));
        } catch (GeneralSecurityException e) {
            throw new IOException(e);
        }
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public boolean verifySignature(byte[] bArr, byte[] bArr2, PublicKey publicKey) throws IOException {
        Ed25519PublicKey ed25519PublicKey = (Ed25519PublicKey) publicKey;
        try {
            new com.google.crypto.tink.subtle.Ed25519Verify(ed25519PublicKey.getAbyte()).verify(decodeSSHEd25519Signature(bArr2), bArr);
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    private static byte[] encodeSSHEd25519Signature(byte[] bArr) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(ED25519_ID);
        typesWriter.writeString(bArr, 0, bArr.length);
        return typesWriter.getBytes();
    }

    private static byte[] decodeSSHEd25519Signature(byte[] bArr) throws IOException {
        TypesReader typesReader = new TypesReader(bArr);
        if (!typesReader.readString().equals(ED25519_ID)) {
            throw new IOException("Peer sent wrong signature format");
        }
        byte[] byteString = typesReader.readByteString();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in Ed25519 signature!");
        }
        if (byteString.length <= 64) {
            return byteString;
        }
        throw new IOException("Ed25519 signature was " + byteString.length + " bytes (32 expected)");
    }

    @Override // com.trilead.ssh2.signature.SSHSignature
    public String getKeyFormat() {
        return ED25519_ID;
    }
}
