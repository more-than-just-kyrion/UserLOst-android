package com.termux.terminal;

/* JADX INFO: loaded from: classes2.dex */
final class ByteQueue {
    private final byte[] mBuffer;
    private int mHead;
    private boolean mOpen = true;
    private int mStoredBytes;

    public ByteQueue(int i) {
        this.mBuffer = new byte[i];
    }

    public synchronized void close() {
        this.mOpen = false;
        notify();
    }

    public synchronized int read(byte[] bArr, boolean z) {
        int i;
        while (true) {
            i = this.mStoredBytes;
            if (i != 0 || !this.mOpen) {
                break;
            }
            if (!z) {
                return 0;
            }
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
        if (!this.mOpen) {
            return -1;
        }
        int length = this.mBuffer.length;
        boolean z2 = length == i;
        int length2 = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (length2 > 0) {
            int i4 = this.mStoredBytes;
            if (i4 <= 0) {
                break;
            }
            int iMin = Math.min(length2, Math.min(length - this.mHead, i4));
            System.arraycopy(this.mBuffer, this.mHead, bArr, i3, iMin);
            int i5 = this.mHead + iMin;
            this.mHead = i5;
            if (i5 >= length) {
                this.mHead = 0;
            }
            this.mStoredBytes -= iMin;
            length2 -= iMin;
            i3 += iMin;
            i2 += iMin;
        }
        if (z2) {
            notify();
        }
        return i2;
    }

    public boolean write(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        if (i2 + i > bArr.length) {
            throw new IllegalArgumentException("length + offset > buffer.length");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("length <= 0");
        }
        int length = this.mBuffer.length;
        synchronized (this) {
            while (true) {
                boolean z = true;
                if (i2 <= 0) {
                    return true;
                }
                while (true) {
                    try {
                        i3 = this.mStoredBytes;
                        if (length != i3 || !this.mOpen) {
                            break;
                        }
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (!this.mOpen) {
                    return false;
                }
                if (i3 != 0) {
                    z = false;
                }
                int iMin = Math.min(i2, length - i3);
                i2 -= iMin;
                while (iMin > 0) {
                    int i5 = this.mHead;
                    int i6 = this.mStoredBytes + i5;
                    if (i6 >= length) {
                        i6 -= length;
                        i4 = i5 - i6;
                    } else {
                        i4 = length - i6;
                    }
                    int iMin2 = Math.min(i4, iMin);
                    System.arraycopy(bArr, i, this.mBuffer, i6, iMin2);
                    i += iMin2;
                    iMin -= iMin2;
                    this.mStoredBytes += iMin2;
                }
                if (z) {
                    notify();
                }
            }
        }
    }
}
