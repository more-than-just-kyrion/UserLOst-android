package com.github.luben.zstd;

import com.github.luben.zstd.util.Native;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class ZstdDirectBufferCompressingStreamNoFinalizer implements Closeable, Flushable {
    private int level;
    private final long stream;
    private ByteBuffer target;
    private int consumed = 0;
    private int produced = 0;
    private boolean closed = false;
    private boolean initialized = false;
    private byte[] dict = null;
    private ZstdDictCompress fastDict = null;

    private native long compressDirectByteBuffer(long j, ByteBuffer byteBuffer, int i, int i2, ByteBuffer byteBuffer2, int i3, int i4);

    private static native long createCStream();

    private native long endStream(long j, ByteBuffer byteBuffer, int i, int i2);

    private native long flushStream(long j, ByteBuffer byteBuffer, int i, int i2);

    private static native long freeCStream(long j);

    private native long initCStream(long j, int i);

    private native long initCStreamWithDict(long j, byte[] bArr, int i, int i2);

    private native long initCStreamWithFastDict(long j, ZstdDictCompress zstdDictCompress);

    private static native long recommendedCOutSize();

    protected ByteBuffer flushBuffer(ByteBuffer byteBuffer) throws IOException {
        return byteBuffer;
    }

    static {
        Native.load();
    }

    public ZstdDirectBufferCompressingStreamNoFinalizer(ByteBuffer byteBuffer, int i) throws IOException {
        this.level = Zstd.defaultCompressionLevel();
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("Target buffer should be a direct buffer");
        }
        this.target = byteBuffer;
        this.level = i;
        this.stream = createCStream();
    }

    public static int recommendedOutputBufferSize() {
        return (int) recommendedCOutSize();
    }

    public ZstdDirectBufferCompressingStreamNoFinalizer setDict(byte[] bArr) {
        if (this.initialized) {
            throw new IllegalStateException("Change of parameter on initialized stream");
        }
        this.dict = bArr;
        this.fastDict = null;
        return this;
    }

    public ZstdDirectBufferCompressingStreamNoFinalizer setDict(ZstdDictCompress zstdDictCompress) {
        if (this.initialized) {
            throw new IllegalStateException("Change of parameter on initialized stream");
        }
        this.dict = null;
        this.fastDict = zstdDictCompress;
        return this;
    }

    public void compress(ByteBuffer byteBuffer) throws IOException {
        long jInitCStream;
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("Source buffer should be a direct buffer");
        }
        if (this.closed) {
            throw new IOException("Stream closed");
        }
        if (!this.initialized) {
            ZstdDictCompress zstdDictCompress = this.fastDict;
            if (zstdDictCompress != null) {
                zstdDictCompress.acquireSharedLock();
                try {
                    jInitCStream = initCStreamWithFastDict(this.stream, zstdDictCompress);
                    zstdDictCompress.releaseSharedLock();
                } catch (Throwable th) {
                    zstdDictCompress.releaseSharedLock();
                    throw th;
                }
            } else {
                byte[] bArr = this.dict;
                if (bArr != null) {
                    jInitCStream = initCStreamWithDict(this.stream, bArr, bArr.length, this.level);
                } else {
                    jInitCStream = initCStream(this.stream, this.level);
                }
            }
            if (Zstd.isError(jInitCStream)) {
                throw new ZstdIOException(jInitCStream);
            }
            this.initialized = true;
        }
        while (byteBuffer.hasRemaining()) {
            if (!this.target.hasRemaining()) {
                ByteBuffer byteBufferFlushBuffer = flushBuffer(this.target);
                this.target = byteBufferFlushBuffer;
                if (!byteBufferFlushBuffer.isDirect()) {
                    throw new IllegalArgumentException("Target buffer should be a direct buffer");
                }
                if (!this.target.hasRemaining()) {
                    throw new IOException("The target buffer has no more space, even after flushing, and there are still bytes to compress");
                }
            }
            long j = this.stream;
            ByteBuffer byteBuffer2 = this.target;
            long jCompressDirectByteBuffer = compressDirectByteBuffer(j, byteBuffer2, byteBuffer2.position(), this.target.remaining(), byteBuffer, byteBuffer.position(), byteBuffer.remaining());
            if (Zstd.isError(jCompressDirectByteBuffer)) {
                throw new ZstdIOException(jCompressDirectByteBuffer);
            }
            ByteBuffer byteBuffer3 = this.target;
            byteBuffer3.position(byteBuffer3.position() + this.produced);
            byteBuffer.position(byteBuffer.position() + this.consumed);
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        long jFlushStream;
        if (this.closed) {
            throw new IOException("Already closed");
        }
        if (this.initialized) {
            do {
                long j = this.stream;
                ByteBuffer byteBuffer = this.target;
                jFlushStream = flushStream(j, byteBuffer, byteBuffer.position(), this.target.remaining());
                if (Zstd.isError(jFlushStream)) {
                    throw new ZstdIOException(jFlushStream);
                }
                ByteBuffer byteBuffer2 = this.target;
                byteBuffer2.position(byteBuffer2.position() + this.produced);
                ByteBuffer byteBufferFlushBuffer = flushBuffer(this.target);
                this.target = byteBufferFlushBuffer;
                if (!byteBufferFlushBuffer.isDirect()) {
                    throw new IllegalArgumentException("Target buffer should be a direct buffer");
                }
                if (jFlushStream > 0 && !this.target.hasRemaining()) {
                    throw new IOException("The target buffer has no more space, even after flushing, and there are still bytes to compress");
                }
            } while (jFlushStream > 0);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long jEndStream;
        if (this.closed) {
            return;
        }
        try {
            if (this.initialized) {
                do {
                    long j = this.stream;
                    ByteBuffer byteBuffer = this.target;
                    jEndStream = endStream(j, byteBuffer, byteBuffer.position(), this.target.remaining());
                    if (Zstd.isError(jEndStream)) {
                        throw new ZstdIOException(jEndStream);
                    }
                    ByteBuffer byteBuffer2 = this.target;
                    byteBuffer2.position(byteBuffer2.position() + this.produced);
                    ByteBuffer byteBufferFlushBuffer = flushBuffer(this.target);
                    this.target = byteBufferFlushBuffer;
                    if (!byteBufferFlushBuffer.isDirect()) {
                        throw new IllegalArgumentException("Target buffer should be a direct buffer");
                    }
                    if (jEndStream > 0 && !this.target.hasRemaining()) {
                        throw new IOException("The target buffer has no more space, even after flushing, and there are still bytes to compress");
                    }
                } while (jEndStream > 0);
            }
            freeCStream(this.stream);
            this.closed = true;
            this.initialized = false;
            this.target = null;
        } catch (Throwable th) {
            freeCStream(this.stream);
            this.closed = true;
            this.initialized = false;
            this.target = null;
            throw th;
        }
    }
}
