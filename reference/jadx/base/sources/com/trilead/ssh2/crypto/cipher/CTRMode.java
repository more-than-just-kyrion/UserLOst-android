package com.trilead.ssh2.crypto.cipher;

/* JADX INFO: loaded from: classes2.dex */
public class CTRMode implements BlockCipher {
    byte[] X;
    byte[] Xenc;
    BlockCipher bc;
    int blockSize;
    int count = 0;
    boolean doEncrypt;

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public void init(boolean z, byte[] bArr, byte[] bArr2) {
    }

    public CTRMode(BlockCipher blockCipher, byte[] bArr, boolean z) throws IllegalArgumentException {
        this.bc = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.doEncrypt = z;
        if (blockSize != bArr.length) {
            throw new IllegalArgumentException("IV must be " + this.blockSize + " bytes long! (currently " + bArr.length + ")");
        }
        byte[] bArr2 = new byte[blockSize];
        this.X = bArr2;
        this.Xenc = new byte[blockSize];
        System.arraycopy(bArr, 0, bArr2, 0, blockSize);
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public final int getBlockSize() {
        return this.blockSize;
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public final void transformBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4 = 0;
        this.bc.transformBlock(this.X, 0, this.Xenc, 0);
        while (true) {
            i3 = this.blockSize;
            if (i4 >= i3) {
                break;
            }
            bArr2[i2 + i4] = (byte) (bArr[i + i4] ^ this.Xenc[i4]);
            i4++;
        }
        for (int i5 = i3 - 1; i5 >= 0; i5--) {
            byte[] bArr3 = this.X;
            byte b = (byte) (bArr3[i5] + 1);
            bArr3[i5] = b;
            if (b != 0) {
                return;
            }
        }
    }
}
