package org.apache.commons.compress.compressors.deflate;

/* JADX INFO: loaded from: classes3.dex */
public class DeflateParameters {
    static final int MAX_LEVEL = 9;
    static final int MIN_LEVEL = 0;
    private boolean zlibHeader = true;
    private int compressionLevel = -1;

    public int getCompressionLevel() {
        return this.compressionLevel;
    }

    public void setCompressionLevel(int i) {
        if (i < 0 || i > 9) {
            throw new IllegalArgumentException("Invalid Deflate compression level: " + i);
        }
        this.compressionLevel = i;
    }

    public void setWithZlibHeader(boolean z) {
        this.zlibHeader = z;
    }

    public boolean withZlibHeader() {
        return this.zlibHeader;
    }
}
