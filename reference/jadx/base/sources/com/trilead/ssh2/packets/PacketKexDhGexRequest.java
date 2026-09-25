package com.trilead.ssh2.packets;

import com.trilead.ssh2.DHGexParameters;

/* JADX INFO: loaded from: classes2.dex */
public class PacketKexDhGexRequest {
    int max;
    int min;
    int n;
    byte[] payload;

    public PacketKexDhGexRequest(DHGexParameters dHGexParameters) {
        this.min = dHGexParameters.getMin_group_len();
        this.n = dHGexParameters.getPref_group_len();
        this.max = dHGexParameters.getMax_group_len();
    }

    public byte[] getPayload() {
        if (this.payload == null) {
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeByte(34);
            typesWriter.writeUINT32(this.min);
            typesWriter.writeUINT32(this.n);
            typesWriter.writeUINT32(this.max);
            this.payload = typesWriter.getBytes();
        }
        return this.payload;
    }
}
