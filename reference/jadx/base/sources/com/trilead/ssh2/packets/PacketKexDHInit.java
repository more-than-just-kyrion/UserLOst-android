package com.trilead.ssh2.packets;

/* JADX INFO: loaded from: classes2.dex */
public class PacketKexDHInit {
    byte[] payload;
    byte[] publicKey;

    public PacketKexDHInit(byte[] bArr) {
        this.publicKey = bArr;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(30);
            byte[] bArr = this.publicKey;
            typesWriter.writeString(bArr, 0, bArr.length);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
