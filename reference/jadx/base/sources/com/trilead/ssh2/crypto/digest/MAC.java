package com.trilead.ssh2.crypto.digest;

/* JADX INFO: loaded from: classes2.dex */
public interface MAC {
    void getMac(byte[] bArr, int i);

    void initMac(int i);

    boolean isEncryptThenMac();

    int size();

    void update(byte[] bArr, int i, int i2);
}
