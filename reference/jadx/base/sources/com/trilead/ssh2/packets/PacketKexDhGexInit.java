package com.trilead.ssh2.packets;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class PacketKexDhGexInit {
    BigInteger e;
    byte[] payload;

    public PacketKexDhGexInit(BigInteger bigInteger) {
        this.e = bigInteger;
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(32);
            typesWriter.writeMPInt(this.e);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
