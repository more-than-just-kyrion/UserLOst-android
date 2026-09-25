package com.trilead.ssh2.compression;

/* JADX INFO: loaded from: classes2.dex */
public interface ICompressor {
    boolean canCompressPreauth();

    int compress(byte[] bArr, int i, int i2, byte[] bArr2);

    int getBufferSize();

    byte[] uncompress(byte[] bArr, int i, int[] iArr);
}
