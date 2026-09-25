package com.trilead.ssh2.packets;

import com.iiordanov.pubkeygenerator.PreferenceConstants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketUserauthRequestNone {
    byte[] payload;
    String serviceName;
    String userName;

    public PacketUserauthRequestNone(String str, String str2) {
        this.serviceName = str;
        this.userName = str2;
    }

    public PacketUserauthRequestNone(byte[] bArr, int i, int i2) throws IOException {
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
        if (!typesReader.readString().equals(PreferenceConstants.CUSTOM_KEYMAP_DISABLED)) {
            throw new IOException("This is not a SSH_MSG_USERAUTH_REQUEST with type none!");
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
            typesWriter.writeString(PreferenceConstants.CUSTOM_KEYMAP_DISABLED);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
