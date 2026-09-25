package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketChannelOpenFailure {
    public String description;
    public String languageTag;
    byte[] payload;
    public int reasonCode;
    public int recipientChannelID;

    public PacketChannelOpenFailure(int i, int i2, String str, String str2) {
        this.recipientChannelID = i;
        this.reasonCode = i2;
        this.description = str;
        this.languageTag = str2;
    }

    public PacketChannelOpenFailure(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 92) {
            throw new IOException("This is not a SSH_MSG_CHANNEL_OPEN_FAILURE! (" + i3 + ")");
        }
        this.recipientChannelID = typesReader.readUINT32();
        this.reasonCode = typesReader.readUINT32();
        this.description = typesReader.readString();
        this.languageTag = typesReader.readString();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_CHANNEL_OPEN_FAILURE packet!");
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(92);
            typesWriter.writeUINT32(this.recipientChannelID);
            typesWriter.writeUINT32(this.reasonCode);
            typesWriter.writeString(this.description);
            typesWriter.writeString(this.languageTag);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
