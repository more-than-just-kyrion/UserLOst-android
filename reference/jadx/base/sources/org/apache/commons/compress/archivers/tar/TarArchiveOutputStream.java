package org.apache.commons.compress.archivers.tar;

import com.google.common.base.Ascii;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileTime;
import java.time.Instant;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.FixedLengthBlockOutputStream;
import org.apache.commons.compress.utils.TimeUtils;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.output.CountingOutputStream;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes3.dex */
public class TarArchiveOutputStream extends ArchiveOutputStream<TarArchiveEntry> {
    private static final ZipEncoding ASCII = ZipEncodingHelper.getZipEncoding(StandardCharsets.US_ASCII);
    public static final int BIGNUMBER_ERROR = 0;
    public static final int BIGNUMBER_POSIX = 2;
    public static final int BIGNUMBER_STAR = 1;
    private static final int BLOCK_SIZE_UNSPECIFIED = -511;
    public static final int LONGFILE_ERROR = 0;
    public static final int LONGFILE_GNU = 2;
    public static final int LONGFILE_POSIX = 3;
    public static final int LONGFILE_TRUNCATE = 1;
    private static final int RECORD_SIZE = 512;
    private boolean addPaxHeadersForNonAsciiNames;
    private int bigNumberMode;
    final String charsetName;
    private boolean closed;
    private final CountingOutputStream countingOut;
    private long currBytes;
    private String currName;
    private long currSize;
    private boolean finished;
    private boolean haveUnclosedEntry;
    private int longFileMode;
    private final FixedLengthBlockOutputStream out;
    private final byte[] recordBuf;
    private final int recordsPerBlock;
    private long recordsWritten;
    private final ZipEncoding zipEncoding;

    private boolean shouldBeReplaced(char c) {
        return c == 0 || c == '/' || c == '\\';
    }

    @Deprecated
    public int getRecordSize() {
        return 512;
    }

    public TarArchiveOutputStream(OutputStream outputStream) {
        this(outputStream, BLOCK_SIZE_UNSPECIFIED);
    }

    public TarArchiveOutputStream(OutputStream outputStream, int i) {
        this(outputStream, i, (String) null);
    }

    @Deprecated
    public TarArchiveOutputStream(OutputStream outputStream, int i, int i2) {
        this(outputStream, i, i2, null);
    }

    @Deprecated
    public TarArchiveOutputStream(OutputStream outputStream, int i, int i2, String str) {
        this(outputStream, i, str);
        if (i2 != 512) {
            throw new IllegalArgumentException("Tar record size must always be 512 bytes. Attempt to set size of " + i2);
        }
    }

    public TarArchiveOutputStream(OutputStream outputStream, int i, String str) {
        this.longFileMode = 0;
        this.bigNumberMode = 0;
        int i2 = BLOCK_SIZE_UNSPECIFIED == i ? 512 : i;
        if (i2 <= 0 || i2 % 512 != 0) {
            throw new IllegalArgumentException("Block size must be a multiple of 512 bytes. Attempt to use set size of " + i);
        }
        CountingOutputStream countingOutputStream = new CountingOutputStream(outputStream);
        this.countingOut = countingOutputStream;
        this.out = new FixedLengthBlockOutputStream(countingOutputStream, 512);
        this.charsetName = Charsets.toCharset(str).name();
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(str);
        this.recordBuf = new byte[512];
        this.recordsPerBlock = i2 / 512;
    }

    public TarArchiveOutputStream(OutputStream outputStream, String str) {
        this(outputStream, BLOCK_SIZE_UNSPECIFIED, str);
    }

    private void addFileTimePaxHeader(Map<String, String> map, String str, FileTime fileTime) {
        if (fileTime != null) {
            Instant instant = fileTime.toInstant();
            long epochSecond = instant.getEpochSecond();
            int nano = instant.getNano();
            if (nano == 0) {
                map.put(str, String.valueOf(epochSecond));
            } else {
                addInstantPaxHeader(map, str, epochSecond, nano);
            }
        }
    }

    private void addFileTimePaxHeaderForBigNumber(Map<String, String> map, String str, FileTime fileTime, long j) {
        if (fileTime != null) {
            Instant instant = fileTime.toInstant();
            long epochSecond = instant.getEpochSecond();
            int nano = instant.getNano();
            if (nano == 0) {
                addPaxHeaderForBigNumber(map, str, epochSecond, j);
            } else {
                addInstantPaxHeader(map, str, epochSecond, nano);
            }
        }
    }

    private void addInstantPaxHeader(Map<String, String> map, String str, long j, int i) {
        map.put(str, BigDecimal.valueOf(j).add(BigDecimal.valueOf(i).movePointLeft(9).setScale(7, RoundingMode.DOWN)).toPlainString());
    }

