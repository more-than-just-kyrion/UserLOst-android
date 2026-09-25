package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketServiceAccept {
    byte[] payload;
    String serviceName;

    public PacketServiceAccept(String str) {
        this.serviceName = str;
    }

    public PacketServiceAccept(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 6) {
            throw new IOException("This is not a SSH_MSG_SERVICE_ACCEPT! (" + i3 + ")");
        }
        if (typesReader.remain() > 0) {
            this.serviceName = typesReader.readString();
        } else {
            this.serviceName = "";
        }
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_SERVICE_ACCEPT packet!");
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(6);
            typesWriter.writeString(this.serviceName);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
