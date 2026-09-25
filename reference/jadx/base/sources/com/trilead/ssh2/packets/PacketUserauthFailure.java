package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketUserauthFailure {
    String[] authThatCanContinue;
    boolean partialSuccess;
    byte[] payload;

    public PacketUserauthFailure(String[] strArr, boolean z) {
        this.authThatCanContinue = strArr;
        this.partialSuccess = z;
    }

    public PacketUserauthFailure(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 51) {
            throw new IOException("This is not a SSH_MSG_USERAUTH_FAILURE! (" + i3 + ")");
        }
        this.authThatCanContinue = typesReader.readNameList();
        this.partialSuccess = typesReader.readBoolean();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_USERAUTH_FAILURE packet!");
        }
    }

    public String[] getAuthThatCanContinue() {
        return this.authThatCanContinue;
    }

    public boolean isPartialSuccess() {
        return this.partialSuccess;
    }
}
