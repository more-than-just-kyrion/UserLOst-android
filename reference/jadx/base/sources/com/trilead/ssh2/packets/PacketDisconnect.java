package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketDisconnect {
    String desc;
    String lang;
    byte[] payload;
    int reason;

    public PacketDisconnect(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 1) {
            throw new IOException("This is not a Disconnect Packet! (" + i3 + ")");
        }
        this.reason = typesReader.readUINT32();
        this.desc = typesReader.readString();
        this.lang = typesReader.readString();
    }

    public PacketDisconnect(int i, String str, String str2) {
        this.reason = i;
        this.desc = str;
        this.lang = str2;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(1);
            typesWriter.writeUINT32(this.reason);
            typesWriter.writeString(this.desc);
            typesWriter.writeString(this.lang);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
