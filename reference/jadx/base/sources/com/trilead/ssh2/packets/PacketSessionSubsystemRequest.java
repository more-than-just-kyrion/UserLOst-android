package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketSessionSubsystemRequest {
    byte[] payload;
    public int recipientChannelID;
    public String subsystem;
    public boolean wantReply;

    public PacketSessionSubsystemRequest(int i, boolean z, String str) {
        this.recipientChannelID = i;
        this.wantReply = z;
        this.subsystem = str;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(98);
            typesWriter.writeUINT32(this.recipientChannelID);
            typesWriter.writeString("subsystem");
            typesWriter.writeBoolean(this.wantReply);
            typesWriter.writeString(this.subsystem);
            byte[] bytes = typesWriter.getBytes();
            this.payload = bytes;
            typesWriter.getBytes(bytes);
        }
        return this.payload;
    }
}
