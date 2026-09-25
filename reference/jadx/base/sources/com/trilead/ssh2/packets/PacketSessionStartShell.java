package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketSessionStartShell {
    byte[] payload;
    public int recipientChannelID;
    public boolean wantReply;

    public PacketSessionStartShell(int i, boolean z) {
        this.recipientChannelID = i;
        this.wantReply = z;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(98);
            typesWriter.writeUINT32(this.recipientChannelID);
            typesWriter.writeString("shell");
            typesWriter.writeBoolean(this.wantReply);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
