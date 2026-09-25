package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketOpenSessionChannel {
    int channelID;
    int initialWindowSize;
    int maxPacketSize;
    byte[] payload;

    public PacketOpenSessionChannel(int i, int i2, int i3) {
        this.channelID = i;
        this.initialWindowSize = i2;
        this.maxPacketSize = i3;
    }

    public PacketOpenSessionChannel(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr);
        int i3 = typesReader.readByte();
        if (i3 != 90) {
            throw new IOException("This is not a SSH_MSG_CHANNEL_OPEN! (" + i3 + ")");
        }
        this.channelID = typesReader.readUINT32();
        this.initialWindowSize = typesReader.readUINT32();
        this.maxPacketSize = typesReader.readUINT32();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_CHANNEL_OPEN packet!");
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(90);
            typesWriter.writeString("session");
            typesWriter.writeUINT32(this.channelID);
            typesWriter.writeUINT32(this.initialWindowSize);
            typesWriter.writeUINT32(this.maxPacketSize);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
