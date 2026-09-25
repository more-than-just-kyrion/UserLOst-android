package org.apache.commons.compress.archivers.tar;

import com.google.common.base.Ascii;
import com.iiordanov.bVNC.RfbProto;
import java.io.File;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.math.BigDecimal;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.FileTime;
import java.nio.file.attribute.PosixFileAttributes;
import java.time.DateTimeException;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;
import java.util.function.ToLongFunction;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.EntryStreamOffsets;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.ParsingUtils;
import org.apache.commons.compress.utils.TimeUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.file.attribute.FileTimes;
import org.apache.commons.lang3.SystemProperties;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes3.dex */
public class TarArchiveEntry implements ArchiveEntry, TarConstants, EntryStreamOffsets {
    public static final int DEFAULT_DIR_MODE = 16877;
    public static final int DEFAULT_FILE_MODE = 33188;
    public static final int MAX_NAMELEN = 31;

    @Deprecated
    public static final int MILLIS_PER_SECOND = 1000;
    public static final long UNKNOWN = -1;
    private FileTime aTime;
    private FileTime birthTime;
    private FileTime cTime;
    private boolean checkSumOK;
    private long dataOffset;
    private int devMajor;
    private int devMinor;
    private final Map<String, String> extraPaxHeaders;
    private final Path file;
    private long groupId;
    private String groupName;
    private boolean isExtended;
    private byte linkFlag;
    private String linkName;
    private final LinkOption[] linkOptions;
    private FileTime mTime;
    private String magic;
    private int mode;
    private String name;
    private boolean paxGNU1XSparse;
    private boolean paxGNUSparse;
    private final boolean preserveAbsolutePath;
    private long realSize;
    private long size;
    private List<TarArchiveStructSparse> sparseHeaders;
    private boolean starSparse;
    private long userId;
    private String userName;
    private String version;
    private static final TarArchiveEntry[] EMPTY_TAR_ARCHIVE_ENTRY_ARRAY = new TarArchiveEntry[0];
    private static final Pattern PAX_EXTENDED_HEADER_FILE_TIMES_PATTERN = Pattern.compile("-?\\d{1,19}(?:\\.\\d{1,19})?");

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public boolean isStreamContiguous() {
        return true;
    }

    private static FileTime fileTimeFromOptionalSeconds(long j) {
        if (j <= 0) {
            return null;
        }
        return TimeUtils.unixTimeToFileTime(j);
    }

    private static String normalizeFileName(String str, boolean z) {
        String property;
        int iIndexOf;
        if (!z && (property = System.getProperty(SystemProperties.OS_NAME)) != null) {
            String lowerCase = property.toLowerCase(Locale.ROOT);
            if (lowerCase.startsWith("windows")) {
                if (str.length() > 2) {
                    char cCharAt = str.charAt(0);
                    if (str.charAt(1) == ':' && ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z'))) {
                        str = str.substring(2);
                    }
                }
            } else if (lowerCase.contains("netware") && (iIndexOf = str.indexOf(58)) != -1) {
                str = str.substring(iIndexOf + 1);
            }
        }
        String strReplace = str.replace(File.separatorChar, IOUtils.DIR_SEPARATOR_UNIX);
        while (!z && strReplace.startsWith("/")) {
            strReplace = strReplace.substring(1);
        }
        return strReplace;
    }

    private static Instant parseInstantFromDecimalSeconds(String str) throws IOException {
        if (!PAX_EXTENDED_HEADER_FILE_TIMES_PATTERN.matcher(str).matches()) {
            throw new IOException("Corrupted PAX header. Time field value is invalid '" + str + "'");
        }
        BigDecimal bigDecimal = new BigDecimal(str);
        try {
            return Instant.ofEpochSecond(bigDecimal.longValue(), bigDecimal.remainder(BigDecimal.ONE).movePointRight(9).longValue());
        } catch (ArithmeticException | DateTimeException e) {
            throw new IOException("Corrupted PAX header. Time field value is invalid '" + str + "'", e);
        }
    }

    private TarArchiveEntry(boolean z) {
        this.name = "";
        this.linkName = "";
        this.magic = "ustar\u0000";
        this.version = TarConstants.VERSION_POSIX;
        this.groupName = "";
        this.extraPaxHeaders = new HashMap();
        this.dataOffset = -1L;
        String property = System.getProperty("user.name", "");
        this.userName = property.length() > 31 ? property.substring(0, 31) : property;
        this.file = null;
        this.linkOptions = org.apache.commons.compress.utils.IOUtils.EMPTY_LINK_OPTIONS;
        this.preserveAbsolutePath = z;
    }

