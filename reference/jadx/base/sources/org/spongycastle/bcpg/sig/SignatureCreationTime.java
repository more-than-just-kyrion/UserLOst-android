package org.spongycastle.bcpg.sig;

import java.util.Date;
import org.spongycastle.bcpg.SignatureSubpacket;

/* JADX INFO: loaded from: classes3.dex */
public class SignatureCreationTime extends SignatureSubpacket {
    protected static byte[] timeToBytes(Date date) {
        long time = date.getTime() / 1000;
        return new byte[]{(byte) (time >> 24), (byte) (time >> 16), (byte) (time >> 8), (byte) time};
    }

    public SignatureCreationTime(boolean z, boolean z2, byte[] bArr) {
        super(2, z, z2, bArr);
    }

    public SignatureCreationTime(boolean z, Date date) {
        super(2, z, false, timeToBytes(date));
    }

    public Date getTime() {
        return new Date(((((long) (this.data[0] & 255)) << 24) | ((long) ((this.data[1] & 255) << 16)) | ((long) ((this.data[2] & 255) << 8)) | ((long) (this.data[3] & 255))) * 1000);
    }
}
