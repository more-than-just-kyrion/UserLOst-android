package org.apache.commons.compress.archivers.ar;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.regex.Pattern;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.ParsingUtils;

/* JADX INFO: loaded from: classes3.dex */
public class ArArchiveInputStream extends ArchiveInputStream<ArArchiveEntry> {
    private static final int FILE_MODE_LEN = 8;
    private static final int FILE_MODE_OFFSET = 40;
    private static final String GNU_STRING_TABLE_NAME = "//";
    private static final int GROUP_ID_LEN = 6;
    private static final int GROUP_ID_OFFSET = 34;
    private static final int LAST_MODIFIED_LEN = 12;
    private static final int LAST_MODIFIED_OFFSET = 16;
    private static final int LENGTH_LEN = 10;
    private static final int LENGTH_OFFSET = 48;
    private static final int NAME_LEN = 16;
    private static final int NAME_OFFSET = 0;
    private static final int USER_ID_LEN = 6;
    private static final int USER_ID_OFFSET = 28;
    private boolean closed;
    private ArArchiveEntry currentEntry;
    private long entryOffset;
    private final byte[] metaData;
    private byte[] namebuffer;
    private long offset;
    static final String BSD_LONGNAME_PREFIX = "#1/";
    private static final int BSD_LONGNAME_PREFIX_LEN = BSD_LONGNAME_PREFIX.length();
    private static final Pattern BSD_LONGNAME_PATTERN = Pattern.compile("^#1/\\d+");
    private static final Pattern GNU_LONGNAME_PATTERN = Pattern.compile("^/\\d+");

    private static boolean isBSDLongName(String str) {
        return str != null && BSD_LONGNAME_PATTERN.matcher(str).matches();
    }

    private static boolean isGNUStringTable(String str) {
        return GNU_STRING_TABLE_NAME.equals(str);
    }

    public static boolean matches(byte[] bArr, int i) {
        return i >= 8 && bArr[0] == 33 && bArr[1] == 60 && bArr[2] == 97 && bArr[3] == 114 && bArr[4] == 99 && bArr[5] == 104 && bArr[6] == 62 && bArr[7] == 10;
    }

    public ArArchiveInputStream(InputStream inputStream) {
        super(inputStream, StandardCharsets.US_ASCII.name());
        this.entryOffset = -1L;
        this.metaData = new byte[58];
    }

    private int asInt(byte[] bArr, int i, int i2) throws IOException {
        return asInt(bArr, i, i2, 10, false);
    }

    private int asInt(byte[] bArr, int i, int i2, boolean z) throws IOException {
        return asInt(bArr, i, i2, 10, z);
    }

    private int asInt(byte[] bArr, int i, int i2, int i3) throws IOException {
        return asInt(bArr, i, i2, i3, false);
    }

    private int asInt(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        String strTrim = ArchiveUtils.toAsciiString(bArr, i, i2).trim();
        if (strTrim.isEmpty() && z) {
            return 0;
        }
        return ParsingUtils.parseIntValue(strTrim, i3);
    }

