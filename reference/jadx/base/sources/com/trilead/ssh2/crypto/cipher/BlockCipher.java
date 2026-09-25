package com.trilead.ssh2.crypto.cipher;

/* JADX INFO: loaded from: classes2.dex */
public interface BlockCipher {
    int getBlockSize();

    void init(boolean z, byte[] bArr, byte[] bArr2) throws IllegalArgumentException;

    void transformBlock(byte[] bArr, int i, byte[] bArr2, int i2);
}
