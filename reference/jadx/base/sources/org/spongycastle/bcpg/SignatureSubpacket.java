package org.spongycastle.bcpg;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class SignatureSubpacket {
    boolean critical;
    protected byte[] data;
    boolean isLongLength;
    int type;

    protected SignatureSubpacket(int i, boolean z, boolean z2, byte[] bArr) {
        this.type = i;
        this.critical = z;
        this.isLongLength = z2;
        this.data = bArr;
    }

    public int getType() {
        return this.type;
    }

    public boolean isCritical() {
        return this.critical;
    }

    public boolean isLongLength() {
        return this.isLongLength;
    }

    public byte[] getData() {
        return this.data;
    }

    public void encode(OutputStream outputStream) throws IOException {
        int length = this.data.length;
        int i = length + 1;
        if (this.isLongLength) {
            outputStream.write(255);
            outputStream.write((byte) (i >> 24));
            outputStream.write((byte) (i >> 16));
            outputStream.write((byte) (i >> 8));
            outputStream.write((byte) i);
        } else if (i < 192) {
            outputStream.write((byte) i);
        } else if (i <= 8383) {
            int i2 = length - 191;
            outputStream.write((byte) (((i2 >> 8) & 255) + 192));
            outputStream.write((byte) i2);
        } else {
            outputStream.write(255);
            outputStream.write((byte) (i >> 24));
            outputStream.write((byte) (i >> 16));
            outputStream.write((byte) (i >> 8));
            outputStream.write((byte) i);
        }
        if (this.critical) {
            outputStream.write(this.type | 128);
        } else {
            outputStream.write(this.type);
        }
        outputStream.write(this.data);
    }
}
