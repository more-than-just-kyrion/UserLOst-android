package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketSessionExecCommand {
    public String command;
    byte[] payload;
    public int recipientChannelID;
    public boolean wantReply;

    public PacketSessionExecCommand(int i, boolean z, String str) {
        this.recipientChannelID = i;
        this.wantReply = z;
        this.command = str;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(98);
            typesWriter.writeUINT32(this.recipientChannelID);
            typesWriter.writeString("exec");
            typesWriter.writeBoolean(this.wantReply);
            typesWriter.writeString(this.command);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
