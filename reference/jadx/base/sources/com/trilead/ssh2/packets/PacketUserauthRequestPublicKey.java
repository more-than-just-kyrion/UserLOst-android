package com.trilead.ssh2.packets;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketUserauthRequestPublicKey {
    String password;
    byte[] payload;
    byte[] pk;
    String pkAlgoName;
    String serviceName;
    byte[] sig;
    String userName;

    public PacketUserauthRequestPublicKey(String str, String str2, String str3, byte[] bArr, byte[] bArr2) {
        this.serviceName = str;
        this.userName = str2;
        this.pkAlgoName = str3;
        this.pk = bArr;
        this.sig = bArr2;
    }

    public PacketUserauthRequestPublicKey(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        int i3 = new TypesReader(bArr, i, i2).readByte();
        if (i3 != 50) {
            throw new IOException("This is not a SSH_MSG_USERAUTH_REQUEST! (" + i3 + ")");
        }
        throw new IOException("Not implemented!");
    }

    public byte[] getPayload() throws UnsupportedEncodingException {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(50);
            typesWriter.writeString(this.userName, "UTF-8");
            typesWriter.writeString(this.serviceName);
            typesWriter.writeString("publickey");
            typesWriter.writeBoolean(true);
            typesWriter.writeString(this.pkAlgoName);
            byte[] bArr = this.pk;
            typesWriter.writeString(bArr, 0, bArr.length);
            byte[] bArr2 = this.sig;
            typesWriter.writeString(bArr2, 0, bArr2.length);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
