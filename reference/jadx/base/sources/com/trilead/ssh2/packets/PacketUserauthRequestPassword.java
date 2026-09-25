package com.trilead.ssh2.packets;

import com.iiordanov.bVNC.Constants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketUserauthRequestPassword {
    String password;
    byte[] payload;
    String serviceName;
    String userName;

    public PacketUserauthRequestPassword(String str, String str2, String str3) {
        this.serviceName = str;
        this.userName = str2;
        this.password = str3;
    }

    public PacketUserauthRequestPassword(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 50) {
            throw new IOException("This is not a SSH_MSG_USERAUTH_REQUEST! (" + i3 + ")");
        }
        this.userName = typesReader.readString();
        this.serviceName = typesReader.readString();
        if (!typesReader.readString().equals(Constants.testpassword)) {
            throw new IOException("This is not a SSH_MSG_USERAUTH_REQUEST with type password!");
        }
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_USERAUTH_REQUEST packet!");
        }
    }

    public byte[] getPayload() throws UnsupportedEncodingException {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(50);
            typesWriter.writeString(this.userName, "UTF-8");
            typesWriter.writeString(this.serviceName);
            typesWriter.writeString(Constants.testpassword);
            typesWriter.writeBoolean(false);
            typesWriter.writeString(this.password, "UTF-8");
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
