package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketGlobalForwardRequest {
    public String bindAddress;
    public int bindPort;
    byte[] payload;
    public boolean wantReply;

    public PacketGlobalForwardRequest(boolean z, String str, int i) {
        this.wantReply = z;
        this.bindAddress = str;
        this.bindPort = i;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(80);
            typesWriter.writeString("tcpip-forward");
            typesWriter.writeBoolean(this.wantReply);
            typesWriter.writeString(this.bindAddress);
            typesWriter.writeUINT32(this.bindPort);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
