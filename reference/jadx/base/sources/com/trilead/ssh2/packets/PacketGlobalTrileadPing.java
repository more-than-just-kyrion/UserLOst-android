package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketGlobalTrileadPing {
    byte[] payload;

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(80);
            typesWriter.writeString("trilead-ping");
            typesWriter.writeBoolean(true);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
