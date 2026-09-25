package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketChannelTrileadPing {
    byte[] payload;
    public int recipientChannelID;

    public PacketChannelTrileadPing(int i) {
        this.recipientChannelID = i;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(98);
            typesWriter.writeUINT32(this.recipientChannelID);
            typesWriter.writeString("trilead-ping");
            typesWriter.writeBoolean(true);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
