package org.apache.commons.compress.compressors.lz4;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.zip.CheckedInputStream;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;
import org.apache.commons.io.input.CountingInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class FramedLZ4CompressorInputStream extends CompressorInputStream implements InputStreamStatistics {
    static final int BLOCK_CHECKSUM_MASK = 16;
    static final int BLOCK_INDEPENDENCE_MASK = 32;
    static final int BLOCK_MAX_SIZE_MASK = 112;
    static final int CONTENT_CHECKSUM_MASK = 4;
    static final int CONTENT_SIZE_MASK = 8;
    private static final byte SKIPPABLE_FRAME_PREFIX_BYTE_MASK = 80;
    static final int SUPPORTED_VERSION = 64;
    static final int UNCOMPRESSED_FLAG_MASK = Integer.MIN_VALUE;
    static final int VERSION_MASK = 192;
    private byte[] blockDependencyBuffer;
    private final org.apache.commons.codec.digest.XXHash32 blockHash;
    private final org.apache.commons.codec.digest.XXHash32 contentHash;
    private InputStream currentBlock;
    private final boolean decompressConcatenated;
    private boolean endReached;
    private boolean expectBlockChecksum;
    private boolean expectBlockDependency;
    private boolean expectContentChecksum;
    private boolean inUncompressed;
    private final CountingInputStream inputStream;
    private final byte[] oneByte;
    private final ByteUtils.ByteSupplier supplier;
    static final byte[] LZ4_SIGNATURE = {4, 34, TarConstants.LF_MULTIVOLUME, Ascii.CAN};
    private static final byte[] SKIPPABLE_FRAME_TRAILER = {42, TarConstants.LF_MULTIVOLUME, Ascii.CAN};

    private static boolean isSkippableFrameSignature(byte[] bArr) {
        if ((bArr[0] & SKIPPABLE_FRAME_PREFIX_BYTE_MASK) != 80) {
            return false;
        }
        for (int i = 1; i < 4; i++) {
            if (bArr[i] != SKIPPABLE_FRAME_TRAILER[i - 1]) {
                return false;
            }
        }
        return true;
    }

    public static boolean matches(byte[] bArr, int i) {
        byte[] bArr2 = LZ4_SIGNATURE;
        if (i < bArr2.length) {
            return false;
        }
        if (bArr.length > bArr2.length) {
            bArr = Arrays.copyOf(bArr, bArr2.length);
        }
        return Arrays.equals(bArr, bArr2);
    }

    public FramedLZ4CompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    public FramedLZ4CompressorInputStream(InputStream inputStream, boolean z) throws IOException {
        this.oneByte = new byte[1];
        this.supplier = new ByteUtils.ByteSupplier() { // from class: org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream$$ExternalSyntheticLambda0
            @Override // org.apache.commons.compress.utils.ByteUtils.ByteSupplier
            public final int getAsByte() {
                return this.f$0.readOneByte();
            }
        };
        this.contentHash = new org.apache.commons.codec.digest.XXHash32();
        this.blockHash = new org.apache.commons.codec.digest.XXHash32();
        this.inputStream = new CountingInputStream(inputStream);
        this.decompressConcatenated = z;
        init(true);
    }

    private void appendToBlockDependencyBuffer(byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, this.blockDependencyBuffer.length);
        if (iMin > 0) {
            byte[] bArr2 = this.blockDependencyBuffer;
            int length = bArr2.length - iMin;
            if (length > 0) {
                System.arraycopy(bArr2, iMin, bArr2, 0, length);
            }
            System.arraycopy(bArr, i, this.blockDependencyBuffer, length, iMin);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            InputStream inputStream = this.currentBlock;
            if (inputStream != null) {
                inputStream.close();
                this.currentBlock = null;
            }
        } finally {
            this.inputStream.close();
        }
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        return this.inputStream.getByteCount();
    }

    private void init(boolean z) throws IOException {
        if (readSignature(z)) {
            readFrameDescriptor();
            nextBlock();
        }
    }

    private void maybeFinishCurrentBlock() throws IOException {
        InputStream inputStream = this.currentBlock;
        if (inputStream != null) {
            inputStream.close();
            this.currentBlock = null;
            if (this.expectBlockChecksum) {
                verifyChecksum(this.blockHash, "block");
                this.blockHash.reset();
            }
        }
    }

    private void nextBlock() throws IOException {
        maybeFinishCurrentBlock();
        long jFromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 4);
        boolean z = ((-2147483648L) & jFromLittleEndian) != 0;
        int i = (int) (jFromLittleEndian & 2147483647L);
        if (i == 0) {
            verifyContentChecksum();
            if (!this.decompressConcatenated) {
                this.endReached = true;
                return;
            } else {
                init(false);
                return;
            }
        }
        InputStream boundedInputStream = new BoundedInputStream(this.inputStream, i);
        if (this.expectBlockChecksum) {
            boundedInputStream = new CheckedInputStream(boundedInputStream, this.blockHash);
        }
        if (z) {
            this.inUncompressed = true;
            this.currentBlock = boundedInputStream;
            return;
        }
        this.inUncompressed = false;
        BlockLZ4CompressorInputStream blockLZ4CompressorInputStream = new BlockLZ4CompressorInputStream(boundedInputStream);
        if (this.expectBlockDependency) {
            blockLZ4CompressorInputStream.prefill(this.blockDependencyBuffer);
        }
        this.currentBlock = blockLZ4CompressorInputStream;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.oneByte, 0, 1) == -1) {
            return -1;
        }
        return this.oneByte[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.endReached) {
            return -1;
        }
        int once = readOnce(bArr, i, i2);
        if (once == -1) {
            nextBlock();
            if (!this.endReached) {
                once = readOnce(bArr, i, i2);
            }
        }
        if (once != -1) {
            if (this.expectBlockDependency) {
                appendToBlockDependencyBuffer(bArr, i, once);
            }
            if (this.expectContentChecksum) {
                this.contentHash.update(bArr, i, once);
            }
        }
        return once;
    }

    private void readFrameDescriptor() throws IOException {
        int oneByte = readOneByte();
        if (oneByte == -1) {
            throw new IOException("Premature end of stream while reading frame flags");
        }
        this.contentHash.update(oneByte);
        if ((oneByte & 192) != 64) {
            throw new IOException("Unsupported version " + (oneByte >> 6));
        }
        boolean z = (oneByte & 32) == 0;
        this.expectBlockDependency = z;
        if (z) {
            if (this.blockDependencyBuffer == null) {
                this.blockDependencyBuffer = new byte[65536];
            }
        } else {
            this.blockDependencyBuffer = null;
        }
        this.expectBlockChecksum = (oneByte & 16) != 0;
        boolean z2 = (oneByte & 8) != 0;
        this.expectContentChecksum = (oneByte & 4) != 0;
        int oneByte2 = readOneByte();
        if (oneByte2 == -1) {
            throw new IOException("Premature end of stream while reading frame BD byte");
        }
        this.contentHash.update(oneByte2);
        if (z2) {
            byte[] bArr = new byte[8];
            int fully = IOUtils.readFully(this.inputStream, bArr);
            count(fully);
            if (8 != fully) {
                throw new IOException("Premature end of stream while reading content size");
            }
            this.contentHash.update(bArr, 0, 8);
        }
        int oneByte3 = readOneByte();
        if (oneByte3 == -1) {
            throw new IOException("Premature end of stream while reading frame header checksum");
        }
        int value = (int) ((this.contentHash.getValue() >> 8) & 255);
        this.contentHash.reset();
        if (oneByte3 != value) {
            throw new IOException("Frame header checksum mismatch");
        }
    }

    private int readOnce(byte[] bArr, int i, int i2) throws IOException {
        if (this.inUncompressed) {
            int i3 = this.currentBlock.read(bArr, i, i2);
            count(i3);
            return i3;
        }
        BlockLZ4CompressorInputStream blockLZ4CompressorInputStream = (BlockLZ4CompressorInputStream) this.currentBlock;
        long bytesRead = blockLZ4CompressorInputStream.getBytesRead();
        int i4 = this.currentBlock.read(bArr, i, i2);
        count(blockLZ4CompressorInputStream.getBytesRead() - bytesRead);
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int readOneByte() throws IOException {
        int i = this.inputStream.read();
        if (i == -1) {
            return -1;
        }
        count(1);
        return i & 255;
    }

    private boolean readSignature(boolean z) throws IOException {
        String str = z ? "Not a LZ4 frame stream" : "LZ4 frame stream followed by garbage";
        byte[] bArr = new byte[4];
        int fully = IOUtils.readFully(this.inputStream, bArr);
        count(fully);
        if (fully == 0 && !z) {
            this.endReached = true;
            return false;
        }
        if (4 != fully) {
            throw new IOException(str);
        }
        int iSkipSkippableFrame = skipSkippableFrame(bArr);
        if (iSkipSkippableFrame == 0 && !z) {
            this.endReached = true;
            return false;
        }
        if (4 == iSkipSkippableFrame && matches(bArr, 4)) {
            return true;
        }
        throw new IOException(str);
    }

    private int skipSkippableFrame(byte[] bArr) throws IOException {
        int fully = 4;
        while (fully == 4 && isSkippableFrameSignature(bArr)) {
            long jFromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 4);
            if (jFromLittleEndian < 0) {
                throw new IOException("Found illegal skippable frame with negative size");
            }
            long jSkip = org.apache.commons.io.IOUtils.skip(this.inputStream, jFromLittleEndian);
            count(jSkip);
            if (jFromLittleEndian != jSkip) {
                throw new IOException("Premature end of stream while skipping frame");
            }
            fully = IOUtils.readFully(this.inputStream, bArr);
            count(fully);
        }
        return fully;
    }

    private void verifyChecksum(org.apache.commons.codec.digest.XXHash32 xXHash32, String str) throws IOException {
        byte[] bArr = new byte[4];
        int fully = IOUtils.readFully(this.inputStream, bArr);
        count(fully);
        if (4 != fully) {
            throw new IOException("Premature end of stream while reading " + str + " checksum");
        }
        if (xXHash32.getValue() != ByteUtils.fromLittleEndian(bArr)) {
            throw new IOException(str + " checksum mismatch.");
        }
    }

    private void verifyContentChecksum() throws IOException {
        if (this.expectContentChecksum) {
            verifyChecksum(this.contentHash, "content");
        }
        this.contentHash.reset();
    }
}