    private long asLong(byte[] bArr, int i, int i2) throws IOException {
        return ParsingUtils.parseLongValue(ArchiveUtils.toAsciiString(bArr, i, i2).trim());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            this.closed = true;
            this.in.close();
        }
        this.currentEntry = null;
    }

    private String getBSDLongName(String str) throws IOException {
        int intValue = ParsingUtils.parseIntValue(str.substring(BSD_LONGNAME_PREFIX_LEN));
        byte[] range = IOUtils.readRange(this.in, intValue);
        int length = range.length;
        trackReadBytes(length);
        if (length != intValue) {
            throw new EOFException();
        }
        return ArchiveUtils.toAsciiString(range);
    }

    private String getExtendedName(int i) throws IOException {
        if (this.namebuffer == null) {
            throw new IOException("Cannot process GNU long file name as no // record was found");
        }
        int i2 = i;
        while (true) {
            byte[] bArr = this.namebuffer;
            if (i2 >= bArr.length) {
                break;
            }
            byte b = bArr[i2];
            if (b == 10 || b == 0) {
                if (i2 == 0) {
                    break;
                }
                if (bArr[i2 - 1] == 47) {
                    i2--;
                }
                int i3 = i2 - i;
                if (i3 <= 0) {
                    break;
                }
                return ArchiveUtils.toAsciiString(bArr, i, i3);
            }
            i2++;
        }
        throw new IOException("Failed to read entry: " + i);
    }

    @Deprecated
    public ArArchiveEntry getNextArEntry() throws IOException {
        ArArchiveEntry arArchiveEntry = this.currentEntry;
        if (arArchiveEntry != null) {
            trackReadBytes(org.apache.commons.io.IOUtils.skip(this.in, (this.entryOffset + arArchiveEntry.getLength()) - this.offset));
            this.currentEntry = null;
        }
        if (this.offset == 0) {
            byte[] asciiBytes = ArchiveUtils.toAsciiBytes(ArArchiveEntry.HEADER);
            byte[] range = IOUtils.readRange(this.in, asciiBytes.length);
            int length = range.length;
            trackReadBytes(length);
            if (length != asciiBytes.length) {
                throw new IOException("Failed to read header. Occurred at byte: " + getBytesRead());
            }
            if (!Arrays.equals(asciiBytes, range)) {
                throw new IOException("Invalid header " + ArchiveUtils.toAsciiString(range));
            }
        }
        if (this.offset % 2 != 0) {
            if (this.in.read() < 0) {
                return null;
            }
            trackReadBytes(1L);
        }
        int fully = IOUtils.readFully(this.in, this.metaData);
        trackReadBytes(fully);
        if (fully == 0) {
            return null;
        }
        if (fully < this.metaData.length) {
            throw new IOException("Truncated ar archive");
        }
        byte[] asciiBytes2 = ArchiveUtils.toAsciiBytes(ArArchiveEntry.TRAILER);
        byte[] range2 = IOUtils.readRange(this.in, asciiBytes2.length);
        int length2 = range2.length;
        trackReadBytes(length2);
        if (length2 != asciiBytes2.length) {
            throw new IOException("Failed to read entry trailer. Occurred at byte: " + getBytesRead());
        }
        if (!Arrays.equals(asciiBytes2, range2)) {
            throw new IOException("Invalid entry trailer. not read the content? Occurred at byte: " + getBytesRead());
        }
        this.entryOffset = this.offset;
        String strTrim = ArchiveUtils.toAsciiString(this.metaData, 0, 16).trim();
        if (isGNUStringTable(strTrim)) {
            this.currentEntry = readGNUStringTable(this.metaData, 48, 10);
            return getNextArEntry();
        }
        try {
            long jAsLong = asLong(this.metaData, 48, 10);
            if (strTrim.endsWith("/")) {
                strTrim = strTrim.substring(0, strTrim.length() - 1);
            } else if (isGNULongName(strTrim)) {
                strTrim = getExtendedName(ParsingUtils.parseIntValue(strTrim.substring(1)));
            } else if (isBSDLongName(strTrim)) {
                strTrim = getBSDLongName(strTrim);
                long length3 = strTrim.length();
                jAsLong -= length3;
                this.entryOffset += length3;
            }
            String str = strTrim;
            long j = jAsLong;
            if (j < 0) {
                throw new IOException("broken archive, entry with negative size");
            }
            try {
                ArArchiveEntry arArchiveEntry2 = new ArArchiveEntry(str, j, asInt(this.metaData, 28, 6, true), asInt(this.metaData, 34, 6, true), asInt(this.metaData, 40, 8, 8), asLong(this.metaData, 16, 12));
                this.currentEntry = arArchiveEntry2;
                return arArchiveEntry2;
            } catch (NumberFormatException e) {
                throw new IOException("Broken archive, unable to parse entry metadata fields as numbers", e);
            }
        } catch (NumberFormatException e2) {
            throw new IOException("Broken archive, unable to parse ar_size field as a number", e2);
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArArchiveEntry getNextEntry() throws IOException {
        return getNextArEntry();
    }

    private boolean isGNULongName(String str) {
        return str != null && GNU_LONGNAME_PATTERN.matcher(str).matches();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        ArArchiveEntry arArchiveEntry = this.currentEntry;
        if (arArchiveEntry == null) {
            throw new IllegalStateException("No current ar entry");
        }
        long length = this.entryOffset + arArchiveEntry.getLength();
        if (i2 < 0) {
            return -1;
        }
        long j = this.offset;
        if (j >= length) {
            return -1;
        }
        int i3 = this.in.read(bArr, i, (int) Math.min(i2, length - j));
        trackReadBytes(i3);
        return i3;
    }

    private ArArchiveEntry readGNUStringTable(byte[] bArr, int i, int i2) throws IOException {
        try {
            int iAsInt = asInt(bArr, i, i2);
            byte[] range = IOUtils.readRange(this.in, iAsInt);
            this.namebuffer = range;
            int length = range.length;
            trackReadBytes(length);
            if (length != iAsInt) {
                throw new IOException("Failed to read complete // record: expected=" + iAsInt + " read=" + length);
            }
            return new ArArchiveEntry(GNU_STRING_TABLE_NAME, iAsInt);
        } catch (NumberFormatException e) {
            throw new IOException("Broken archive, unable to parse GNU string table length field as a number", e);
        }
    }

    private void trackReadBytes(long j) {
        count(j);
        if (j > 0) {
            this.offset += j;
        }
    }
}
