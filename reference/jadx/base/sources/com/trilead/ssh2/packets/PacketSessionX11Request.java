package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketSessionX11Request {
    byte[] payload;
    public int recipientChannelID;
    public boolean singleConnection;
    public boolean wantReply;
    String x11AuthenticationCookie;
    String x11AuthenticationProtocol;
    int x11ScreenNumber;

    public PacketSessionX11Request(int i, boolean z, boolean z2, String str, String str2, int i2) {
        this.recipientChannelID = i;
        this.wantReply = z;
        this.singleConnection = z2;
        this.x11AuthenticationProtocol = str;
        this.x11AuthenticationCookie = str2;
        this.x11ScreenNumber = i2;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(98);
            typesWriter.writeUINT32(this.recipientChannelID);
            typesWriter.writeString("x11-req");
            typesWriter.writeBoolean(this.wantReply);
            typesWriter.writeBoolean(this.singleConnection);
            typesWriter.writeString(this.x11AuthenticationProtocol);
            typesWriter.writeString(this.x11AuthenticationCookie);
            typesWriter.writeUINT32(this.x11ScreenNumber);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
