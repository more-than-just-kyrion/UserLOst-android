package org.apache.commons.compress.archivers.zip;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Objects;
import java.util.function.Function;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream;
import org.apache.commons.compress.compressors.deflate64.Deflate64CompressorInputStream;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.InputStreamStatistics;
import org.apache.commons.io.input.BoundedInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class ZipArchiveInputStream extends ArchiveInputStream<ZipArchiveEntry> implements InputStreamStatistics {
    private static final int CFH_LEN = 46;
    private static final int LFH_LEN = 30;
    public static final int PREAMBLE_GARBAGE_MAX_SIZE = 4096;
    private static final long TWO_EXP_32 = 4294967296L;
    private static final String USE_ZIPFILE_INSTEAD_OF_STREAM_DISCLAIMER = " while reading a stored entry using data descriptor. Either the archive is broken or it can not be read using ZipArchiveInputStream and you must use ZipFile. A common cause for this is a ZIP archive containing a ZIP archive. See https://commons.apache.org/proper/commons-compress/zip.html#ZipArchiveInputStream_vs_ZipFile";
    private final boolean allowStoredEntriesWithDataDescriptor;
    private final ByteBuffer buf;
    private boolean closed;
    private CurrentEntry current;
    private int entriesRead;
    private Function<ZipShort, ZipExtraField> extraFieldSupport;
    private boolean hitCentralDirectory;
    private final Inflater inf;
    private ByteArrayInputStream lastStoredEntry;
    private final byte[] lfhBuf;
    private final byte[] shortBuf;
    private final byte[] skipBuf;
    private final boolean skipSplitSig;
    private final byte[] twoDwordBuf;
    private long uncompressedCount;
    private final boolean useUnicodeExtraFields;
    private final byte[] wordBuf;
    private final ZipEncoding zipEncoding;
    private static final byte[] LFH = ZipLong.LFH_SIG.getBytes();
    private static final byte[] CFH = ZipLong.CFH_SIG.getBytes();
    private static final byte[] DD = ZipLong.DD_SIG.getBytes();
    private static final byte[] APK_SIGNING_BLOCK_MAGIC = {65, 80, TarConstants.LF_GNUTYPE_LONGLINK, 32, TarConstants.LF_GNUTYPE_SPARSE, 105, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 32, 66, 108, 111, 99, 107, 32, TarConstants.LF_BLK, TarConstants.LF_SYMLINK};
    private static final BigInteger LONG_MAX = BigInteger.valueOf(Long.MAX_VALUE);

    private final class BoundCountInputStream extends BoundedInputStream {
        BoundCountInputStream(InputStream inputStream, long j) {
            super(inputStream, j);
        }

        private boolean atMaxLength() {
            return getMaxLength() >= 0 && getCount() >= getMaxLength();
        }

        @Override // org.apache.commons.io.input.BoundedInputStream, java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (atMaxLength()) {
                return -1;
            }
            int i = super.read();
            if (i != -1) {
                readCount(1);
            }
            return i;
        }

        @Override // org.apache.commons.io.input.BoundedInputStream, java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (i2 == 0) {
                return 0;
            }
            if (atMaxLength()) {
                return -1;
            }
            return readCount(super.read(bArr, i, (int) (getMaxLength() >= 0 ? Math.min(i2, getMaxLength() - getCount()) : i2)));
        }

        private int readCount(int i) {
            if (i != -1) {
                ZipArchiveInputStream.this.count(i);
                CurrentEntry.access$214(ZipArchiveInputStream.this.current, i);
            }
            return i;
        }
    }

    private static final class CurrentEntry {
        private long bytesRead;
        private long bytesReadFromStream;
        private final CRC32 crc;
        private final ZipArchiveEntry entry;
        private boolean hasDataDescriptor;
        private InputStream inputStream;
        private boolean usesZip64;

        private CurrentEntry() {
            this.entry = new ZipArchiveEntry();
            this.crc = new CRC32();
        }

        /* synthetic */ CurrentEntry(AnonymousClass1 anonymousClass1) {
            this();
        }

        static /* synthetic */ long access$214(CurrentEntry currentEntry, long j) {
            long j2 = currentEntry.bytesReadFromStream + j;
            currentEntry.bytesReadFromStream = j2;
            return j2;
        }

        static /* synthetic */ long access$222(CurrentEntry currentEntry, long j) {
            long j2 = currentEntry.bytesReadFromStream - j;
            currentEntry.bytesReadFromStream = j2;
            return j2;
        }

        static /* synthetic */ long access$414(CurrentEntry currentEntry, long j) {
            long j2 = currentEntry.bytesRead + j;
            currentEntry.bytesRead = j2;
            return j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public <T extends InputStream> T checkInputStream() {
            return (T) Objects.requireNonNull(this.inputStream, "inputStream");
        }
    }

    private static boolean checksig(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr.length; i++) {
            if (bArr2[i] != bArr[i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < ZipArchiveOutputStream.LFH_SIG.length) {
            return false;
        }
        return checksig(ZipArchiveOutputStream.LFH_SIG, bArr) || checksig(ZipArchiveOutputStream.EOCD_SIG, bArr) || checksig(ZipArchiveOutputStream.DD_SIG, bArr) || checksig(ZipLong.SINGLE_SEGMENT_SPLIT_MARKER.getBytes(), bArr);
    }

    public ZipArchiveInputStream(InputStream inputStream) {
        this(inputStream, StandardCharsets.UTF_8.name());
    }

    public ZipArchiveInputStream(InputStream inputStream, String str) {
        this(inputStream, str, true);
    }

    public ZipArchiveInputStream(InputStream inputStream, String str, boolean z) {
        this(inputStream, str, z, false);
    }

    public ZipArchiveInputStream(InputStream inputStream, String str, boolean z, boolean z2) {
        this(inputStream, str, z, z2, false);
    }

    public ZipArchiveInputStream(InputStream inputStream, String str, boolean z, boolean z2, boolean z3) {
        super(inputStream, str);
        this.inf = new Inflater(true);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(512);
        this.buf = byteBufferAllocate;
        this.lfhBuf = new byte[30];
        this.skipBuf = new byte[1024];
        this.shortBuf = new byte[2];
        this.wordBuf = new byte[4];
        this.twoDwordBuf = new byte[16];
        this.in = new PushbackInputStream(inputStream, byteBufferAllocate.capacity());
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(str);
        this.useUnicodeExtraFields = z;
        this.allowStoredEntriesWithDataDescriptor = z2;
        this.skipSplitSig = z3;
        byteBufferAllocate.limit(0);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0066  */
    private boolean bufferContainsSignature(ByteArrayOutputStream byteArrayOutputStream, int i, int i2, int i3) throws IOException {
        int i4;
        boolean z = false;
        int i5 = 0;
        while (!z) {
            int i6 = i + i2;
            if (i5 >= i6 - 4) {
                break;
            }
            byte b = this.buf.array()[i5];
            byte[] bArr = LFH;
            if (b == bArr[0] && this.buf.array()[i5 + 1] == bArr[1]) {
                if (i5 >= i3 && this.buf.array()[i5 + 2] == bArr[2] && this.buf.array()[i5 + 3] == bArr[3]) {
                    i4 = i5 - i3;
                    z = true;
                } else {
                    int i7 = i5 + 2;
                    byte b2 = this.buf.array()[i7];
                    byte[] bArr2 = CFH;
                    if (b2 == bArr2[2] && this.buf.array()[i5 + 3] == bArr2[3]) {
                        i4 = i5 - i3;
                    } else {
                        byte b3 = this.buf.array()[i7];
                        byte[] bArr3 = DD;
                        if (b3 == bArr3[2] && this.buf.array()[i5 + 3] == bArr3[3]) {
                            i4 = i5;
                        } else {
                            i4 = i5;
                        }
                    }
                    z = true;
                }
                if (z) {
                    pushback(this.buf.array(), i4, i6 - i4);
                    byteArrayOutputStream.write(this.buf.array(), 0, i4);
                    readDataDescriptor();
                }
            }
            i5++;
        }
        return z;
    }

    private int cacheBytesRead(ByteArrayOutputStream byteArrayOutputStream, int i, int i2, int i3) {
        int i4 = i + i2;
        int i5 = (i4 - i3) - 3;
        if (i5 <= 0) {
            return i4;
        }
        byteArrayOutputStream.write(this.buf.array(), 0, i5);
        int i6 = i3 + 3;
        System.arraycopy(this.buf.array(), i5, this.buf.array(), 0, i6);
        return i6;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        if (!(archiveEntry instanceof ZipArchiveEntry)) {
            return false;
        }
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) archiveEntry;
        return ZipUtil.canHandleEntryData(zipArchiveEntry) && supportsDataDescriptorFor(zipArchiveEntry) && supportsCompressedSizeFor(zipArchiveEntry);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        try {
            this.in.close();
        } finally {
            this.inf.end();
        }
    }

    private void closeEntry() throws IOException {
        if (this.closed) {
            throw new IOException("The stream is closed");
        }
        if (this.current == null) {
            return;
        }
        if (currentEntryHasOutstandingBytes()) {
            drainCurrentEntryData();
        } else {
            skip(Long.MAX_VALUE);
            int bytesInflated = (int) (this.current.bytesReadFromStream - (this.current.entry.getMethod() == 8 ? getBytesInflated() : this.current.bytesRead));
            if (bytesInflated > 0) {
                pushback(this.buf.array(), this.buf.limit() - bytesInflated, bytesInflated);
                CurrentEntry.access$222(this.current, bytesInflated);
            }
            if (currentEntryHasOutstandingBytes()) {
                drainCurrentEntryData();
            }
        }
        if (this.lastStoredEntry == null && this.current.hasDataDescriptor) {
            readDataDescriptor();
        }
        this.inf.reset();
        this.buf.clear().flip();
        this.current = null;
        this.lastStoredEntry = null;
    }

    private boolean currentEntryHasOutstandingBytes() {
        return this.current.bytesReadFromStream <= this.current.entry.getCompressedSize() && !this.current.hasDataDescriptor;
    }

    private void drainCurrentEntryData() throws IOException {
        long compressedSize = this.current.entry.getCompressedSize() - this.current.bytesReadFromStream;
        while (compressedSize > 0) {
            long j = this.in.read(this.buf.array(), 0, (int) Math.min(this.buf.capacity(), compressedSize));
            if (j < 0) {
                throw new EOFException("Truncated ZIP entry: " + ArchiveUtils.sanitize(this.current.entry.getName()));
            }
            count(j);
            compressedSize -= j;
        }
    }

    private int fill() throws IOException {
        if (this.closed) {
            throw new IOException("The stream is closed");
        }
        int i = this.in.read(this.buf.array());
        if (i > 0) {
            this.buf.limit(i);
            count(this.buf.limit());
            this.inf.setInput(this.buf.array(), 0, this.buf.limit());
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0013  */
    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    /* JADX WARN: Code duplicated, block: B:19:0x0034  */
    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x003f A[EDGE_INSN: B:28:0x003f->B:22:0x003f BREAK  A[LOOP:0: B:3:0x0003->B:32:?, LOOP_LABEL: LOOP:0: B:3:0x0003->B:32:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x003f A[EDGE_INSN: B:29:0x003f->B:22:0x003f BREAK  A[LOOP:0: B:3:0x0003->B:32:?, LOOP_LABEL: LOOP:0: B:3:0x0003->B:32:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x003f A[EDGE_INSN: B:30:0x003f->B:22:0x003f BREAK  A[LOOP:0: B:3:0x0003->B:32:?, LOOP_LABEL: LOOP:0: B:3:0x0003->B:32:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0026 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0039 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x001e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0031 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x000c A[PHI: r3
  0x000c: PHI (r3v3 int) = (r3v2 int), (r3v8 int) binds: [B:4:0x0004, B:6:0x000a] A[DONT_GENERATE, DONT_INLINE]] */
    private boolean findEocdRecord() throws IOException {
        int oneByte = -1;
        loop0: while (true) {
            boolean zIsFirstByteOfEocdSig = false;
            while (true) {
                if (!zIsFirstByteOfEocdSig) {
                    oneByte = readOneByte();
                    if (oneByte <= -1) {
                        break loop0;
                    }
                    if (!isFirstByteOfEocdSig(oneByte)) {
                        break;
                    }
                    oneByte = readOneByte();
                    if (oneByte != ZipArchiveOutputStream.EOCD_SIG[1]) {
                        oneByte = readOneByte();
                        if (oneByte != ZipArchiveOutputStream.EOCD_SIG[2]) {
                            oneByte = readOneByte();
                            if (oneByte == -1) {
                                break loop0;
                                break loop0;
                            }
                            if (oneByte == ZipArchiveOutputStream.EOCD_SIG[3]) {
                                return true;
                            }
                            zIsFirstByteOfEocdSig = isFirstByteOfEocdSig(oneByte);
                        } else {
                            if (oneByte == -1) {
                                break loop0;
                                break loop0;
                            }
                            zIsFirstByteOfEocdSig = isFirstByteOfEocdSig(oneByte);
                        }
                    } else {
                        if (oneByte == -1) {
                            break loop0;
                            break loop0;
                        }
                        zIsFirstByteOfEocdSig = isFirstByteOfEocdSig(oneByte);
                    }
                } else {
                    if (!isFirstByteOfEocdSig(oneByte)) {
                        break;
                    }
                    oneByte = readOneByte();
                    if (oneByte != ZipArchiveOutputStream.EOCD_SIG[1]) {
                        oneByte = readOneByte();
                        if (oneByte != ZipArchiveOutputStream.EOCD_SIG[2]) {
                            oneByte = readOneByte();
                            if (oneByte == -1) {
                                break loop0;
                            }
                            if (oneByte == ZipArchiveOutputStream.EOCD_SIG[3]) {
                                return true;
                            }
                            zIsFirstByteOfEocdSig = isFirstByteOfEocdSig(oneByte);
                        } else {
                            if (oneByte == -1) {
                                break loop0;
                            }
                            zIsFirstByteOfEocdSig = isFirstByteOfEocdSig(oneByte);
                        }
                    } else {
                        if (oneByte == -1) {
                            break loop0;
                        }
                        zIsFirstByteOfEocdSig = isFirstByteOfEocdSig(oneByte);
                    }
                }
            }
        }
        return false;
    }

    private long getBytesInflated() {
        long bytesRead = this.inf.getBytesRead();
        if (this.current.bytesReadFromStream >= TWO_EXP_32) {
            while (true) {
                long j = bytesRead + TWO_EXP_32;
                if (j > this.current.bytesReadFromStream) {
                    break;
                }
                bytesRead = j;
            }
        }
        return bytesRead;
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getCompressedCount() {
        int method = this.current.entry.getMethod();
        if (method == 0) {
            return this.current.bytesRead;
        }
        if (method == 8) {
            return getBytesInflated();
        }
        if (method == ZipMethod.UNSHRINKING.getCode() || method == ZipMethod.IMPLODING.getCode() || method == ZipMethod.ENHANCED_DEFLATED.getCode() || method == ZipMethod.BZIP2.getCode()) {
            return ((InputStreamStatistics) this.current.checkInputStream()).getCompressedCount();
        }
        return -1L;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ZipArchiveEntry getNextEntry() throws IOException {
        return getNextZipEntry();
    }

    @Deprecated
    public ZipArchiveEntry getNextZipEntry() throws IOException {
        boolean z;
        ZipLong zipLong;
        ZipLong zipLong2;
        this.uncompressedCount = 0L;
        AnonymousClass1 anonymousClass1 = null;
        if (!this.closed && !this.hitCentralDirectory) {
            if (this.current != null) {
                closeEntry();
                z = false;
            } else {
                z = true;
            }
            long bytesRead = getBytesRead();
            try {
                if (z) {
                    if (!readFirstLocalFileHeader()) {
                        this.hitCentralDirectory = true;
                        skipRemainderOfArchive(true);
                        return null;
                    }
                } else {
                    readFully(this.lfhBuf);
                }
                ZipLong zipLong3 = new ZipLong(this.lfhBuf);
                if (!zipLong3.equals(ZipLong.LFH_SIG)) {
                    if (zipLong3.equals(ZipLong.CFH_SIG) || zipLong3.equals(ZipLong.AED_SIG) || isApkSigningBlock(this.lfhBuf)) {
                        this.hitCentralDirectory = true;
                        skipRemainderOfArchive(false);
                        return null;
                    }
                    throw new ZipException(String.format("Unexpected record signature: 0x%x", Long.valueOf(zipLong3.getValue())));
                }
                this.current = new CurrentEntry(anonymousClass1);
                this.current.entry.setPlatform((ZipShort.getValue(this.lfhBuf, 4) >> 8) & 15);
                GeneralPurposeBit generalPurposeBit = GeneralPurposeBit.parse(this.lfhBuf, 6);
                boolean zUsesUTF8ForNames = generalPurposeBit.usesUTF8ForNames();
                ZipEncoding zipEncoding = zUsesUTF8ForNames ? ZipEncodingHelper.ZIP_ENCODING_UTF_8 : this.zipEncoding;
                this.current.hasDataDescriptor = generalPurposeBit.usesDataDescriptor();
                this.current.entry.setGeneralPurposeBit(generalPurposeBit);
                this.current.entry.setMethod(ZipShort.getValue(this.lfhBuf, 8));
                this.current.entry.setTime(ZipUtil.dosToJavaTime(ZipLong.getValue(this.lfhBuf, 10)));
                if (this.current.hasDataDescriptor) {
                    zipLong = null;
                    zipLong2 = null;
                } else {
                    this.current.entry.setCrc(ZipLong.getValue(this.lfhBuf, 14));
                    zipLong = new ZipLong(this.lfhBuf, 18);
                    zipLong2 = new ZipLong(this.lfhBuf, 22);
                }
                int value = ZipShort.getValue(this.lfhBuf, 26);
                int value2 = ZipShort.getValue(this.lfhBuf, 28);
                byte[] range = readRange(value);
                this.current.entry.setName(zipEncoding.decode(range), range);
                if (zUsesUTF8ForNames) {
                    this.current.entry.setNameSource(ZipArchiveEntry.NameSource.NAME_WITH_EFS_FLAG);
                }
                try {
                    this.current.entry.setExtra(readRange(value2));
                    if (!zUsesUTF8ForNames && this.useUnicodeExtraFields) {
                        ZipUtil.setNameAndCommentFromExtraFields(this.current.entry, range, null);
                    }
                    processZip64Extra(zipLong2, zipLong);
                    this.current.entry.setLocalHeaderOffset(bytesRead);
                    this.current.entry.setDataOffset(getBytesRead());
                    this.current.entry.setStreamContiguous(true);
                    ZipMethod methodByCode = ZipMethod.getMethodByCode(this.current.entry.getMethod());
                    if (this.current.entry.getCompressedSize() != -1) {
                        if (ZipUtil.canHandleEntryData(this.current.entry) && methodByCode != ZipMethod.STORED && methodByCode != ZipMethod.DEFLATED) {
                            BoundCountInputStream boundCountInputStream = new BoundCountInputStream(this.in, this.current.entry.getCompressedSize());
                            int i = AnonymousClass1.$SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod[methodByCode.ordinal()];
                            if (i == 1) {
                                this.current.inputStream = new UnshrinkingInputStream(boundCountInputStream);
                            } else if (i == 2) {
                                try {
                                    this.current.inputStream = new ExplodingInputStream(this.current.entry.getGeneralPurposeBit().getSlidingDictionarySize(), this.current.entry.getGeneralPurposeBit().getNumberOfShannonFanoTrees(), boundCountInputStream);
                                } catch (IllegalArgumentException e) {
                                    throw new IOException("bad IMPLODE data", e);
                                }
                            } else if (i == 3) {
                                this.current.inputStream = new BZip2CompressorInputStream(boundCountInputStream);
                            } else if (i == 4) {
                                this.current.inputStream = new Deflate64CompressorInputStream(boundCountInputStream);
                            }
                        }
                    } else if (methodByCode == ZipMethod.ENHANCED_DEFLATED) {
                        this.current.inputStream = new Deflate64CompressorInputStream(this.in);
                    }
                    this.entriesRead++;
                    return this.current.entry;
                } catch (RuntimeException e2) {
                    ZipException zipException = new ZipException("Invalid extra data in entry " + this.current.entry.getName());
                    zipException.initCause(e2);
                    throw zipException;
                }
            } catch (EOFException unused) {
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: org.apache.commons.compress.archivers.zip.ZipArchiveInputStream$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod;

        static {
            int[] iArr = new int[ZipMethod.values().length];
            $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod = iArr;
            try {
                iArr[ZipMethod.UNSHRINKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod[ZipMethod.IMPLODING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod[ZipMethod.BZIP2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod[ZipMethod.ENHANCED_DEFLATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // org.apache.commons.compress.utils.InputStreamStatistics
    public long getUncompressedCount() {
        return this.uncompressedCount;
    }

    private boolean isApkSigningBlock(byte[] bArr) throws IOException {
        BigInteger value = ZipEightByteInteger.getValue(bArr);
        long length = 8 - bArr.length;
        byte[] bArr2 = APK_SIGNING_BLOCK_MAGIC;
        BigInteger bigIntegerAdd = value.add(BigInteger.valueOf(length - ((long) bArr2.length)));
        int length2 = bArr2.length;
        byte[] bArr3 = new byte[length2];
        try {
            if (bigIntegerAdd.signum() < 0) {
                int length3 = bArr.length + bigIntegerAdd.intValue();
                if (length3 < 8) {
                    return false;
                }
                int iAbs = Math.abs(bigIntegerAdd.intValue());
                System.arraycopy(bArr, length3, bArr3, 0, Math.min(iAbs, length2));
                if (iAbs < length2) {
                    readFully(bArr3, iAbs);
                }
            } else {
                while (true) {
                    BigInteger bigInteger = LONG_MAX;
                    if (bigIntegerAdd.compareTo(bigInteger) <= 0) {
                        break;
                    }
                    realSkip(Long.MAX_VALUE);
                    bigIntegerAdd = bigIntegerAdd.add(bigInteger.negate());
                }
                realSkip(bigIntegerAdd.longValue());
                readFully(bArr3);
            }
            return Arrays.equals(bArr3, APK_SIGNING_BLOCK_MAGIC);
        } catch (EOFException unused) {
            return false;
        }
    }

    private boolean isFirstByteOfEocdSig(int i) {
        return i == ZipArchiveOutputStream.EOCD_SIG[0];
    }

    private void processZip64Extra(ZipLong zipLong, ZipLong zipLong2) throws ZipException {
        ZipExtraField extraField = this.current.entry.getExtraField(Zip64ExtendedInformationExtraField.HEADER_ID);
        if (extraField != null && !(extraField instanceof Zip64ExtendedInformationExtraField)) {
            throw new ZipException("archive contains unparseable zip64 extra field");
        }
        Zip64ExtendedInformationExtraField zip64ExtendedInformationExtraField = (Zip64ExtendedInformationExtraField) extraField;
        this.current.usesZip64 = zip64ExtendedInformationExtraField != null;
        if (this.current.hasDataDescriptor) {
            return;
        }
        if (zip64ExtendedInformationExtraField == null || !(ZipLong.ZIP64_MAGIC.equals(zipLong2) || ZipLong.ZIP64_MAGIC.equals(zipLong))) {
            if (zipLong2 == null || zipLong == null) {
                return;
            }
            if (zipLong2.getValue() >= 0) {
                this.current.entry.setCompressedSize(zipLong2.getValue());
                if (zipLong.getValue() >= 0) {
                    this.current.entry.setSize(zipLong.getValue());
                    return;
                }
                throw new ZipException("broken archive, entry with negative size");
            }
            throw new ZipException("broken archive, entry with negative compressed size");
        }
        if (zip64ExtendedInformationExtraField.getCompressedSize() == null || zip64ExtendedInformationExtraField.getSize() == null) {
            throw new ZipException("archive contains corrupted zip64 extra field");
        }
        long longValue = zip64ExtendedInformationExtraField.getCompressedSize().getLongValue();
        if (longValue >= 0) {
            this.current.entry.setCompressedSize(longValue);
            long longValue2 = zip64ExtendedInformationExtraField.getSize().getLongValue();
            if (longValue2 >= 0) {
                this.current.entry.setSize(longValue2);
                return;
            }
            throw new ZipException("broken archive, entry with negative size");
        }
        throw new ZipException("broken archive, entry with negative compressed size");
    }

    private void pushback(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0) {
            throw new IOException(String.format("Negative offset %,d into buffer", Integer.valueOf(i)));
        }
        ((PushbackInputStream) this.in).unread(bArr, i, i2);
        pushedBackBytes(i2);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int deflated;
        if (i2 == 0) {
            return 0;
        }
        if (this.closed) {
            throw new IOException("The stream is closed");
        }
        CurrentEntry currentEntry = this.current;
        if (currentEntry == null) {
            return -1;
        }
        if (i <= bArr.length && i2 >= 0 && i >= 0 && bArr.length - i >= i2) {
            ZipUtil.checkRequestedFeatures(currentEntry.entry);
            if (supportsDataDescriptorFor(this.current.entry)) {
                if (supportsCompressedSizeFor(this.current.entry)) {
                    if (this.current.entry.getMethod() != 0) {
                        if (this.current.entry.getMethod() != 8) {
                            if (this.current.entry.getMethod() == ZipMethod.UNSHRINKING.getCode() || this.current.entry.getMethod() == ZipMethod.IMPLODING.getCode() || this.current.entry.getMethod() == ZipMethod.ENHANCED_DEFLATED.getCode() || this.current.entry.getMethod() == ZipMethod.BZIP2.getCode()) {
                                deflated = this.current.inputStream.read(bArr, i, i2);
                            } else {
                                throw new UnsupportedZipFeatureException(ZipMethod.getMethodByCode(this.current.entry.getMethod()), this.current.entry);
                            }
                        } else {
                            deflated = readDeflated(bArr, i, i2);
                        }
                    } else {
                        deflated = readStored(bArr, i, i2);
                    }
                    if (deflated >= 0) {
                        this.current.crc.update(bArr, i, deflated);
                        this.uncompressedCount += (long) deflated;
                    }
                    return deflated;
                }
                throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.UNKNOWN_COMPRESSED_SIZE, this.current.entry);
            }
            throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.DATA_DESCRIPTOR, this.current.entry);
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    private void readDataDescriptor() throws IOException {
        readFully(this.wordBuf);
        ZipLong zipLong = new ZipLong(this.wordBuf);
        if (ZipLong.DD_SIG.equals(zipLong)) {
            readFully(this.wordBuf);
            zipLong = new ZipLong(this.wordBuf);
        }
        this.current.entry.setCrc(zipLong.getValue());
        readFully(this.twoDwordBuf);
        ZipLong zipLong2 = new ZipLong(this.twoDwordBuf, 8);
        if (zipLong2.equals(ZipLong.CFH_SIG) || zipLong2.equals(ZipLong.LFH_SIG)) {
            pushback(this.twoDwordBuf, 8, 8);
            long value = ZipLong.getValue(this.twoDwordBuf);
            if (value >= 0) {
                this.current.entry.setCompressedSize(value);
                long value2 = ZipLong.getValue(this.twoDwordBuf, 4);
                if (value2 >= 0) {
                    this.current.entry.setSize(value2);
                    return;
                }
                throw new ZipException("broken archive, entry with negative size");
            }
            throw new ZipException("broken archive, entry with negative compressed size");
        }
        long longValue = ZipEightByteInteger.getLongValue(this.twoDwordBuf);
        if (longValue >= 0) {
            this.current.entry.setCompressedSize(longValue);
            long longValue2 = ZipEightByteInteger.getLongValue(this.twoDwordBuf, 8);
            if (longValue2 >= 0) {
                this.current.entry.setSize(longValue2);
                return;
            }
            throw new ZipException("broken archive, entry with negative size");
        }
        throw new ZipException("broken archive, entry with negative compressed size");
    }

    private int readDeflated(byte[] bArr, int i, int i2) throws IOException {
        int fromInflater = readFromInflater(bArr, i, i2);
        if (fromInflater <= 0) {
            if (this.inf.finished()) {
                return -1;
            }
            if (this.inf.needsDictionary()) {
                throw new ZipException("This archive needs a preset dictionary which is not supported by Commons Compress.");
            }
            if (fromInflater == -1) {
                throw new IOException("Truncated ZIP file");
            }
        }
        return fromInflater;
    }

    private boolean readFirstLocalFileHeader() throws IOException {
        int iMin = Math.min(30, 22);
        byte[] bArr = new byte[iMin];
        readFully(bArr);
        int i = 0;
        while (true) {
            int i2 = 0;
            while (i <= 4092 && i2 <= iMin - 4) {
                try {
                    ZipLong zipLong = new ZipLong(bArr, i2);
                    if (!zipLong.equals(ZipLong.LFH_SIG) && !zipLong.equals(ZipLong.SINGLE_SEGMENT_SPLIT_MARKER) && !zipLong.equals(ZipLong.DD_SIG)) {
                        if (zipLong.equals(new ZipLong(ZipArchiveOutputStream.EOCD_SIG))) {
                            pushback(bArr, i2, iMin - i2);
                            return false;
                        }
                        i2++;
                        i++;
                    }
                    int i3 = iMin - i2;
                    System.arraycopy(bArr, i2, bArr, 0, i3);
                    readFully(bArr, i3);
                    System.arraycopy(bArr, 0, this.lfhBuf, 0, iMin);
                    readFully(this.lfhBuf, iMin);
                    ZipLong zipLong2 = new ZipLong(this.lfhBuf);
                    if (!this.skipSplitSig && zipLong2.equals(ZipLong.DD_SIG)) {
                        throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.SPLITTING);
                    }
                    if (!zipLong2.equals(ZipLong.SINGLE_SEGMENT_SPLIT_MARKER) && !zipLong2.equals(ZipLong.DD_SIG)) {
                        return true;
                    }
                    byte[] bArr2 = this.lfhBuf;
                    System.arraycopy(bArr2, 4, bArr2, 0, bArr2.length - 4);
                    byte[] bArr3 = this.lfhBuf;
                    readFully(bArr3, bArr3.length - 4);
                    return true;
                } catch (EOFException unused) {
                    throw new ZipException("Cannot find zip signature within the file");
                }
            }
            if (i >= 4092) {
                throw new ZipException("Cannot find zip signature within the first 4096 bytes");
            }
            System.arraycopy(bArr, iMin - 3, bArr, 0, 3);
            readFully(bArr, 3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0028  */
    /* JADX WARN: Code duplicated, block: B:22:0x0030 A[EDGE_INSN: B:22:0x0030->B:15:0x0030 BREAK  A[LOOP:0: B:3:0x0001->B:24:?], SYNTHETIC] */
    private int readFromInflater(byte[] bArr, int i, int i2) throws IOException {
        int iInflate = 0;
        do {
            if (this.inf.needsInput()) {
                int iFill = fill();
                if (iFill > 0) {
                    CurrentEntry.access$214(this.current, this.buf.limit());
                    iInflate = this.inf.inflate(bArr, i, i2);
                    if (iInflate == 0) {
                        break;
                        break;
                    }
                } else if (iFill == -1) {
                    return -1;
                }
            } else {
                try {
                    iInflate = this.inf.inflate(bArr, i, i2);
                    if (iInflate == 0) {
                        break;
                    }
                } catch (DataFormatException e) {
                    throw ((IOException) new ZipException(e.getMessage()).initCause(e));
                }
            }
        } while (this.inf.needsInput());
        return iInflate;
    }

    private void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0);
    }

    private void readFully(byte[] bArr, int i) throws IOException {
        int length = bArr.length - i;
        int fully = IOUtils.readFully(this.in, bArr, i, length);
        count(fully);
        if (fully < length) {
            throw new EOFException();
        }
    }

    private int readOneByte() throws IOException {
        int i = this.in.read();
        if (i != -1) {
            count(1);
        }
        return i;
    }

    private byte[] readRange(int i) throws IOException {
        byte[] range = IOUtils.readRange(this.in, i);
        count(range.length);
        if (range.length >= i) {
            return range;
        }
        throw new EOFException();
    }

    private int readStored(byte[] bArr, int i, int i2) throws IOException {
        if (!this.current.hasDataDescriptor) {
            long size = this.current.entry.getSize();
            if (this.current.bytesRead >= size) {
                return -1;
            }
            if (this.buf.position() >= this.buf.limit()) {
                this.buf.position(0);
                int i3 = this.in.read(this.buf.array());
                if (i3 == -1) {
                    this.buf.limit(0);
                    throw new IOException("Truncated ZIP file");
                }
                this.buf.limit(i3);
                count(i3);
                CurrentEntry.access$214(this.current, i3);
            }
            int iMin = Math.min(this.buf.remaining(), i2);
            if (size - this.current.bytesRead < iMin) {
                iMin = (int) (size - this.current.bytesRead);
            }
            this.buf.get(bArr, i, iMin);
            CurrentEntry.access$414(this.current, iMin);
            return iMin;
        }
        if (this.lastStoredEntry == null) {
            readStoredEntry();
        }
        return this.lastStoredEntry.read(bArr, i, i2);
    }

    private void readStoredEntry() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = this.current.usesZip64 ? 20 : 12;
        boolean zBufferContainsSignature = false;
        int iCacheBytesRead = 0;
        while (!zBufferContainsSignature) {
            int i2 = this.in.read(this.buf.array(), iCacheBytesRead, 512 - iCacheBytesRead);
            if (i2 <= 0) {
                throw new IOException("Truncated ZIP file");
            }
            int i3 = i2 + iCacheBytesRead;
            if (i3 < 4) {
                iCacheBytesRead = i3;
            } else {
                zBufferContainsSignature = bufferContainsSignature(byteArrayOutputStream, iCacheBytesRead, i2, i);
                if (!zBufferContainsSignature) {
                    iCacheBytesRead = cacheBytesRead(byteArrayOutputStream, iCacheBytesRead, i2, i);
                }
            }
        }
        if (this.current.entry.getCompressedSize() != this.current.entry.getSize()) {
            throw new ZipException("compressed and uncompressed size don't match while reading a stored entry using data descriptor. Either the archive is broken or it can not be read using ZipArchiveInputStream and you must use ZipFile. A common cause for this is a ZIP archive containing a ZIP archive. See https://commons.apache.org/proper/commons-compress/zip.html#ZipArchiveInputStream_vs_ZipFile");
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray.length != this.current.entry.getSize()) {
            throw new ZipException("actual and claimed size don't match while reading a stored entry using data descriptor. Either the archive is broken or it can not be read using ZipArchiveInputStream and you must use ZipFile. A common cause for this is a ZIP archive containing a ZIP archive. See https://commons.apache.org/proper/commons-compress/zip.html#ZipArchiveInputStream_vs_ZipFile");
        }
        this.lastStoredEntry = new ByteArrayInputStream(byteArray);
    }

    private void realSkip(long j) throws IOException {
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException();
        }
        while (j2 < j) {
            long length = j - j2;
            InputStream inputStream = this.in;
            byte[] bArr = this.skipBuf;
            if (bArr.length <= length) {
                length = bArr.length;
            }
            int i = inputStream.read(bArr, 0, (int) length);
            if (i == -1) {
                return;
            }
            count(i);
            j2 += (long) i;
        }
    }

    public ZipArchiveInputStream setExtraFieldSupport(Function<ZipShort, ZipExtraField> function) {
        this.extraFieldSupport = function;
        return this;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException();
        }
        while (j2 < j) {
            long length = j - j2;
            byte[] bArr = this.skipBuf;
            if (bArr.length <= length) {
                length = bArr.length;
            }
            int i = read(bArr, 0, (int) length);
            if (i == -1) {
                return j2;
            }
            j2 += (long) i;
        }
        return j2;
    }

    private void skipRemainderOfArchive(boolean z) throws IOException {
        int i = this.entriesRead;
        if (i > 0) {
            realSkip((((long) i) * 46) - 30);
        }
        if (findEocdRecord()) {
            realSkip(16L);
            readFully(this.shortBuf);
            int value = ZipShort.getValue(this.shortBuf);
            if (value >= 0) {
                realSkip(value);
                return;
            }
        }
        throw new IOException("Truncated ZIP file");
    }

    private boolean supportsCompressedSizeFor(ZipArchiveEntry zipArchiveEntry) {
        return zipArchiveEntry.getCompressedSize() != -1 || zipArchiveEntry.getMethod() == 8 || zipArchiveEntry.getMethod() == ZipMethod.ENHANCED_DEFLATED.getCode() || (zipArchiveEntry.getGeneralPurposeBit().usesDataDescriptor() && this.allowStoredEntriesWithDataDescriptor && zipArchiveEntry.getMethod() == 0);
    }

    private boolean supportsDataDescriptorFor(ZipArchiveEntry zipArchiveEntry) {
        return !zipArchiveEntry.getGeneralPurposeBit().usesDataDescriptor() || (this.allowStoredEntriesWithDataDescriptor && zipArchiveEntry.getMethod() == 0) || zipArchiveEntry.getMethod() == 8 || zipArchiveEntry.getMethod() == ZipMethod.ENHANCED_DEFLATED.getCode();
    }
}
