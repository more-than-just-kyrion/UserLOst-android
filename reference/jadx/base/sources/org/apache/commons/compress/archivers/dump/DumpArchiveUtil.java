package org.apache.commons.compress.archivers.dump;

import java.io.IOException;
import java.util.Arrays;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.utils.ByteUtils;

/* JADX INFO: loaded from: classes3.dex */
final class DumpArchiveUtil {
    public static int calculateChecksum(byte[] bArr) {
        int iConvert32 = 0;
        for (int i = 0; i < 256; i++) {
            iConvert32 += convert32(bArr, i * 4);
        }
        return DumpArchiveConstants.CHECKSUM - (iConvert32 - convert32(bArr, 28));
    }

    public static int convert16(byte[] bArr, int i) {
        return (int) ByteUtils.fromLittleEndian(bArr, i, 2);
    }

    public static int convert32(byte[] bArr, int i) {
        return (int) ByteUtils.fromLittleEndian(bArr, i, 4);
    }

    public static long convert64(byte[] bArr, int i) {
        return ByteUtils.fromLittleEndian(bArr, i, 8);
    }

    static String decode(ZipEncoding zipEncoding, byte[] bArr, int i, int i2) throws IOException {
        int i3 = i2 + i;
        if (i > i3) {
            throw new IOException("Invalid offset/length combination");
        }
        return zipEncoding.decode(Arrays.copyOfRange(bArr, i, i3));
    }

    public static int getIno(byte[] bArr) {
        return convert32(bArr, 20);
    }

    public static boolean verify(byte[] bArr) {
        return bArr != null && convert32(bArr, 24) == 60012 && convert32(bArr, 28) == calculateChecksum(bArr);
    }

    private DumpArchiveUtil() {
    }
}
