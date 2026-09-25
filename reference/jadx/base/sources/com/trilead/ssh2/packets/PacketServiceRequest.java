package com.trilead.ssh2.packets;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PacketServiceRequest {
    byte[] payload;
    String serviceName;

    public PacketServiceRequest(String str) {
        this.serviceName = str;
    }

    public PacketServiceRequest(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 5) {
            throw new IOException("This is not a SSH_MSG_SERVICE_REQUEST! (" + i3 + ")");
        }
        this.serviceName = typesReader.readString();
        if (typesReader.remain() != 0) {
            throw new IOException("Padding in SSH_MSG_SERVICE_REQUEST packet!");
        }
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(5);
            typesWriter.writeString(this.serviceName);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