    private void addPaxHeaderForBigNumber(Map<String, String> map, String str, long j, long j2) {
        if (j < 0 || j > j2) {
            map.put(str, String.valueOf(j));
        }
    }

    private void addPaxHeadersForBigNumbers(Map<String, String> map, TarArchiveEntry tarArchiveEntry) {
        addPaxHeaderForBigNumber(map, "size", tarArchiveEntry.getSize(), TarConstants.MAXSIZE);
        addPaxHeaderForBigNumber(map, "gid", tarArchiveEntry.getLongGroupId(), TarConstants.MAXID);
        addFileTimePaxHeaderForBigNumber(map, "mtime", tarArchiveEntry.getLastModifiedTime(), TarConstants.MAXSIZE);
        addFileTimePaxHeader(map, "atime", tarArchiveEntry.getLastAccessTime());
        if (tarArchiveEntry.getStatusChangeTime() != null) {
            addFileTimePaxHeader(map, "ctime", tarArchiveEntry.getStatusChangeTime());
        } else {
            addFileTimePaxHeader(map, "ctime", tarArchiveEntry.getCreationTime());
        }
        addPaxHeaderForBigNumber(map, "uid", tarArchiveEntry.getLongUserId(), TarConstants.MAXID);
        addFileTimePaxHeader(map, "LIBARCHIVE.creationtime", tarArchiveEntry.getCreationTime());
        addPaxHeaderForBigNumber(map, "SCHILY.devmajor", tarArchiveEntry.getDevMajor(), TarConstants.MAXID);
        addPaxHeaderForBigNumber(map, "SCHILY.devminor", tarArchiveEntry.getDevMinor(), TarConstants.MAXID);
        failForBigNumber("mode", tarArchiveEntry.getMode(), TarConstants.MAXID);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            if (!this.finished) {
                finish();
            }
        } finally {
            if (!this.closed) {
                this.out.close();
                this.closed = true;
            }
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void closeArchiveEntry() throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        if (!this.haveUnclosedEntry) {
            throw new IOException("No current entry to close");
        }
        this.out.flushBlock();
        long j = this.currBytes;
        long j2 = this.currSize;
        if (j < j2) {
            throw new IOException("Entry '" + this.currName + "' closed at '" + this.currBytes + "' before the '" + this.currSize + "' bytes specified in the header were written");
        }
        long j3 = this.recordsWritten + (j2 / 512);
        this.recordsWritten = j3;
        if (0 != j2 % 512) {
            this.recordsWritten = j3 + 1;
        }
        this.haveUnclosedEntry = false;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public TarArchiveEntry createArchiveEntry(File file, String str) throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        return new TarArchiveEntry(file, str);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public TarArchiveEntry createArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        return new TarArchiveEntry(path, str, linkOptionArr);
    }

