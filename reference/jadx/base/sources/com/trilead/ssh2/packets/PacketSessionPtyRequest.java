package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketSessionPtyRequest {
    public int character_height;
    public int character_width;
    byte[] payload;
    public int pixel_height;
    public int pixel_width;
    public int recipientChannelID;
    public String term;
    public byte[] terminal_modes;
    public boolean wantReply;

    public PacketSessionPtyRequest(int i, boolean z, String str, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.recipientChannelID = i;
        this.wantReply = z;
        this.term = str;
        this.character_width = i2;
        this.character_height = i3;
        this.pixel_width = i4;
        this.pixel_height = i5;
        this.terminal_modes = bArr;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(98);
            typesWriter.writeUINT32(this.recipientChannelID);
            typesWriter.writeString("pty-req");
            typesWriter.writeBoolean(this.wantReply);
            typesWriter.writeString(this.term);
            typesWriter.writeUINT32(this.character_width);
            typesWriter.writeUINT32(this.character_height);
            typesWriter.writeUINT32(this.pixel_width);
            typesWriter.writeUINT32(this.pixel_height);
            byte[] bArr = this.terminal_modes;
            typesWriter.writeString(bArr, 0, bArr.length);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
