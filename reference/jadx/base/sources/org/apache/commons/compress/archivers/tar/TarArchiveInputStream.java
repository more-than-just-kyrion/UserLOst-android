package org.apache.commons.compress.archivers.tar;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class TarArchiveInputStream extends ArchiveInputStream<TarArchiveEntry> {
    private static final int SMALL_BUFFER_SIZE = 256;
    private boolean atEof;
    private final int blockSize;
    private TarArchiveEntry currEntry;
    private int currentSparseInputStreamIndex;
    private long entryOffset;
    private long entrySize;
    private Map<String, String> globalPaxHeaders;
    private final List<TarArchiveStructSparse> globalSparseHeaders;
    private final boolean lenient;
    private final byte[] recordBuffer;
    private final byte[] smallBuf;
    private List<InputStream> sparseInputStreams;
    private final ZipEncoding zipEncoding;

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < 265) {
            return false;
        }
        if (ArchiveUtils.matchAsciiBuffer("ustar\u0000", bArr, 257, 6) && ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_POSIX, bArr, 263, 2)) {
            return true;
        }
        if (ArchiveUtils.matchAsciiBuffer(TarConstants.MAGIC_GNU, bArr, 257, 6) && (ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_GNU_SPACE, bArr, 263, 2) || ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_GNU_ZERO, bArr, 263, 2))) {
            return true;
        }
        return ArchiveUtils.matchAsciiBuffer("ustar\u0000", bArr, 257, 6) && ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_ANT, bArr, 263, 2);
    }

    public TarArchiveInputStream(InputStream inputStream) {
        this(inputStream, 10240, 512);
    }

    public TarArchiveInputStream(InputStream inputStream, boolean z) {
        this(inputStream, 10240, 512, null, z);
    }

    public TarArchiveInputStream(InputStream inputStream, int i) {
        this(inputStream, i, 512);
    }

    public TarArchiveInputStream(InputStream inputStream, int i, int i2) {
        this(inputStream, i, i2, null);
    }

    public TarArchiveInputStream(InputStream inputStream, int i, int i2, String str) {
        this(inputStream, i, i2, str, false);
    }

    public TarArchiveInputStream(InputStream inputStream, int i, int i2, String str, boolean z) {
        super(inputStream, str);
        this.smallBuf = new byte[256];
        this.globalPaxHeaders = new HashMap();
        this.globalSparseHeaders = new ArrayList();
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(str);
        this.recordBuffer = new byte[i2];
        this.blockSize = i;
        this.lenient = z;
    }

    public TarArchiveInputStream(InputStream inputStream, int i, String str) {
        this(inputStream, i, 512, str);
    }

    public TarArchiveInputStream(InputStream inputStream, String str) {
        this(inputStream, 10240, 512, str);
    }

    private void applyPaxHeadersToCurrentEntry(Map<String, String> map, List<TarArchiveStructSparse> list) throws IOException {
        this.currEntry.updateEntryFromPaxHeaders(map);
        this.currEntry.setSparseHeaders(list);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        if (isDirectory()) {
            return 0;
        }
        long realSize = this.currEntry.getRealSize() - this.entryOffset;
        if (realSize > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) realSize;
    }

    private void buildSparseInputStreams() throws IOException {
        this.currentSparseInputStreamIndex = -1;
        this.sparseInputStreams = new ArrayList();
        List<TarArchiveStructSparse> orderedSparseHeaders = this.currEntry.getOrderedSparseHeaders();
        TarArchiveSparseZeroInputStream tarArchiveSparseZeroInputStream = new TarArchiveSparseZeroInputStream();
        long offset = 0;
        for (TarArchiveStructSparse tarArchiveStructSparse : orderedSparseHeaders) {
            long offset2 = tarArchiveStructSparse.getOffset() - offset;
            if (offset2 < 0) {
                throw new IOException("Corrupted struct sparse detected");
            }
            if (offset2 > 0) {
                this.sparseInputStreams.add(new BoundedInputStream(tarArchiveSparseZeroInputStream, tarArchiveStructSparse.getOffset() - offset));
            }
            if (tarArchiveStructSparse.getNumbytes() > 0) {
                this.sparseInputStreams.add(new BoundedInputStream(this.in, tarArchiveStructSparse.getNumbytes()));
            }
            offset = tarArchiveStructSparse.getOffset() + tarArchiveStructSparse.getNumbytes();
        }
        if (this.sparseInputStreams.isEmpty()) {
            return;
        }
        this.currentSparseInputStreamIndex = 0;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        return archiveEntry instanceof TarArchiveEntry;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        List<InputStream> list = this.sparseInputStreams;
        if (list != null) {
            Iterator<InputStream> it = list.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
        }
        this.in.close();
    }

    private void consumeRemainderOfLastBlock() throws IOException {
        long bytesRead = getBytesRead() % ((long) this.blockSize);
        if (bytesRead > 0) {
            count(IOUtils.skip(this.in, ((long) this.blockSize) - bytesRead));
        }
    }

    private long getActuallySkipped(long j, long j2, long j3) throws IOException {
        if (this.in instanceof FileInputStream) {
            j2 = Math.min(j2, j);
        }
        if (j2 == j3) {
            return j2;
        }
        throw new IOException("Truncated TAR archive");
    }

    public TarArchiveEntry getCurrentEntry() {
        return this.currEntry;
    }

    protected byte[] getLongNameData() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = read(this.smallBuf);
            if (i < 0) {
                break;
            }
            byteArrayOutputStream.write(this.smallBuf, 0, i);
        }
        getNextEntry();
        if (this.currEntry == null) {
            return null;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        while (length > 0 && byteArray[length - 1] == 0) {
            length--;
        }
        return length != byteArray.length ? Arrays.copyOf(byteArray, length) : byteArray;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public TarArchiveEntry getNextEntry() throws IOException {
        return getNextTarEntry();
    }

    @Deprecated
    public TarArchiveEntry getNextTarEntry() throws IOException {
        if (isAtEOF()) {
            return null;
        }
        if (this.currEntry != null) {
            IOUtils.skip(this, Long.MAX_VALUE);
            skipRecordPadding();
        }
        byte[] record = getRecord();
        if (record == null) {
            this.currEntry = null;
            return null;
        }
        try {
            TarArchiveEntry tarArchiveEntry = new TarArchiveEntry(this.globalPaxHeaders, record, this.zipEncoding, this.lenient);
            this.currEntry = tarArchiveEntry;
            this.entryOffset = 0L;
            this.entrySize = tarArchiveEntry.getSize();
            if (this.currEntry.isGNULongLinkEntry()) {
                byte[] longNameData = getLongNameData();
                if (longNameData == null) {
                    return null;
                }
                this.currEntry.setLinkName(this.zipEncoding.decode(longNameData));
            }
            if (this.currEntry.isGNULongNameEntry()) {
                byte[] longNameData2 = getLongNameData();
                if (longNameData2 == null) {
                    return null;
                }
                String strDecode = this.zipEncoding.decode(longNameData2);
                this.currEntry.setName(strDecode);
                if (this.currEntry.isDirectory() && !strDecode.endsWith("/")) {
                    this.currEntry.setName(strDecode + "/");
                }
            }
            if (this.currEntry.isGlobalPaxHeader()) {
                readGlobalPaxHeaders();
            }
            try {
                if (this.currEntry.isPaxHeader()) {
                    paxHeaders();
                } else if (!this.globalPaxHeaders.isEmpty()) {
                    applyPaxHeadersToCurrentEntry(this.globalPaxHeaders, this.globalSparseHeaders);
                }
                if (this.currEntry.isOldGNUSparse()) {
                    readOldGNUSparse();
                }
                this.entrySize = this.currEntry.getSize();
                return this.currEntry;
            } catch (NumberFormatException e) {
                throw new IOException("Error detected parsing the pax header", e);
            }
        } catch (IllegalArgumentException e2) {
            throw new IOException("Error detected parsing the header", e2);
        }
    }

    private byte[] getRecord() throws IOException {
        byte[] record = readRecord();
        setAtEOF(isEOFRecord(record));
        if (!isAtEOF() || record == null) {
            return record;
        }
        tryToConsumeSecondEOFRecord();
        consumeRemainderOfLastBlock();
        return null;
    }

    public int getRecordSize() {
        return this.recordBuffer.length;
    }

    protected final boolean isAtEOF() {
        return this.atEof;
    }

    private boolean isDirectory() {
        TarArchiveEntry tarArchiveEntry = this.currEntry;
        return tarArchiveEntry != null && tarArchiveEntry.isDirectory();
    }

    protected boolean isEOFRecord(byte[] bArr) {
        return bArr == null || ArchiveUtils.isArrayZero(bArr, getRecordSize());
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
    }

    private void paxHeaders() throws IOException {
        ArrayList arrayList = new ArrayList();
        Map<String, String> paxHeaders = TarUtils.parsePaxHeaders(this, arrayList, this.globalPaxHeaders, this.entrySize);
        if (paxHeaders.containsKey("GNU.sparse.map")) {
            arrayList = new ArrayList(TarUtils.parseFromPAX01SparseHeaders(paxHeaders.get("GNU.sparse.map")));
        }
        getNextEntry();
        if (this.currEntry == null) {
            throw new IOException("premature end of tar archive. Didn't find any entry after PAX header.");
        }
        applyPaxHeadersToCurrentEntry(paxHeaders, arrayList);
        if (this.currEntry.isPaxGNU1XSparse()) {
            this.currEntry.setSparseHeaders(TarUtils.parsePAX1XSparseHeaders(this.in, getRecordSize()));
        }
        buildSparseInputStreams();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int sparse;
        if (i2 == 0) {
            return 0;
        }
        if (isAtEOF() || isDirectory()) {
            return -1;
        }
        TarArchiveEntry tarArchiveEntry = this.currEntry;
        if (tarArchiveEntry == null) {
            throw new IllegalStateException("No current tar entry");
        }
        if (this.entryOffset >= tarArchiveEntry.getRealSize()) {
            return -1;
        }
        int iMin = Math.min(i2, available());
        if (this.currEntry.isSparse()) {
            sparse = readSparse(bArr, i, iMin);
        } else {
            sparse = this.in.read(bArr, i, iMin);
        }
        if (sparse != -1) {
            count(sparse);
            this.entryOffset += (long) sparse;
        } else {
            if (iMin > 0) {
                throw new IOException("Truncated TAR archive");
            }
            setAtEOF(true);
        }
        return sparse;
    }

    private void readGlobalPaxHeaders() throws IOException {
        this.globalPaxHeaders = TarUtils.parsePaxHeaders(this, this.globalSparseHeaders, this.globalPaxHeaders, this.entrySize);
        getNextEntry();
        if (this.currEntry == null) {
            throw new IOException("Error detected parsing the pax header");
        }
    }

    private void readOldGNUSparse() throws IOException {
        TarArchiveSparseEntry tarArchiveSparseEntry;
        if (this.currEntry.isExtended()) {
            do {
                byte[] record = getRecord();
                if (record == null) {
                    throw new IOException("premature end of tar archive. Didn't find extended_header after header with extended flag.");
                }
                tarArchiveSparseEntry = new TarArchiveSparseEntry(record);
                this.currEntry.getSparseHeaders().addAll(tarArchiveSparseEntry.getSparseHeaders());
            } while (tarArchiveSparseEntry.isExtended());
        }
        buildSparseInputStreams();
    }

    protected byte[] readRecord() throws IOException {
        int fully = IOUtils.readFully(this.in, this.recordBuffer);
        count(fully);
        if (fully != getRecordSize()) {
            return null;
        }
        return this.recordBuffer;
    }

    private int readSparse(byte[] bArr, int i, int i2) throws IOException {
        List<InputStream> list = this.sparseInputStreams;
        if (list == null || list.isEmpty()) {
            return this.in.read(bArr, i, i2);
        }
        if (this.currentSparseInputStreamIndex >= this.sparseInputStreams.size()) {
            return -1;
        }
        int i3 = this.sparseInputStreams.get(this.currentSparseInputStreamIndex).read(bArr, i, i2);
        if (this.currentSparseInputStreamIndex == this.sparseInputStreams.size() - 1) {
            return i3;
        }
        if (i3 == -1) {
            this.currentSparseInputStreamIndex++;
            return readSparse(bArr, i, i2);
        }
        if (i3 >= i2) {
            return i3;
        }
        this.currentSparseInputStreamIndex++;
        int sparse = readSparse(bArr, i + i3, i2 - i3);
        return sparse == -1 ? i3 : i3 + sparse;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
    }

    protected final void setAtEOF(boolean z) {
        this.atEof = z;
    }

    protected final void setCurrentEntry(TarArchiveEntry tarArchiveEntry) {
        this.currEntry = tarArchiveEntry;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkipSparse;
        if (j <= 0 || isDirectory()) {
            return 0L;
        }
        long jAvailable = this.in.available();
        long jMin = Math.min(j, this.currEntry.getRealSize() - this.entryOffset);
        if (!this.currEntry.isSparse()) {
            jSkipSparse = getActuallySkipped(jAvailable, IOUtils.skip(this.in, jMin), jMin);
        } else {
            jSkipSparse = skipSparse(jMin);
        }
        count(jSkipSparse);
        this.entryOffset += jSkipSparse;
        return jSkipSparse;
    }

    private void skipRecordPadding() throws IOException {
        if (isDirectory()) {
            return;
        }
        long j = this.entrySize;
        if (j <= 0 || j % ((long) getRecordSize()) == 0) {
            return;
        }
        long jAvailable = this.in.available();
        long recordSize = (((this.entrySize / ((long) getRecordSize())) + 1) * ((long) getRecordSize())) - this.entrySize;
        count(getActuallySkipped(jAvailable, IOUtils.skip(this.in, recordSize), recordSize));
    }

    private long skipSparse(long j) throws IOException {
        List<InputStream> list = this.sparseInputStreams;
        if (list == null || list.isEmpty()) {
            return this.in.skip(j);
        }
        long jSkip = 0;
        while (jSkip < j && this.currentSparseInputStreamIndex < this.sparseInputStreams.size()) {
            jSkip += this.sparseInputStreams.get(this.currentSparseInputStreamIndex).skip(j - jSkip);
            if (jSkip < j) {
                this.currentSparseInputStreamIndex++;
            }
        }
        return jSkip;
    }

    private void tryToConsumeSecondEOFRecord() throws IOException {
        boolean zMarkSupported = this.in.markSupported();
        if (zMarkSupported) {
            this.in.mark(getRecordSize());
        }
        try {
            if (isEOFRecord(readRecord()) || !zMarkSupported) {
                return;
            }
            pushedBackBytes(getRecordSize());
            this.in.reset();
        } catch (Throwable th) {
            if (zMarkSupported) {
                pushedBackBytes(getRecordSize());
                this.in.reset();
            }
            throw th;
        }
    }
}