    public TarArchiveEntry(byte[] bArr) {
        this(false);
        parseTarHeader(bArr);
    }

    public TarArchiveEntry(byte[] bArr, ZipEncoding zipEncoding) throws IOException {
        this(bArr, zipEncoding, false);
    }

    public TarArchiveEntry(byte[] bArr, ZipEncoding zipEncoding, boolean z) throws IOException {
        this((Map<String, String>) Collections.emptyMap(), bArr, zipEncoding, z);
    }

    public TarArchiveEntry(byte[] bArr, ZipEncoding zipEncoding, boolean z, long j) throws IOException {
        this(bArr, zipEncoding, z);
        setDataOffset(j);
    }

    public TarArchiveEntry(File file) {
        this(file, file.getPath());
    }

    public TarArchiveEntry(File file, String str) {
        this.name = "";
        this.linkName = "";
        this.magic = "ustar\u0000";
        this.version = TarConstants.VERSION_POSIX;
        this.groupName = "";
        this.extraPaxHeaders = new HashMap();
        this.dataOffset = -1L;
        String strNormalizeFileName = normalizeFileName(str, false);
        Path path = file.toPath();
        this.file = path;
        this.linkOptions = org.apache.commons.compress.utils.IOUtils.EMPTY_LINK_OPTIONS;
        try {
            readFileMode(path, strNormalizeFileName, new LinkOption[0]);
        } catch (IOException unused) {
            if (!file.isDirectory()) {
                this.size = file.length();
            }
        }
        this.userName = "";
        try {
            readOsSpecificProperties(this.file, new LinkOption[0]);
        } catch (IOException unused2) {
            this.mTime = FileTime.fromMillis(file.lastModified());
        }
        this.preserveAbsolutePath = false;
    }

    public TarArchiveEntry(Map<String, String> map, byte[] bArr, ZipEncoding zipEncoding, boolean z) throws IOException {
        this(false);
        parseTarHeader(map, bArr, zipEncoding, false, z);
    }

    public TarArchiveEntry(Map<String, String> map, byte[] bArr, ZipEncoding zipEncoding, boolean z, long j) throws IOException {
        this(map, bArr, zipEncoding, z);
        setDataOffset(j);
    }

    public TarArchiveEntry(Path path) throws IOException {
        this(path, path.toString(), new LinkOption[0]);
    }

