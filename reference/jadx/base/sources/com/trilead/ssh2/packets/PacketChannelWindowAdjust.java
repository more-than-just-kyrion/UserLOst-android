package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketChannelWindowAdjust {
    byte[] payload;
    public int recipientChannelID;
    public int windowChange;

    public PacketChannelWindowAdjust(int i, int i2) {
        this.recipientChannelID = i;
        this.windowChange = i2;
    }

    public PacketChannelWindowAdjust(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 93) {
            throw new IOException("This is not a SSH_MSG_CHANNEL_WINDOW_ADJUST! (" + i3 + ")");
        }
        this.recipientChannelID = typesReader.readUINT32();
        this.windowChange = typesReader.readUINT32();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_CHANNEL_WINDOW_ADJUST packet!");
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(93);
            typesWriter.writeUINT32(this.recipientChannelID);
            typesWriter.writeUINT32(this.windowChange);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