    private byte[] encodeExtendedPaxHeadersContents(Map<String, String> map) {
        final StringWriter stringWriter = new StringWriter();
        map.forEach(new BiConsumer() { // from class: org.apache.commons.compress.archivers.tar.TarArchiveOutputStream$$ExternalSyntheticLambda0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                TarArchiveOutputStream.lambda$encodeExtendedPaxHeadersContents$0(stringWriter, (String) obj, (String) obj2);
            }
        });
        return stringWriter.toString().getBytes(StandardCharsets.UTF_8);
    }

    static /* synthetic */ void lambda$encodeExtendedPaxHeadersContents$0(StringWriter stringWriter, String str, String str2) {
        int length = str.length() + str2.length() + 5;
        String str3 = length + " " + str + "=" + str2 + StringUtils.LF;
        int length2 = str3.getBytes(StandardCharsets.UTF_8).length;
        while (length != length2) {
            str3 = length2 + " " + str + "=" + str2 + StringUtils.LF;
            int i = length2;
            length2 = str3.getBytes(StandardCharsets.UTF_8).length;
            length = i;
        }
        stringWriter.write(str3);
    }

    private void failForBigNumber(String str, long j, long j2) {
        failForBigNumber(str, j, j2, "");
    }

    private void failForBigNumber(String str, long j, long j2, String str2) {
        if (j < 0 || j > j2) {
            throw new IllegalArgumentException(str + " '" + j + "' is too big ( > " + j2 + " )." + str2);
        }
    }

    private void failForBigNumbers(TarArchiveEntry tarArchiveEntry) {
        failForBigNumber("entry size", tarArchiveEntry.getSize(), TarConstants.MAXSIZE);
        failForBigNumberWithPosixMessage("group id", tarArchiveEntry.getLongGroupId(), TarConstants.MAXID);
        failForBigNumber("last modification time", TimeUtils.toUnixTime(tarArchiveEntry.getLastModifiedTime()), TarConstants.MAXSIZE);
        failForBigNumber("user id", tarArchiveEntry.getLongUserId(), TarConstants.MAXID);
        failForBigNumber("mode", tarArchiveEntry.getMode(), TarConstants.MAXID);
        failForBigNumber("major device number", tarArchiveEntry.getDevMajor(), TarConstants.MAXID);
        failForBigNumber("minor device number", tarArchiveEntry.getDevMinor(), TarConstants.MAXID);
    }

    private void failForBigNumberWithPosixMessage(String str, long j, long j2) {
        failForBigNumber(str, j, j2, " Use STAR or POSIX extensions to overcome this limit");
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void finish() throws IOException {
        if (this.finished) {
            throw new IOException("This archive has already been finished");
        }
        if (this.haveUnclosedEntry) {
            throw new IOException("This archive contains unclosed entries.");
        }
        writeEOFRecord();
        writeEOFRecord();
        padAsNeeded();
        this.out.flush();
        this.finished = true;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public long getBytesWritten() {
        return this.countingOut.getByteCount();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    @Deprecated
    public int getCount() {
        return (int) getBytesWritten();
    }

    private boolean handleLongName(TarArchiveEntry tarArchiveEntry, String str, Map<String, String> map, String str2, byte b, String str3) throws IOException {
        ByteBuffer byteBufferEncode = this.zipEncoding.encode(str);
        int iLimit = byteBufferEncode.limit() - byteBufferEncode.position();
        if (iLimit >= 100) {
            int i = this.longFileMode;
            if (i == 3) {
                map.put(str2, str);
                return true;
            }
            if (i == 2) {
                TarArchiveEntry tarArchiveEntry2 = new TarArchiveEntry(TarConstants.GNU_LONGLINK, b);
                tarArchiveEntry2.setSize(((long) iLimit) + 1);
                transferModTime(tarArchiveEntry, tarArchiveEntry2);
                putArchiveEntry(tarArchiveEntry2);
                write(byteBufferEncode.array(), byteBufferEncode.arrayOffset(), iLimit);
                write(0);
                closeArchiveEntry();
            } else if (i != 1) {
                throw new IllegalArgumentException(str3 + " '" + str + "' is too long ( > 100 bytes)");
            }
        }
        return false;
    }

    private void padAsNeeded() throws IOException {
        int intExact = Math.toIntExact(this.recordsWritten % ((long) this.recordsPerBlock));
        if (intExact != 0) {
            while (intExact < this.recordsPerBlock) {
                writeEOFRecord();
                intExact++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0086  */
    /* JADX WARN: Code duplicated, block: B:23:0x008a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x008c  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:47:0x00db  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ef  */
    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void putArchiveEntry(TarArchiveEntry tarArchiveEntry) throws IOException {
        String str;
        int i;
        boolean z;
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        if (tarArchiveEntry.isGlobalPaxHeader()) {
            byte[] bArrEncodeExtendedPaxHeadersContents = encodeExtendedPaxHeadersContents(tarArchiveEntry.getExtraPaxHeaders());
            tarArchiveEntry.setSize(bArrEncodeExtendedPaxHeadersContents.length);
            tarArchiveEntry.writeEntryHeader(this.recordBuf, this.zipEncoding, this.bigNumberMode == 1);
            writeRecord(this.recordBuf);
            this.currSize = tarArchiveEntry.getSize();
            this.currBytes = 0L;
            this.haveUnclosedEntry = true;
            write(bArrEncodeExtendedPaxHeadersContents);
            closeArchiveEntry();
            return;
        }
        HashMap map = new HashMap();
        String name = tarArchiveEntry.getName();
        boolean zHandleLongName = handleLongName(tarArchiveEntry, name, map, "path", TarConstants.LF_GNUTYPE_LONGNAME, "file name");
        String linkName = tarArchiveEntry.getLinkName();
        if (linkName != null && !linkName.isEmpty()) {
            str = linkName;
            boolean z2 = handleLongName(tarArchiveEntry, linkName, map, "linkpath", TarConstants.LF_GNUTYPE_LONGLINK, "link name");
            i = this.bigNumberMode;
            if (i == 2) {
                addPaxHeadersForBigNumbers(map, tarArchiveEntry);
            } else if (i != 1) {
                failForBigNumbers(tarArchiveEntry);
            }
            if (this.addPaxHeadersForNonAsciiNames && !zHandleLongName && !ASCII.canEncode(name)) {
                map.put("path", name);
            }
            if (this.addPaxHeadersForNonAsciiNames && !z2 && ((tarArchiveEntry.isLink() || tarArchiveEntry.isSymbolicLink()) && !ASCII.canEncode(str))) {
                map.put("linkpath", str);
            }
            map.putAll(tarArchiveEntry.getExtraPaxHeaders());
            if (!map.isEmpty()) {
                writePaxHeaders(tarArchiveEntry, name, map);
            }
            byte[] bArr = this.recordBuf;
            ZipEncoding zipEncoding = this.zipEncoding;
            if (this.bigNumberMode == 1) {
                z = true;
            } else {
                z = false;
            }
            tarArchiveEntry.writeEntryHeader(bArr, zipEncoding, z);
            writeRecord(this.recordBuf);
            this.currBytes = 0L;
            if (tarArchiveEntry.isDirectory()) {
                this.currSize = 0L;
            } else {
                this.currSize = tarArchiveEntry.getSize();
            }
            this.currName = name;
            this.haveUnclosedEntry = true;
        }
        str = linkName;
        i = this.bigNumberMode;
        if (i == 2) {
            addPaxHeadersForBigNumbers(map, tarArchiveEntry);
        } else if (i != 1) {
            failForBigNumbers(tarArchiveEntry);
        }
        if (this.addPaxHeadersForNonAsciiNames) {
            map.put("path", name);
        }
        if (this.addPaxHeadersForNonAsciiNames) {
            map.put("linkpath", str);
        }
        map.putAll(tarArchiveEntry.getExtraPaxHeaders());
        if (!map.isEmpty()) {
            writePaxHeaders(tarArchiveEntry, name, map);
        }
        byte[] bArr2 = this.recordBuf;
        ZipEncoding zipEncoding2 = this.zipEncoding;
        if (this.bigNumberMode == 1) {
            z = true;
        } else {
            z = false;
        }
        tarArchiveEntry.writeEntryHeader(bArr2, zipEncoding2, z);
        writeRecord(this.recordBuf);
        this.currBytes = 0L;
        if (tarArchiveEntry.isDirectory()) {
            this.currSize = 0L;
        } else {
            this.currSize = tarArchiveEntry.getSize();
        }
        this.currName = name;
        this.haveUnclosedEntry = true;
    }

    public void setAddPaxHeadersForNonAsciiNames(boolean z) {
        this.addPaxHeadersForNonAsciiNames = z;
    }

    public void setBigNumberMode(int i) {
        this.bigNumberMode = i;
    }

    public void setLongFileMode(int i) {
        this.longFileMode = i;
    }

    private String stripTo7Bits(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char cCharAt = (char) (str.charAt(i) & Ascii.MAX);
            if (shouldBeReplaced(cCharAt)) {
                sb.append("_");
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    private void transferModTime(TarArchiveEntry tarArchiveEntry, TarArchiveEntry tarArchiveEntry2) {
        long unixTime = TimeUtils.toUnixTime(tarArchiveEntry.getLastModifiedTime());
        if (unixTime < 0 || unixTime > TarConstants.MAXSIZE) {
            unixTime = 0;
        }
        tarArchiveEntry2.setLastModifiedTime(TimeUtils.unixTimeToFileTime(unixTime));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (!this.haveUnclosedEntry) {
            throw new IllegalStateException("No current tar entry");
        }
        long j = i2;
        if (this.currBytes + j > this.currSize) {
            throw new IOException("Request to write '" + i2 + "' bytes exceeds size in header of '" + this.currSize + "' bytes for entry '" + this.currName + "'");
        }
        this.out.write(bArr, i, i2);
        this.currBytes += j;
    }

    private void writeEOFRecord() throws IOException {
        Arrays.fill(this.recordBuf, (byte) 0);
        writeRecord(this.recordBuf);
    }

    void writePaxHeaders(TarArchiveEntry tarArchiveEntry, String str, Map<String, String> map) throws IOException {
        String strSubstring = "./PaxHeaders.X/" + stripTo7Bits(str);
        if (strSubstring.length() >= 100) {
            strSubstring = strSubstring.substring(0, 99);
        }
        TarArchiveEntry tarArchiveEntry2 = new TarArchiveEntry(strSubstring, TarConstants.LF_PAX_EXTENDED_HEADER_LC);
        transferModTime(tarArchiveEntry, tarArchiveEntry2);
        byte[] bArrEncodeExtendedPaxHeadersContents = encodeExtendedPaxHeadersContents(map);
        tarArchiveEntry2.setSize(bArrEncodeExtendedPaxHeadersContents.length);
        putArchiveEntry(tarArchiveEntry2);
        write(bArrEncodeExtendedPaxHeadersContents);
        closeArchiveEntry();
    }

    private void writeRecord(byte[] bArr) throws IOException {
        if (bArr.length != 512) {
            throw new IOException("Record to write has length '" + bArr.length + "' which is not the record size of '512'");
        }
        this.out.write(bArr);
        this.recordsWritten++;
    }
}
