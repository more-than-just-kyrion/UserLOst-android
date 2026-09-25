package com.iiordanov.util;

/* JADX INFO: loaded from: classes2.dex */
public class ByteBufferStack {
    public static final int MAX_DEPTH = 20;
    public static final int MAX_SIZE = 1048;
    private byte[] m_buffer;
    private int m_depth;
    private int m_max_depth;
    private int m_max_size;
    private int[] m_offsets;

    public ByteBufferStack(int i, int i2) {
        this.m_depth = 0;
        this.m_max_depth = i;
        this.m_max_size = i2;
        this.m_offsets = new int[i];
        this.m_buffer = new byte[i2];
    }

    public ByteBufferStack() {
        this(20, MAX_SIZE);
    }

    public byte[] getBuffer() {
        return this.m_buffer;
    }

    public int getOffset() {
        return this.m_offsets[this.m_depth];
    }

    public int reserve(int i) {
        if (i < 0 || this.m_max_size + i < 0) {
            throw new IllegalArgumentException("Count must by greater than 0");
        }
        int i2 = this.m_depth;
        int i3 = this.m_max_depth;
        if (i2 == i3) {
            int i4 = i3 * 2;
            this.m_max_depth = i4;
            int[] iArr = new int[i4];
            System.arraycopy(this.m_offsets, 0, iArr, 0, i2);
            this.m_offsets = iArr;
        }
        int[] iArr2 = this.m_offsets;
        int i5 = this.m_depth;
        int i6 = iArr2[i5];
        int i7 = i + i6;
        this.m_depth = i5 + 1;
        iArr2[i5] = i7;
        int i8 = this.m_max_size;
        if (i7 > i8) {
            int iMax = Math.max(i8 * 2, i7);
            this.m_max_size = iMax;
            byte[] bArr = new byte[iMax];
            System.arraycopy(this.m_buffer, 0, bArr, 0, i6);
            this.m_buffer = bArr;
        }
        return i6;
    }

    public void release() {
        int i = this.m_depth;
        if (i < 1) {
            throw new IllegalStateException("release() without reserve()");
        }
        this.m_depth = i - 1;
    }
}
