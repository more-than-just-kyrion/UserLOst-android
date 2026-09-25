package com.trilead.ssh2.packets;

import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class PacketKexDhGexGroup {
    BigInteger g;
    BigInteger p;
    byte[] payload;

    public PacketKexDhGexGroup(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        this.payload = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        TypesReader typesReader = new TypesReader(bArr, i, i2);
        int i3 = typesReader.readByte();
        if (i3 != 31) {
            throw new IllegalArgumentException("This is not a SSH_MSG_KEX_DH_GEX_GROUP! (" + i3 + ")");
        }
        this.p = typesReader.readMPINT();
        this.g = typesReader.readMPINT();
        if (typesReader.remain() != 0) {
            throw new IOException("PADDING IN SSH_MSG_KEX_DH_GEX_GROUP!");
        }
    }

    public BigInteger getG() {
        return this.g;
    }

    public BigInteger getP() {
        return this.p;
    }
}
