package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketUserauthBanner {
    String language;
    String message;
    byte[] payload;

    public PacketUserauthBanner(String str, String str2) {
        this.message = str;
        this.language = str2;
    }

    public String getBanner() {
        return this.message;
    }

    public PacketUserauthBanner(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 53) {
            throw new IOException("This is not a SSH_MSG_USERAUTH_BANNER! (" + i3 + ")");
        }
        this.message = typesReader.readString("UTF-8");
        this.language = typesReader.readString();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_USERAUTH_REQUEST packet!");
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(53);
            typesWriter.writeString(this.message);
            typesWriter.writeString(this.language);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
