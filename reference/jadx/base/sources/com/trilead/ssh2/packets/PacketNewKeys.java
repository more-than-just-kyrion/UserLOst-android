package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketNewKeys {
    byte[] payload;

    public PacketNewKeys() {
    }

    public PacketNewKeys(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 21) {
            throw new IOException("This is not a SSH_MSG_NEWKEYS! (" + i3 + ")");
        }
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_NEWKEYS packet!");
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(21);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
