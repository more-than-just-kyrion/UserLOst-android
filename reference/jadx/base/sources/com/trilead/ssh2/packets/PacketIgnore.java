package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketIgnore {
    byte[] data;
    byte[] payload;

    public void setData(byte[] bArr) {
        this.data = bArr;
        this.payload = null;
    }

    public PacketIgnore() {
    }

    public PacketIgnore(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        int i3 = new TypesReader(bArr, i, i2).readByte();
        if (i3 != 2) {
            throw new IOException("This is not a SSH_MSG_IGNORE packet! (" + i3 + ")");
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(2);
            byte[] bArr = this.data;
            if (bArr != null) {
                typesWriter.writeString(bArr, 0, bArr.length);
            } else {
                typesWriter.writeString("");
            }
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
