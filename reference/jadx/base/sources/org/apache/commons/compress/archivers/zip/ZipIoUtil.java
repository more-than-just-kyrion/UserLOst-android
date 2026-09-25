package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;

/* JADX INFO: loaded from: classes3.dex */
class ZipIoUtil {
    static void writeFully(SeekableByteChannel seekableByteChannel, ByteBuffer byteBuffer) throws IOException {
        while (byteBuffer.hasRemaining()) {
            int iRemaining = byteBuffer.remaining();
            int iWrite = seekableByteChannel.write(byteBuffer);
            if (iWrite <= 0) {
                throw new IOException("Failed to fully write: channel=" + seekableByteChannel + " length=" + iRemaining + " written=" + iWrite);
            }
        }
    }

    static void writeFullyAt(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        while (byteBuffer.hasRemaining()) {
            int iRemaining = byteBuffer.remaining();
            int iWrite = fileChannel.write(byteBuffer, j);
            if (iWrite <= 0) {
                throw new IOException("Failed to fully write: channel=" + fileChannel + " length=" + iRemaining + " written=" + iWrite);
            }
            j += (long) iWrite;
        }
    }

    private ZipIoUtil() {
    }
}