    public TarArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        this.name = "";
        this.linkName = "";
        this.magic = "ustar\u0000";
        this.version = TarConstants.VERSION_POSIX;
        this.groupName = "";
        this.extraPaxHeaders = new HashMap();
        this.dataOffset = -1L;
        String strNormalizeFileName = normalizeFileName(str, false);
        this.file = path;
        this.linkOptions = linkOptionArr == null ? org.apache.commons.compress.utils.IOUtils.EMPTY_LINK_OPTIONS : linkOptionArr;
        readFileMode(path, strNormalizeFileName, linkOptionArr);
        this.userName = "";
        readOsSpecificProperties(path, new LinkOption[0]);
        this.preserveAbsolutePath = false;
    }

    public TarArchiveEntry(String str) {
        this(str, false);
    }

    public TarArchiveEntry(String str, boolean z) {
        this(z);
        String strNormalizeFileName = normalizeFileName(str, z);
        boolean zEndsWith = strNormalizeFileName.endsWith("/");
        this.name = strNormalizeFileName;
        this.mode = zEndsWith ? DEFAULT_DIR_MODE : DEFAULT_FILE_MODE;
        this.linkFlag = zEndsWith ? TarConstants.LF_DIR : TarConstants.LF_NORMAL;
        this.mTime = FileTime.from(Instant.now());
        this.userName = "";
    }

    public TarArchiveEntry(String str, byte b) {
        this(str, b, false);
    }

    public TarArchiveEntry(String str, byte b, boolean z) {
        this(str, z);
        this.linkFlag = b;
        if (b == 76) {
            this.magic = TarConstants.MAGIC_GNU;
            this.version = TarConstants.VERSION_GNU_SPACE;
        }
    }

    public void addPaxHeader(String str, String str2) {
        try {
            processPaxHeader(str, str2);
        } catch (IOException e) {
            throw new IllegalArgumentException("Invalid input", e);
        }
    }

    public void clearExtraPaxHeaders() {
        this.extraPaxHeaders.clear();
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return equals((TarArchiveEntry) obj);
    }

    public boolean equals(TarArchiveEntry tarArchiveEntry) {
        return tarArchiveEntry != null && getName().equals(tarArchiveEntry.getName());
    }

    private int evaluateType(Map<String, String> map, byte[] bArr) {
        if (ArchiveUtils.matchAsciiBuffer(TarConstants.MAGIC_GNU, bArr, 257, 6)) {
            return 2;
        }
        if (ArchiveUtils.matchAsciiBuffer("ustar\u0000", bArr, 257, 6)) {
            return isXstar(map, bArr) ? 4 : 3;
        }
        return 0;
    }

    private int fill(byte b, int i, byte[] bArr, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i + i3] = b;
        }
        return i + i2;
    }

    private int fill(int i, int i2, byte[] bArr, int i3) {
        return fill((byte) i, i2, bArr, i3);
    }

    void fillGNUSparse0xData(Map<String, String> map) throws IOException {
        this.paxGNUSparse = true;
        this.realSize = ParsingUtils.parseIntValue(map.get("GNU.sparse.size"));
        if (map.containsKey("GNU.sparse.name")) {
            this.name = map.get("GNU.sparse.name");
        }
    }

    void fillGNUSparse1xData(Map<String, String> map) throws IOException {
        this.paxGNUSparse = true;
        this.paxGNU1XSparse = true;
        if (map.containsKey("GNU.sparse.name")) {
            this.name = map.get("GNU.sparse.name");
        }
        if (map.containsKey("GNU.sparse.realsize")) {
            this.realSize = ParsingUtils.parseIntValue(map.get("GNU.sparse.realsize"));
        }
    }

    void fillStarSparseData(Map<String, String> map) throws IOException {
        this.starSparse = true;
        if (map.containsKey("SCHILY.realsize")) {
            this.realSize = ParsingUtils.parseLongValue(map.get("SCHILY.realsize"));
        }
    }

    public FileTime getCreationTime() {
        return this.birthTime;
    }

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public long getDataOffset() {
        return this.dataOffset;
    }

    public int getDevMajor() {
        return this.devMajor;
    }

    public int getDevMinor() {
        return this.devMinor;
    }

    public TarArchiveEntry[] getDirectoryEntries() {
        if (this.file == null || !isDirectory()) {
            return EMPTY_TAR_ARCHIVE_ENTRY_ARRAY;
        }
        ArrayList arrayList = new ArrayList();
        try {
            DirectoryStream<Path> directoryStreamNewDirectoryStream = Files.newDirectoryStream(this.file);
            try {
                Iterator<Path> it = directoryStreamNewDirectoryStream.iterator();
                while (it.hasNext()) {
                    arrayList.add(new TarArchiveEntry(it.next()));
                }
                if (directoryStreamNewDirectoryStream != null) {
                    directoryStreamNewDirectoryStream.close();
                }
                return (TarArchiveEntry[]) arrayList.toArray(EMPTY_TAR_ARCHIVE_ENTRY_ARRAY);
            } catch (Throwable th) {
                if (directoryStreamNewDirectoryStream != null) {
                    try {
                        directoryStreamNewDirectoryStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException unused) {
            return EMPTY_TAR_ARCHIVE_ENTRY_ARRAY;
        }
    }

    public String getExtraPaxHeader(String str) {
        return this.extraPaxHeaders.get(str);
    }

    public Map<String, String> getExtraPaxHeaders() {
        return Collections.unmodifiableMap(this.extraPaxHeaders);
    }

    public File getFile() {
        Path path = this.file;
        if (path == null) {
            return null;
        }
        return path.toFile();
    }

    @Deprecated
    public int getGroupId() {
        return (int) this.groupId;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public FileTime getLastAccessTime() {
        return this.aTime;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return getModTime();
    }

    public FileTime getLastModifiedTime() {
        return this.mTime;
    }

    public byte getLinkFlag() {
        return this.linkFlag;
    }

    public String getLinkName() {
        return this.linkName;
    }

    public long getLongGroupId() {
        return this.groupId;
    }

    public long getLongUserId() {
        return this.userId;
    }

    public int getMode() {
        return this.mode;
    }

    public Date getModTime() {
        return FileTimes.toDate(this.mTime);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.name;
    }

    public List<TarArchiveStructSparse> getOrderedSparseHeaders() throws IOException {
        List<TarArchiveStructSparse> list = this.sparseHeaders;
        if (list == null || list.isEmpty()) {
            return Collections.emptyList();
        }
        List<TarArchiveStructSparse> list2 = (List) this.sparseHeaders.stream().filter(new Predicate() { // from class: org.apache.commons.compress.archivers.tar.TarArchiveEntry$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TarArchiveEntry.lambda$getOrderedSparseHeaders$0((TarArchiveStructSparse) obj);
            }
        }).sorted(Comparator.comparingLong(new ToLongFunction() { // from class: org.apache.commons.compress.archivers.tar.TarArchiveEntry$$ExternalSyntheticLambda1
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((TarArchiveStructSparse) obj).getOffset();
            }
        })).collect(Collectors.toList());
        int size = list2.size();
        int i = 0;
        while (i < size) {
            TarArchiveStructSparse tarArchiveStructSparse = list2.get(i);
            i++;
            if (i < size && tarArchiveStructSparse.getOffset() + tarArchiveStructSparse.getNumbytes() > list2.get(i).getOffset()) {
                throw new IOException("Corrupted TAR archive. Sparse blocks for " + getName() + " overlap each other.");
            }
            if (tarArchiveStructSparse.getOffset() + tarArchiveStructSparse.getNumbytes() < 0) {
                throw new IOException("Unreadable TAR archive. Offset and numbytes for sparse block in " + getName() + " too large.");
            }
        }
        if (!list2.isEmpty()) {
            TarArchiveStructSparse tarArchiveStructSparse2 = list2.get(size - 1);
            if (tarArchiveStructSparse2.getOffset() + tarArchiveStructSparse2.getNumbytes() > getRealSize()) {
                throw new IOException("Corrupted TAR archive. Sparse block extends beyond real size of the entry");
            }
        }
        return list2;
    }

    static /* synthetic */ boolean lambda$getOrderedSparseHeaders$0(TarArchiveStructSparse tarArchiveStructSparse) {
        return tarArchiveStructSparse.getOffset() > 0 || tarArchiveStructSparse.getNumbytes() > 0;
    }

    public Path getPath() {
        return this.file;
    }

    public long getRealSize() {
        if (!isSparse()) {
            return getSize();
        }
        return this.realSize;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.size;
    }

    public List<TarArchiveStructSparse> getSparseHeaders() {
        return this.sparseHeaders;
    }

    public FileTime getStatusChangeTime() {
        return this.cTime;
    }

    @Deprecated
    public int getUserId() {
        return (int) this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public int hashCode() {
        return getName().hashCode();
    }

    public boolean isBlockDevice() {
        return this.linkFlag == 52;
    }

    public boolean isCharacterDevice() {
        return this.linkFlag == 51;
    }

    public boolean isCheckSumOK() {
        return this.checkSumOK;
    }

    public boolean isDescendent(TarArchiveEntry tarArchiveEntry) {
        return tarArchiveEntry.getName().startsWith(getName());
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        Path path = this.file;
        if (path != null) {
            return Files.isDirectory(path, this.linkOptions);
        }
        if (this.linkFlag == 53) {
            return true;
        }
        return (isPaxHeader() || isGlobalPaxHeader() || !getName().endsWith("/")) ? false : true;
    }

    public boolean isExtended() {
        return this.isExtended;
    }

    public boolean isFIFO() {
        return this.linkFlag == 54;
    }

    public boolean isFile() {
        Path path = this.file;
        if (path != null) {
            return Files.isRegularFile(path, this.linkOptions);
        }
        byte b = this.linkFlag;
        if (b == 0 || b == 48) {
            return true;
        }
        return (b == 53 || getName().endsWith("/")) ? false : true;
    }

    public boolean isGlobalPaxHeader() {
        return this.linkFlag == 103;
    }

    public boolean isGNULongLinkEntry() {
        return this.linkFlag == 75;
    }

    public boolean isGNULongNameEntry() {
        return this.linkFlag == 76;
    }

    public boolean isGNUSparse() {
        return isOldGNUSparse() || isPaxGNUSparse();
    }

    private boolean isInvalidPrefix(byte[] bArr) {
        byte b = bArr[475];
        if (b == 0) {
            return false;
        }
        if (bArr[156] != 77) {
            return true;
        }
        return (bArr[464] & 128) == 0 && b != 32;
    }

    private boolean isInvalidXtarTime(byte[] bArr, int i, int i2) {
        if ((bArr[i] & 128) == 0) {
            int i3 = i2 - 1;
            for (int i4 = 0; i4 < i3; i4++) {
                byte b = bArr[i + i4];
                if (b < 48 || b > 55) {
                    return true;
                }
            }
            byte b2 = bArr[i + i3];
            if (b2 != 32 && b2 != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isLink() {
        return this.linkFlag == 49;
    }

    public boolean isOldGNUSparse() {
        return this.linkFlag == 83;
    }

    public boolean isPaxGNU1XSparse() {
        return this.paxGNU1XSparse;
    }

    public boolean isPaxGNUSparse() {
        return this.paxGNUSparse;
    }

    public boolean isPaxHeader() {
        byte b = this.linkFlag;
        return b == 120 || b == 88;
    }

    public boolean isSparse() {
        return isGNUSparse() || isStarSparse();
    }

    public boolean isStarSparse() {
        return this.starSparse;
    }

    public boolean isSymbolicLink() {
        return this.linkFlag == 50;
    }

    private boolean isXstar(Map<String, String> map, byte[] bArr) {
        if (ArchiveUtils.matchAsciiBuffer(TarConstants.MAGIC_XSTAR, bArr, TarConstants.XSTAR_MAGIC_OFFSET, 4)) {
            return true;
        }
        String str = map.get("SCHILY.archtype");
        if (str != null) {
            return "xustar".equals(str) || "exustar".equals(str);
        }
        return (isInvalidPrefix(bArr) || isInvalidXtarTime(bArr, TarConstants.XSTAR_ATIME_OFFSET, 12) || isInvalidXtarTime(bArr, TarConstants.XSTAR_CTIME_OFFSET, 12)) ? false : true;
    }

    private long parseOctalOrBinary(byte[] bArr, int i, int i2, boolean z) {
        if (z) {
            try {
                return TarUtils.parseOctalOrBinary(bArr, i, i2);
            } catch (IllegalArgumentException unused) {
                return -1L;
            }
        }
        return TarUtils.parseOctalOrBinary(bArr, i, i2);
    }

    public void parseTarHeader(byte[] bArr) {
        try {
            try {
                parseTarHeader(bArr, TarUtils.DEFAULT_ENCODING);
            } catch (IOException unused) {
                parseTarHeader(bArr, TarUtils.DEFAULT_ENCODING, true, false);
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    public void parseTarHeader(byte[] bArr, ZipEncoding zipEncoding) throws IOException {
        parseTarHeader(bArr, zipEncoding, false, false);
    }

    private void parseTarHeader(byte[] bArr, ZipEncoding zipEncoding, boolean z, boolean z2) throws IOException {
        parseTarHeader(Collections.emptyMap(), bArr, zipEncoding, z, z2);
    }

    private void parseTarHeader(Map<String, String> map, byte[] bArr, ZipEncoding zipEncoding, boolean z, boolean z2) throws IOException {
        try {
            parseTarHeaderUnwrapped(map, bArr, zipEncoding, z, z2);
        } catch (IllegalArgumentException e) {
            throw new IOException("Corrupted TAR archive.", e);
        }
    }

    private void parseTarHeaderUnwrapped(Map<String, String> map, byte[] bArr, ZipEncoding zipEncoding, boolean z, boolean z2) throws IOException {
        String name;
        this.name = z ? TarUtils.parseName(bArr, 0, 100) : TarUtils.parseName(bArr, 0, 100, zipEncoding);
        this.mode = (int) parseOctalOrBinary(bArr, 100, 8, z2);
        this.userId = (int) parseOctalOrBinary(bArr, 108, 8, z2);
        this.groupId = (int) parseOctalOrBinary(bArr, 116, 8, z2);
        long octalOrBinary = TarUtils.parseOctalOrBinary(bArr, 124, 12);
        this.size = octalOrBinary;
        if (octalOrBinary < 0) {
            throw new IOException("broken archive, entry with negative size");
        }
        this.mTime = TimeUtils.unixTimeToFileTime(parseOctalOrBinary(bArr, CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA, 12, z2));
        this.checkSumOK = TarUtils.verifyCheckSum(bArr);
        this.linkFlag = bArr[156];
        this.linkName = z ? TarUtils.parseName(bArr, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, 100) : TarUtils.parseName(bArr, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, 100, zipEncoding);
        this.magic = TarUtils.parseName(bArr, 257, 6);
        this.version = TarUtils.parseName(bArr, 263, 2);
        this.userName = z ? TarUtils.parseName(bArr, RfbProto.secTypeIdent, 32) : TarUtils.parseName(bArr, RfbProto.secTypeIdent, 32, zipEncoding);
        this.groupName = z ? TarUtils.parseName(bArr, 297, 32) : TarUtils.parseName(bArr, 297, 32, zipEncoding);
        byte b = this.linkFlag;
        if (b == 51 || b == 52) {
            this.devMajor = (int) parseOctalOrBinary(bArr, 329, 8, z2);
            this.devMinor = (int) parseOctalOrBinary(bArr, 337, 8, z2);
        }
        int iEvaluateType = evaluateType(map, bArr);
        if (iEvaluateType == 2) {
            this.aTime = fileTimeFromOptionalSeconds(parseOctalOrBinary(bArr, TarConstants.XSTAR_PREFIX_OFFSET, 12, z2));
            this.cTime = fileTimeFromOptionalSeconds(parseOctalOrBinary(bArr, 357, 12, z2));
            this.sparseHeaders = new ArrayList(TarUtils.readSparseStructs(bArr, 386, 4));
            this.isExtended = TarUtils.parseBoolean(bArr, 482);
            this.realSize = TarUtils.parseOctal(bArr, 483, 12);
            return;
        }
        if (iEvaluateType == 4) {
            if (z) {
                name = TarUtils.parseName(bArr, TarConstants.XSTAR_PREFIX_OFFSET, TarConstants.PREFIXLEN_XSTAR);
            } else {
                name = TarUtils.parseName(bArr, TarConstants.XSTAR_PREFIX_OFFSET, TarConstants.PREFIXLEN_XSTAR, zipEncoding);
            }
            if (!name.isEmpty()) {
                this.name = name + "/" + this.name;
            }
            this.aTime = fileTimeFromOptionalSeconds(parseOctalOrBinary(bArr, TarConstants.XSTAR_ATIME_OFFSET, 12, z2));
            this.cTime = fileTimeFromOptionalSeconds(parseOctalOrBinary(bArr, TarConstants.XSTAR_CTIME_OFFSET, 12, z2));
            return;
        }
        String name2 = z ? TarUtils.parseName(bArr, TarConstants.XSTAR_PREFIX_OFFSET, 155) : TarUtils.parseName(bArr, TarConstants.XSTAR_PREFIX_OFFSET, 155, zipEncoding);
        if (isDirectory() && !this.name.endsWith("/")) {
            this.name += "/";
        }
        if (name2.isEmpty()) {
            return;
        }
        this.name = name2 + "/" + this.name;
    }

    private void processPaxHeader(String str, String str2) throws IOException {
        processPaxHeader(str, str2, this.extraPaxHeaders);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void processPaxHeader(String str, String str2, Map<String, String> map) throws IOException {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1916861932:
                if (str.equals("SCHILY.devmajor")) {
                    b = 0;
                }
                break;
            case -1916619760:
                if (str.equals("SCHILY.devminor")) {
                    b = 1;
                }
                break;
            case -277496563:
                if (str.equals("GNU.sparse.realsize")) {
                    b = 2;
                }
                break;
            case -160380561:
                if (str.equals("GNU.sparse.size")) {
                    b = 3;
                }
                break;
            case 102338:
                if (str.equals("gid")) {
                    b = 4;
                }
                break;
            case 115792:
                if (str.equals("uid")) {
                    b = 5;
                }
                break;
            case 3433509:
                if (str.equals("path")) {
                    b = 6;
                }
                break;
            case 3530753:
                if (str.equals("size")) {
                    b = 7;
                }
                break;
            case 93141678:
                if (str.equals("atime")) {
                    b = 8;
                }
                break;
            case 94988720:
                if (str.equals("ctime")) {
                    b = 9;
                }
                break;
            case 98496370:
                if (str.equals("gname")) {
                    b = 10;
                }
                break;
            case 104223930:
                if (str.equals("mtime")) {
                    b = 11;
                }
                break;
            case 111425664:
                if (str.equals("uname")) {
                    b = 12;
                }
                break;
            case 304222685:
                if (str.equals("LIBARCHIVE.creationtime")) {
                    b = 13;
                }
                break;
            case 530706950:
                if (str.equals("SCHILY.filetype")) {
                    b = Ascii.SO;
                }
                break;
            case 1195018015:
                if (str.equals("linkpath")) {
                    b = Ascii.SI;
                }
                break;
        }
        switch (b) {
            case 0:
                int intValue = ParsingUtils.parseIntValue(str2);
                if (intValue < 0) {
                    throw new IOException("Corrupted TAR archive. Dev-Major is negative");
                }
                setDevMajor(intValue);
                return;
            case 1:
                int intValue2 = ParsingUtils.parseIntValue(str2);
                if (intValue2 < 0) {
                    throw new IOException("Corrupted TAR archive. Dev-Minor is negative");
                }
                setDevMinor(intValue2);
                return;
            case 2:
                fillGNUSparse1xData(map);
                return;
            case 3:
                fillGNUSparse0xData(map);
                return;
            case 4:
                setGroupId(ParsingUtils.parseLongValue(str2));
                return;
            case 5:
                setUserId(ParsingUtils.parseLongValue(str2));
                return;
            case 6:
                setName(str2);
                return;
            case 7:
                long longValue = ParsingUtils.parseLongValue(str2);
                if (longValue < 0) {
                    throw new IOException("Corrupted TAR archive. Entry size is negative");
                }
                setSize(longValue);
                return;
            case 8:
                setLastAccessTime(FileTime.from(parseInstantFromDecimalSeconds(str2)));
                return;
            case 9:
                setStatusChangeTime(FileTime.from(parseInstantFromDecimalSeconds(str2)));
                return;
            case 10:
                setGroupName(str2);
                return;
            case 11:
                setLastModifiedTime(FileTime.from(parseInstantFromDecimalSeconds(str2)));
                return;
            case 12:
                setUserName(str2);
                return;
            case 13:
                setCreationTime(FileTime.from(parseInstantFromDecimalSeconds(str2)));
                return;
            case 14:
                if ("sparse".equals(str2)) {
                    fillStarSparseData(map);
                    return;
                }
                return;
            case 15:
                setLinkName(str2);
                return;
            default:
                this.extraPaxHeaders.put(str, str2);
                return;
        }
    }

    private void readFileMode(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        if (Files.isDirectory(path, linkOptionArr)) {
            this.mode = DEFAULT_DIR_MODE;
            this.linkFlag = TarConstants.LF_DIR;
            int length = str.length();
            if (length == 0 || str.charAt(length - 1) != '/') {
                this.name = str + "/";
                return;
            } else {
                this.name = str;
                return;
            }
        }
        this.mode = DEFAULT_FILE_MODE;
        this.linkFlag = TarConstants.LF_NORMAL;
        this.name = str;
        this.size = Files.size(path);
    }

    private void readOsSpecificProperties(Path path, LinkOption... linkOptionArr) throws IOException {
        Set<String> setSupportedFileAttributeViews = path.getFileSystem().supportedFileAttributeViews();
        if (setSupportedFileAttributeViews.contains("posix")) {
            PosixFileAttributes posixFileAttributes = (PosixFileAttributes) Files.readAttributes(path, PosixFileAttributes.class, linkOptionArr);
            setLastModifiedTime(posixFileAttributes.lastModifiedTime());
            setCreationTime(posixFileAttributes.creationTime());
            setLastAccessTime(posixFileAttributes.lastAccessTime());
            this.userName = posixFileAttributes.owner().getName();
            this.groupName = posixFileAttributes.group().getName();
            if (setSupportedFileAttributeViews.contains("unix")) {
                this.userId = ((Number) Files.getAttribute(path, "unix:uid", linkOptionArr)).longValue();
                this.groupId = ((Number) Files.getAttribute(path, "unix:gid", linkOptionArr)).longValue();
                try {
                    setStatusChangeTime((FileTime) Files.getAttribute(path, "unix:ctime", linkOptionArr));
                    return;
                } catch (IllegalArgumentException unused) {
                    return;
                }
            }
            return;
        }
        if (setSupportedFileAttributeViews.contains("dos")) {
            DosFileAttributes dosFileAttributes = (DosFileAttributes) Files.readAttributes(path, DosFileAttributes.class, linkOptionArr);
            setLastModifiedTime(dosFileAttributes.lastModifiedTime());
            setCreationTime(dosFileAttributes.creationTime());
            setLastAccessTime(dosFileAttributes.lastAccessTime());
        } else {
            BasicFileAttributes attributes = Files.readAttributes(path, (Class<BasicFileAttributes>) BasicFileAttributes.class, linkOptionArr);
            setLastModifiedTime(attributes.lastModifiedTime());
            setCreationTime(attributes.creationTime());
            setLastAccessTime(attributes.lastAccessTime());
        }
        this.userName = Files.getOwner(path, linkOptionArr).getName();
    }

    public void setCreationTime(FileTime fileTime) {
        this.birthTime = fileTime;
    }

    public void setDataOffset(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("The offset can not be smaller than 0");
        }
        this.dataOffset = j;
    }

    public void setDevMajor(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Major device number is out of range: " + i);
        }
        this.devMajor = i;
    }

    public void setDevMinor(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Minor device number is out of range: " + i);
        }
        this.devMinor = i;
    }

    public void setGroupId(int i) {
        setGroupId(i);
    }

    public void setGroupId(long j) {
        this.groupId = j;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setIds(int i, int i2) {
        setUserId(i);
        setGroupId(i2);
    }

    public void setLastAccessTime(FileTime fileTime) {
        this.aTime = fileTime;
    }

    public void setLastModifiedTime(FileTime fileTime) {
        this.mTime = (FileTime) Objects.requireNonNull(fileTime, "Time must not be null");
    }

    public void setLinkName(String str) {
        this.linkName = str;
    }

    public void setMode(int i) {
        this.mode = i;
    }

    public void setModTime(Date date) {
        setLastModifiedTime(FileTimes.toFileTime(date));
    }

    public void setModTime(FileTime fileTime) {
        setLastModifiedTime(fileTime);
    }

    public void setModTime(long j) {
        setLastModifiedTime(FileTime.fromMillis(j));
    }

    public void setName(String str) {
        this.name = normalizeFileName(str, this.preserveAbsolutePath);
    }

    public void setNames(String str, String str2) {
        setUserName(str);
        setGroupName(str2);
    }

    public void setSize(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Size is out of range: " + j);
        }
        this.size = j;
    }

    public void setSparseHeaders(List<TarArchiveStructSparse> list) {
        this.sparseHeaders = list;
    }

    public void setStatusChangeTime(FileTime fileTime) {
        this.cTime = fileTime;
    }

    public void setUserId(int i) {
        setUserId(i);
    }

    public void setUserId(long j) {
        this.userId = j;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    void updateEntryFromPaxHeaders(Map<String, String> map) throws IOException {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            processPaxHeader(entry.getKey(), entry.getValue(), map);
        }
    }

    public void writeEntryHeader(byte[] bArr) {
        try {
            try {
                writeEntryHeader(bArr, TarUtils.DEFAULT_ENCODING, false);
            } catch (IOException unused) {
                writeEntryHeader(bArr, TarUtils.FALLBACK_ENCODING, false);
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    public void writeEntryHeader(byte[] bArr, ZipEncoding zipEncoding, boolean z) throws IOException {
        int iWriteEntryHeaderField = writeEntryHeaderField(TimeUtils.toUnixTime(this.mTime), bArr, writeEntryHeaderField(this.size, bArr, writeEntryHeaderField(this.groupId, bArr, writeEntryHeaderField(this.userId, bArr, writeEntryHeaderField(this.mode, bArr, TarUtils.formatNameBytes(this.name, bArr, 0, 100, zipEncoding), 8, z), 8, z), 8, z), 12, z), 12, z);
        int iFill = fill((byte) 32, iWriteEntryHeaderField, bArr, 8);
        bArr[iFill] = this.linkFlag;
        int iWriteEntryHeaderField2 = writeEntryHeaderField(this.devMinor, bArr, writeEntryHeaderField(this.devMajor, bArr, TarUtils.formatNameBytes(this.groupName, bArr, TarUtils.formatNameBytes(this.userName, bArr, TarUtils.formatNameBytes(this.version, bArr, TarUtils.formatNameBytes(this.magic, bArr, TarUtils.formatNameBytes(this.linkName, bArr, iFill + 1, 100, zipEncoding), 6), 2), 32, zipEncoding), 32, zipEncoding), 8, z), 8, z);
        if (z) {
            iWriteEntryHeaderField2 = fill(0, fill(0, writeEntryHeaderOptionalTimeField(this.cTime, writeEntryHeaderOptionalTimeField(this.aTime, fill(0, iWriteEntryHeaderField2, bArr, TarConstants.PREFIXLEN_XSTAR), bArr, 12), bArr, 12), bArr, 8), bArr, 4);
        }
        fill(0, iWriteEntryHeaderField2, bArr, bArr.length - iWriteEntryHeaderField2);
        TarUtils.formatCheckSumOctalBytes(TarUtils.computeCheckSum(bArr), bArr, iWriteEntryHeaderField, 8);
    }

    private int writeEntryHeaderField(long j, byte[] bArr, int i, int i2, boolean z) {
        if (!z && (j < 0 || j >= (1 << ((i2 - 1) * 3)))) {
            return TarUtils.formatLongOctalBytes(0L, bArr, i, i2);
        }
        return TarUtils.formatLongOctalOrBinaryBytes(j, bArr, i, i2);
    }

    private int writeEntryHeaderOptionalTimeField(FileTime fileTime, int i, byte[] bArr, int i2) {
        if (fileTime != null) {
            return writeEntryHeaderField(TimeUtils.toUnixTime(fileTime), bArr, i, i2, true);
        }
        return fill(0, i, bArr, i2);
    }
}
