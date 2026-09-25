package org.apache.commons.compress.compressors.gzip;

/* JADX INFO: loaded from: classes3.dex */
public class GzipParameters {
    private String comment;
    private String fileName;
    private long modificationTime;
    private int compressionLevel = -1;
    private int operatingSystem = 255;
    private int bufferSize = 512;
    private int deflateStrategy = 0;

    public int getBufferSize() {
        return this.bufferSize;
    }

    public String getComment() {
        return this.comment;
    }

    public int getCompressionLevel() {
        return this.compressionLevel;
    }

    public int getDeflateStrategy() {
        return this.deflateStrategy;
    }

    @Deprecated
    public String getFilename() {
        return this.fileName;
    }

    public String getFileName() {
        return this.fileName;
    }

    public long getModificationTime() {
        return this.modificationTime;
    }

    public int getOperatingSystem() {
        return this.operatingSystem;
    }

    public void setBufferSize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("invalid buffer size: " + i);
        }
        this.bufferSize = i;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public void setCompressionLevel(int i) {
        if (i < -1 || i > 9) {
            throw new IllegalArgumentException("Invalid gzip compression level: " + i);
        }
        this.compressionLevel = i;
    }

    public void setDeflateStrategy(int i) {
        this.deflateStrategy = i;
    }

    @Deprecated
    public void setFilename(String str) {
        this.fileName = str;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setModificationTime(long j) {
        this.modificationTime = j;
    }

    public void setOperatingSystem(int i) {
        this.operatingSystem = i;
    }
}
