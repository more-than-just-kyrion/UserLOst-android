package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketSessionPtyResize {
    public int height;
    byte[] payload;
    public int pixelHeight;
    public int pixelWidth;
    public int recipientChannelID;
    public int width;

    public PacketSessionPtyResize(int i, int i2, int i3, int i4, int i5) {
        this.recipientChannelID = i;
        this.width = i2;
        this.height = i3;
        this.pixelWidth = i4;
        this.pixelHeight = i5;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(98);
            typesWriter.writeUINT32(this.recipientChannelID);
            typesWriter.writeString("window-change");
            typesWriter.writeBoolean(false);
            typesWriter.writeUINT32(this.width);
            typesWriter.writeUINT32(this.height);
            typesWriter.writeUINT32(this.pixelWidth);
            typesWriter.writeUINT32(this.pixelHeight);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
