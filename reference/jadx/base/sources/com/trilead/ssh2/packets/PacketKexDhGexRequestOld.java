package com.trilead.ssh2.packets;

import com.trilead.ssh2.DHGexParameters;

/* JADX INFO: loaded from: classes2.dex */
public class PacketKexDhGexRequestOld {
    int n;
    byte[] payload;

    public PacketKexDhGexRequestOld(DHGexParameters dHGexParameters) {
        this.n = dHGexParameters.getPref_group_len();
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(30);
            typesWriter.writeUINT32(this.n);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
