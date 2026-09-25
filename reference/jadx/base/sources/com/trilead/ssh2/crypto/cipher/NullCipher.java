package com.trilead.ssh2.crypto.cipher;

/* JADX INFO: loaded from: classes2.dex */
public class NullCipher implements BlockCipher {
    private int blockSize;

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public void init(boolean z, byte[] bArr, byte[] bArr2) {
    }

    public NullCipher() {
        this.blockSize = 8;
    }

    public NullCipher(int i) {
        this.blockSize = i;
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public int getBlockSize() {
        return this.blockSize;
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public void transformBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        System.arraycopy(bArr, i, bArr2, i2, this.blockSize);
    }
}
