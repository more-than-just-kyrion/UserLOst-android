package org.apache.commons.compress.archivers.zip;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import org.apache.commons.compress.utils.FileNameUtils;

/* JADX INFO: loaded from: classes3.dex */
final class ZipSplitOutputStream extends RandomAccessOutputStream {
    private static final long ZIP_SEGMENT_MAX_SIZE = 4294967295L;
    private static final long ZIP_SEGMENT_MIN_SIZE = 65536;
    private FileChannel currentChannel;
    private long currentSplitSegmentBytesWritten;
    private int currentSplitSegmentIndex;
    private final List<Long> diskToPosition;
    private boolean finished;
    private FileRandomAccessOutputStream outputStream;
    private final TreeMap<Long, Path> positionToFiles;
    private final byte[] singleByte;
    private final long splitSize;
    private long totalPosition;
    private Path zipFile;

    ZipSplitOutputStream(File file, long j) throws IOException, IllegalArgumentException {
        this(file.toPath(), j);
    }

    ZipSplitOutputStream(Path path, long j) throws IOException, IllegalArgumentException {
        this.singleByte = new byte[1];
        ArrayList arrayList = new ArrayList();
        this.diskToPosition = arrayList;
        TreeMap<Long, Path> treeMap = new TreeMap<>();
        this.positionToFiles = treeMap;
        if (j < 65536 || j > 4294967295L) {
            throw new IllegalArgumentException("Zip split segment size should between 64K and 4,294,967,295");
        }
        this.zipFile = path;
        this.splitSize = j;
        FileRandomAccessOutputStream fileRandomAccessOutputStream = new FileRandomAccessOutputStream(path);
        this.outputStream = fileRandomAccessOutputStream;
        this.currentChannel = fileRandomAccessOutputStream.channel();
        treeMap.put(0L, this.zipFile);
        arrayList.add(0L);
        writeZipSplitSignature();
    }

    public long calculateDiskPosition(long j, long j2) throws IOException {
        if (j >= 2147483647L) {
            throw new IOException("Disk number exceeded internal limits: limit=2147483647 requested=" + j);
        }
        return this.diskToPosition.get((int) j).longValue() + j2;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.finished) {
            return;
        }
        finish();
    }

    private Path createNewSplitSegmentFile(Integer num) throws IOException {
        Path splitSegmentFileName = getSplitSegmentFileName(num);
        if (Files.exists(splitSegmentFileName, new LinkOption[0])) {
            throw new IOException("split ZIP segment " + splitSegmentFileName + " already exists");
        }
        return splitSegmentFileName;
    }

    private void finish() throws IOException {
        if (this.finished) {
            throw new IOException("This archive has already been finished");
        }
        String baseName = FileNameUtils.getBaseName(this.zipFile);
        this.outputStream.close();
        Path path = this.zipFile;
        Files.move(path, path.resolveSibling(baseName + ".zip"), StandardCopyOption.ATOMIC_MOVE);
        this.finished = true;
    }

    public long getCurrentSplitSegmentBytesWritten() {
        return this.currentSplitSegmentBytesWritten;
    }

    public int getCurrentSplitSegmentIndex() {
        return this.currentSplitSegmentIndex;
    }

    private Path getSplitSegmentFileName(Integer num) {
        int iIntValue = num == null ? this.currentSplitSegmentIndex + 2 : num.intValue();
        String baseName = FileNameUtils.getBaseName(this.zipFile);
        StringBuilder sb = new StringBuilder(".z");
        if (iIntValue <= 9) {
            sb.append("0").append(iIntValue);
        } else {
            sb.append(iIntValue);
        }
        Path parent = this.zipFile.getParent();
        Objects.nonNull(parent);
        return this.zipFile.getFileSystem().getPath(parent != null ? parent.toAbsolutePath().toString() : ".", baseName + sb.toString());
    }

    private void openNewSplitSegment() throws IOException {
        if (this.currentSplitSegmentIndex == 0) {
            this.outputStream.close();
            Path pathCreateNewSplitSegmentFile = createNewSplitSegmentFile(1);
            Files.move(this.zipFile, pathCreateNewSplitSegmentFile, StandardCopyOption.ATOMIC_MOVE);
            this.positionToFiles.put(0L, pathCreateNewSplitSegmentFile);
        }
        Path pathCreateNewSplitSegmentFile2 = createNewSplitSegmentFile(null);
        this.outputStream.close();
        FileRandomAccessOutputStream fileRandomAccessOutputStream = new FileRandomAccessOutputStream(pathCreateNewSplitSegmentFile2);
        this.outputStream = fileRandomAccessOutputStream;
        this.currentChannel = fileRandomAccessOutputStream.channel();
        this.currentSplitSegmentBytesWritten = 0L;
        this.zipFile = pathCreateNewSplitSegmentFile2;
        this.currentSplitSegmentIndex++;
        this.diskToPosition.add(Long.valueOf(this.totalPosition));
        this.positionToFiles.put(Long.valueOf(this.totalPosition), pathCreateNewSplitSegmentFile2);
    }

    @Override // org.apache.commons.compress.archivers.zip.RandomAccessOutputStream
    public long position() {
        return this.totalPosition;
    }

    public void prepareToWriteUnsplittableContent(long j) throws IOException, IllegalArgumentException {
        long j2 = this.splitSize;
        if (j > j2) {
            throw new IllegalArgumentException("The unsplittable content size is bigger than the split segment size");
        }
        if (j2 - this.currentSplitSegmentBytesWritten < j) {
            openNewSplitSegment();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i2 <= 0) {
            return;
        }
        long j = this.currentSplitSegmentBytesWritten;
        long j2 = this.splitSize;
        if (j >= j2) {
            openNewSplitSegment();
            write(bArr, i, i2);
            return;
        }
        long j3 = i2;
        if (j + j3 > j2) {
            int i3 = ((int) j2) - ((int) j);
            write(bArr, i, i3);
            openNewSplitSegment();
            write(bArr, i + i3, i2 - i3);
            return;
        }
        this.outputStream.write(bArr, i, i2);
        this.currentSplitSegmentBytesWritten += j3;
        this.totalPosition += j3;
    }

    @Override // org.apache.commons.compress.archivers.zip.RandomAccessOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.singleByte;
        bArr[0] = (byte) (i & 255);
        write(bArr);
    }

    @Override // org.apache.commons.compress.archivers.zip.RandomAccessOutputStream
    public void writeFully(byte[] bArr, int i, int i2, long j) throws IOException {
        while (i2 > 0) {
            Map.Entry<Long, Path> entryFloorEntry = this.positionToFiles.floorEntry(Long.valueOf(j));
            Long lHigherKey = this.positionToFiles.higherKey(Long.valueOf(j));
            if (lHigherKey == null) {
                ZipIoUtil.writeFullyAt(this.currentChannel, ByteBuffer.wrap(bArr, i, i2), j - entryFloorEntry.getKey().longValue());
                j += (long) i2;
                i += i2;
                i2 = 0;
            } else {
                long j2 = j + ((long) i2);
                if (j2 <= lHigherKey.longValue()) {
                    writeToSegment(entryFloorEntry.getValue(), j - entryFloorEntry.getKey().longValue(), bArr, i, i2);
                    i += i2;
                    i2 = 0;
                    j = j2;
                } else {
                    int intExact = Math.toIntExact(lHigherKey.longValue() - j);
                    writeToSegment(entryFloorEntry.getValue(), j - entryFloorEntry.getKey().longValue(), bArr, i, intExact);
                    j += (long) intExact;
                    i += intExact;
                    i2 -= intExact;
                }
            }
        }
    }

    private void writeToSegment(Path path, long j, byte[] bArr, int i, int i2) throws IOException {
        FileChannel fileChannelOpen = FileChannel.open(path, StandardOpenOption.WRITE);
        try {
            ZipIoUtil.writeFullyAt(fileChannelOpen, ByteBuffer.wrap(bArr, i, i2), j);
            if (fileChannelOpen != null) {
                fileChannelOpen.close();
            }
        } catch (Throwable th) {
            if (fileChannelOpen != null) {
                try {
                    fileChannelOpen.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private void writeZipSplitSignature() throws IOException {
        this.outputStream.write(ZipArchiveOutputStream.DD_SIG);
        this.currentSplitSegmentBytesWritten += (long) ZipArchiveOutputStream.DD_SIG.length;
        this.totalPosition += (long) ZipArchiveOutputStream.DD_SIG.length;
    }
}
