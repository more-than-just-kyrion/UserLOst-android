package org.apache.commons.compress.archivers.zip;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.EntryStreamOffsets;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.TimeUtils;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes3.dex */
public class ZipArchiveEntry extends ZipEntry implements ArchiveEntry, EntryStreamOffsets {
    public static final int CRC_UNKNOWN = -1;
    static final ZipArchiveEntry[] EMPTY_ARRAY = new ZipArchiveEntry[0];
    static LinkedList<ZipArchiveEntry> EMPTY_LINKED_LIST = new LinkedList<>();
    public static final int PLATFORM_FAT = 0;
    public static final int PLATFORM_UNIX = 3;
    private static final int SHORT_MASK = 65535;
    private static final int SHORT_SHIFT = 16;
    private static final String ZIP_DIR_SEP = "/";
    private int alignment;
    private CommentSource commentSource;
    private long dataOffset;
    private long diskNumberStart;
    private long externalAttributes;
    private final Function<ZipShort, ZipExtraField> extraFieldFactory;
    private ZipExtraField[] extraFields;
    private GeneralPurposeBit generalPurposeBit;
    private int internalAttributes;
    private boolean isStreamContiguous;
    private boolean lastModifiedDateSet;
    private long localHeaderOffset;
    private int method;
    private String name;
    private NameSource nameSource;
    private int platform;
    private int rawFlag;
    private byte[] rawName;
    private long size;
    private long time;
    private UnparseableExtraFieldData unparseableExtra;
    private int versionMadeBy;
    private int versionRequired;

    public enum CommentSource {
        COMMENT,
        UNICODE_EXTRA_FIELD
    }

    public enum NameSource {
        NAME,
        NAME_WITH_EFS_FLAG,
        UNICODE_EXTRA_FIELD
    }

    public enum ExtraFieldParsingMode implements ExtraFieldParsingBehavior {
        BEST_EFFORT(ExtraFieldUtils.UnparseableExtraField.READ) { // from class: org.apache.commons.compress.archivers.zip.ZipArchiveEntry.ExtraFieldParsingMode.1
            @Override // org.apache.commons.compress.archivers.zip.ZipArchiveEntry.ExtraFieldParsingMode, org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
            public ZipExtraField fill(ZipExtraField zipExtraField, byte[] bArr, int i, int i2, boolean z) {
                return ExtraFieldParsingMode.fillAndMakeUnrecognizedOnError(zipExtraField, bArr, i, i2, z);
            }
        },
        STRICT_FOR_KNOW_EXTRA_FIELDS(ExtraFieldUtils.UnparseableExtraField.READ),
        ONLY_PARSEABLE_LENIENT(ExtraFieldUtils.UnparseableExtraField.SKIP) { // from class: org.apache.commons.compress.archivers.zip.ZipArchiveEntry.ExtraFieldParsingMode.2
            @Override // org.apache.commons.compress.archivers.zip.ZipArchiveEntry.ExtraFieldParsingMode, org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
            public ZipExtraField fill(ZipExtraField zipExtraField, byte[] bArr, int i, int i2, boolean z) {
                return ExtraFieldParsingMode.fillAndMakeUnrecognizedOnError(zipExtraField, bArr, i, i2, z);
            }
        },
        ONLY_PARSEABLE_STRICT(ExtraFieldUtils.UnparseableExtraField.SKIP),
        DRACONIC(ExtraFieldUtils.UnparseableExtraField.THROW);

        private final ExtraFieldUtils.UnparseableExtraField onUnparseableData;

        /* JADX INFO: Access modifiers changed from: private */
        public static ZipExtraField fillAndMakeUnrecognizedOnError(ZipExtraField zipExtraField, byte[] bArr, int i, int i2, boolean z) {
            try {
                return ExtraFieldUtils.fillExtraField(zipExtraField, bArr, i, i2, z);
            } catch (ZipException unused) {
                UnrecognizedExtraField unrecognizedExtraField = new UnrecognizedExtraField();
                unrecognizedExtraField.setHeaderId(zipExtraField.getHeaderId());
                if (z) {
                    unrecognizedExtraField.setLocalFileDataData(Arrays.copyOfRange(bArr, i, i2 + i));
                } else {
                    unrecognizedExtraField.setCentralDirectoryData(Arrays.copyOfRange(bArr, i, i2 + i));
                }
                return unrecognizedExtraField;
            }
        }

        ExtraFieldParsingMode(ExtraFieldUtils.UnparseableExtraField unparseableExtraField) {
            this.onUnparseableData = unparseableExtraField;
        }

        @Override // org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
        public ZipExtraField createExtraField(ZipShort zipShort) {
            return ExtraFieldUtils.createExtraField(zipShort);
        }

        @Override // org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
        public ZipExtraField fill(ZipExtraField zipExtraField, byte[] bArr, int i, int i2, boolean z) throws ZipException {
            return ExtraFieldUtils.fillExtraField(zipExtraField, bArr, i, i2, z);
        }

        @Override // org.apache.commons.compress.archivers.zip.UnparseableExtraFieldBehavior
        public ZipExtraField onUnparseableExtraField(byte[] bArr, int i, int i2, boolean z, int i3) throws ZipException {
            return this.onUnparseableData.onUnparseableExtraField(bArr, i, i2, z, i3);
        }
    }

    private static boolean canConvertToInfoZipExtendedTimestamp(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) {
        return TimeUtils.isUnixTime(fileTime) && TimeUtils.isUnixTime(fileTime2) && TimeUtils.isUnixTime(fileTime3);
    }

    private static boolean isDirectoryEntryName(String str) {
        return str.endsWith(ZIP_DIR_SEP);
    }

    private static String toDirectoryEntryName(String str) {
        return isDirectoryEntryName(str) ? str : str + ZIP_DIR_SEP;
    }

    private static String toEntryName(File file, String str) {
        return file.isDirectory() ? toDirectoryEntryName(str) : str;
    }

    private static String toEntryName(Path path, String str, LinkOption... linkOptionArr) {
        return Files.isDirectory(path, linkOptionArr) ? toDirectoryEntryName(str) : str;
    }

    protected ZipArchiveEntry() {
        this("");
    }

    public ZipArchiveEntry(File file, String str) {
        this((Function<ZipShort, ZipExtraField>) null, file, str);
    }

    private ZipArchiveEntry(Function<ZipShort, ZipExtraField> function, File file, String str) {
        this(function, toEntryName(file, str));
        try {
            setAttributes(file.toPath(), new LinkOption[0]);
        } catch (IOException unused) {
            if (file.isFile()) {
                setSize(file.length());
            }
            setTime(file.lastModified());
        }
    }

    private ZipArchiveEntry(Function<ZipShort, ZipExtraField> function, ZipEntry zipEntry) throws ZipException {
        super(zipEntry);
        this.method = -1;
        this.size = -1L;
        this.platform = 0;
        this.generalPurposeBit = new GeneralPurposeBit();
        this.localHeaderOffset = -1L;
        this.dataOffset = -1L;
        this.nameSource = NameSource.NAME;
        this.commentSource = CommentSource.COMMENT;
        this.time = -1L;
        this.extraFieldFactory = function;
        setName(zipEntry.getName());
        byte[] extra = zipEntry.getExtra();
        if (extra != null) {
            setExtraFields(parseExtraFields(extra, true, ExtraFieldParsingMode.BEST_EFFORT));
        } else {
            setExtra();
        }
        setMethod(zipEntry.getMethod());
        this.size = zipEntry.getSize();
    }

    private ZipArchiveEntry(Function<ZipShort, ZipExtraField> function, Path path, String str, LinkOption... linkOptionArr) throws IOException {
        this(function, toEntryName(path, str, linkOptionArr));
        setAttributes(path, linkOptionArr);
    }

    private ZipArchiveEntry(Function<ZipShort, ZipExtraField> function, String str) {
        super(str);
        this.method = -1;
        this.size = -1L;
        this.platform = 0;
        this.generalPurposeBit = new GeneralPurposeBit();
        this.localHeaderOffset = -1L;
        this.dataOffset = -1L;
        this.nameSource = NameSource.NAME;
        this.commentSource = CommentSource.COMMENT;
        this.time = -1L;
        this.extraFieldFactory = function;
        setName(str);
    }

    public ZipArchiveEntry(ZipEntry zipEntry) throws ZipException {
        this((Function<ZipShort, ZipExtraField>) null, zipEntry);
    }

    public ZipArchiveEntry(Path path, String str, LinkOption... linkOptionArr) throws IOException {
        this(null, path, str, linkOptionArr);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ZipArchiveEntry(String str) {
        this((Function<ZipShort, ZipExtraField>) null, str);
    }

    public ZipArchiveEntry(ZipArchiveEntry zipArchiveEntry) throws ZipException {
        this((ZipEntry) zipArchiveEntry);
        setInternalAttributes(zipArchiveEntry.getInternalAttributes());
        setExternalAttributes(zipArchiveEntry.getExternalAttributes());
        setExtraFields(zipArchiveEntry.getAllExtraFieldsNoCopy());
        setPlatform(zipArchiveEntry.getPlatform());
        GeneralPurposeBit generalPurposeBit = zipArchiveEntry.getGeneralPurposeBit();
        setGeneralPurposeBit(generalPurposeBit == null ? null : (GeneralPurposeBit) generalPurposeBit.clone());
    }

    public void addAsFirstExtraField(ZipExtraField zipExtraField) {
        if (zipExtraField instanceof UnparseableExtraFieldData) {
            this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
        } else {
            if (getExtraField(zipExtraField.getHeaderId()) != null) {
                internalRemoveExtraField(zipExtraField.getHeaderId());
            }
            ZipExtraField[] zipExtraFieldArr = this.extraFields;
            ZipExtraField[] zipExtraFieldArr2 = new ZipExtraField[zipExtraFieldArr != null ? zipExtraFieldArr.length + 1 : 1];
            this.extraFields = zipExtraFieldArr2;
            zipExtraFieldArr2[0] = zipExtraField;
            if (zipExtraFieldArr != null) {
                System.arraycopy(zipExtraFieldArr, 0, zipExtraFieldArr2, 1, zipExtraFieldArr2.length - 1);
            }
        }
        setExtra();
    }

    public void addExtraField(ZipExtraField zipExtraField) {
        internalAddExtraField(zipExtraField);
        setExtra();
    }

    private void addInfoZipExtendedTimestamp(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) {
        X5455_ExtendedTimestamp x5455_ExtendedTimestamp = new X5455_ExtendedTimestamp();
        if (fileTime != null) {
            x5455_ExtendedTimestamp.setModifyFileTime(fileTime);
        }
        if (fileTime2 != null) {
            x5455_ExtendedTimestamp.setAccessFileTime(fileTime2);
        }
        if (fileTime3 != null) {
            x5455_ExtendedTimestamp.setCreateFileTime(fileTime3);
        }
        internalAddExtraField(x5455_ExtendedTimestamp);
    }

    private void addNTFSTimestamp(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) {
        X000A_NTFS x000a_ntfs = new X000A_NTFS();
        if (fileTime != null) {
            x000a_ntfs.setModifyFileTime(fileTime);
        }
        if (fileTime2 != null) {
            x000a_ntfs.setAccessFileTime(fileTime2);
        }
        if (fileTime3 != null) {
            x000a_ntfs.setCreateFileTime(fileTime3);
        }
        internalAddExtraField(x000a_ntfs);
    }

    @Override // java.util.zip.ZipEntry
    public Object clone() {
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) super.clone();
        zipArchiveEntry.setInternalAttributes(getInternalAttributes());
        zipArchiveEntry.setExternalAttributes(getExternalAttributes());
        zipArchiveEntry.setExtraFields(getAllExtraFieldsNoCopy());
        return zipArchiveEntry;
    }

    private ZipExtraField[] copyOf(ZipExtraField[] zipExtraFieldArr, int i) {
        return (ZipExtraField[]) Arrays.copyOf(zipExtraFieldArr, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) obj;
        if (!Objects.equals(getName(), zipArchiveEntry.getName())) {
            return false;
        }
        String comment = getComment();
        String comment2 = zipArchiveEntry.getComment();
        if (comment == null) {
            comment = "";
        }
        if (comment2 == null) {
            comment2 = "";
        }
        return Objects.equals(getLastModifiedTime(), zipArchiveEntry.getLastModifiedTime()) && Objects.equals(getLastAccessTime(), zipArchiveEntry.getLastAccessTime()) && Objects.equals(getCreationTime(), zipArchiveEntry.getCreationTime()) && comment.equals(comment2) && getInternalAttributes() == zipArchiveEntry.getInternalAttributes() && getPlatform() == zipArchiveEntry.getPlatform() && getExternalAttributes() == zipArchiveEntry.getExternalAttributes() && getMethod() == zipArchiveEntry.getMethod() && getSize() == zipArchiveEntry.getSize() && getCrc() == zipArchiveEntry.getCrc() && getCompressedSize() == zipArchiveEntry.getCompressedSize() && Arrays.equals(getCentralDirectoryExtra(), zipArchiveEntry.getCentralDirectoryExtra()) && Arrays.equals(getLocalFileDataExtra(), zipArchiveEntry.getLocalFileDataExtra()) && this.localHeaderOffset == zipArchiveEntry.localHeaderOffset && this.dataOffset == zipArchiveEntry.dataOffset && this.generalPurposeBit.equals(zipArchiveEntry.generalPurposeBit);
    }

    private ZipExtraField findMatching(final ZipShort zipShort, List<ZipExtraField> list) {
        return list.stream().filter(new Predicate() { // from class: org.apache.commons.compress.archivers.zip.ZipArchiveEntry$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return zipShort.equals(((ZipExtraField) obj).getHeaderId());
            }
        }).findFirst().orElse(null);
    }

    private ZipExtraField findUnparseable(List<ZipExtraField> list) {
        Stream<ZipExtraField> stream = list.stream();
        final Class<UnparseableExtraFieldData> cls = UnparseableExtraFieldData.class;
        Objects.requireNonNull(UnparseableExtraFieldData.class);
        return stream.filter(new Predicate() { // from class: org.apache.commons.compress.archivers.zip.ZipArchiveEntry$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return cls.isInstance((ZipExtraField) obj);
            }
        }).findFirst().orElse(null);
    }

    protected int getAlignment() {
        return this.alignment;
    }

    private ZipExtraField[] getAllExtraFields() {
        ZipExtraField[] allExtraFieldsNoCopy = getAllExtraFieldsNoCopy();
        return allExtraFieldsNoCopy == this.extraFields ? copyOf(allExtraFieldsNoCopy, allExtraFieldsNoCopy.length) : allExtraFieldsNoCopy;
    }

    private ZipExtraField[] getAllExtraFieldsNoCopy() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        if (zipExtraFieldArr == null) {
            return getUnparseableOnly();
        }
        return this.unparseableExtra != null ? getMergedFields() : zipExtraFieldArr;
    }

    public byte[] getCentralDirectoryExtra() {
        return ExtraFieldUtils.mergeCentralDirectoryData(getAllExtraFieldsNoCopy());
    }

    public CommentSource getCommentSource() {
        return this.commentSource;
    }

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public long getDataOffset() {
        return this.dataOffset;
    }

    public long getDiskNumberStart() {
        return this.diskNumberStart;
    }

    public long getExternalAttributes() {
        return this.externalAttributes;
    }

    public ZipExtraField getExtraField(ZipShort zipShort) {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        if (zipExtraFieldArr == null) {
            return null;
        }
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            if (zipShort.equals(zipExtraField.getHeaderId())) {
                return zipExtraField;
            }
        }
        return null;
    }

    public ZipExtraField[] getExtraFields() {
        return getParseableExtraFields();
    }

    public ZipExtraField[] getExtraFields(boolean z) {
        return z ? getAllExtraFields() : getParseableExtraFields();
    }

    public ZipExtraField[] getExtraFields(ExtraFieldParsingBehavior extraFieldParsingBehavior) throws ZipException {
        ZipExtraField zipExtraFieldFindMatching;
        if (extraFieldParsingBehavior == ExtraFieldParsingMode.BEST_EFFORT) {
            return getExtraFields(true);
        }
        if (extraFieldParsingBehavior == ExtraFieldParsingMode.ONLY_PARSEABLE_LENIENT) {
            return getExtraFields(false);
        }
        ArrayList<ZipExtraField> arrayList = new ArrayList(Arrays.asList(parseExtraFields(getExtra(), true, extraFieldParsingBehavior)));
        ArrayList arrayList2 = new ArrayList(Arrays.asList(parseExtraFields(getCentralDirectoryExtra(), false, extraFieldParsingBehavior)));
        ArrayList arrayList3 = new ArrayList();
        for (ZipExtraField zipExtraField : arrayList) {
            if (zipExtraField instanceof UnparseableExtraFieldData) {
                zipExtraFieldFindMatching = findUnparseable(arrayList2);
            } else {
                zipExtraFieldFindMatching = findMatching(zipExtraField.getHeaderId(), arrayList2);
            }
            if (zipExtraFieldFindMatching != null) {
                byte[] centralDirectoryData = zipExtraFieldFindMatching.getCentralDirectoryData();
                if (centralDirectoryData != null && centralDirectoryData.length > 0) {
                    zipExtraField.parseFromCentralDirectoryData(centralDirectoryData, 0, centralDirectoryData.length);
                }
                arrayList2.remove(zipExtraFieldFindMatching);
            }
            arrayList3.add(zipExtraField);
        }
        arrayList3.addAll(arrayList2);
        return (ZipExtraField[]) arrayList3.toArray(ExtraFieldUtils.EMPTY_ZIP_EXTRA_FIELD_ARRAY);
    }

    public GeneralPurposeBit getGeneralPurposeBit() {
        return this.generalPurposeBit;
    }

    public int getInternalAttributes() {
        return this.internalAttributes;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return new Date(getTime());
    }

    public byte[] getLocalFileDataExtra() {
        byte[] extra = getExtra();
        return extra != null ? extra : ByteUtils.EMPTY_BYTE_ARRAY;
    }

    public long getLocalHeaderOffset() {
        return this.localHeaderOffset;
    }

    private ZipExtraField[] getMergedFields() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        ZipExtraField[] zipExtraFieldArrCopyOf = copyOf(zipExtraFieldArr, zipExtraFieldArr.length + 1);
        zipExtraFieldArrCopyOf[this.extraFields.length] = this.unparseableExtra;
        return zipExtraFieldArrCopyOf;
    }

    @Override // java.util.zip.ZipEntry
    public int getMethod() {
        return this.method;
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        String str = this.name;
        return str == null ? super.getName() : str;
    }

    public NameSource getNameSource() {
        return this.nameSource;
    }

    private ZipExtraField[] getParseableExtraFields() {
        ZipExtraField[] parseableExtraFieldsNoCopy = getParseableExtraFieldsNoCopy();
        return parseableExtraFieldsNoCopy == this.extraFields ? copyOf(parseableExtraFieldsNoCopy, parseableExtraFieldsNoCopy.length) : parseableExtraFieldsNoCopy;
    }

    private ZipExtraField[] getParseableExtraFieldsNoCopy() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        return zipExtraFieldArr == null ? ExtraFieldUtils.EMPTY_ZIP_EXTRA_FIELD_ARRAY : zipExtraFieldArr;
    }

    public int getPlatform() {
        return this.platform;
    }

    public int getRawFlag() {
        return this.rawFlag;
    }

    public byte[] getRawName() {
        byte[] bArr = this.rawName;
        if (bArr != null) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        return null;
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.size;
    }

    @Override // java.util.zip.ZipEntry
    public long getTime() {
        if (this.lastModifiedDateSet) {
            return getLastModifiedTime().toMillis();
        }
        long j = this.time;
        return j != -1 ? j : super.getTime();
    }

    public int getUnixMode() {
        if (this.platform != 3) {
            return 0;
        }
        return (int) ((getExternalAttributes() >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    public UnparseableExtraFieldData getUnparseableExtraFieldData() {
        return this.unparseableExtra;
    }

    private ZipExtraField[] getUnparseableOnly() {
        UnparseableExtraFieldData unparseableExtraFieldData = this.unparseableExtra;
        return unparseableExtraFieldData == null ? ExtraFieldUtils.EMPTY_ZIP_EXTRA_FIELD_ARRAY : new ZipExtraField[]{unparseableExtraFieldData};
    }

    public int getVersionMadeBy() {
        return this.versionMadeBy;
    }

    public int getVersionRequired() {
        return this.versionRequired;
    }

    @Override // java.util.zip.ZipEntry
    public int hashCode() {
        return getName().hashCode();
    }

    private void internalAddExtraField(ZipExtraField zipExtraField) {
        if (zipExtraField instanceof UnparseableExtraFieldData) {
            this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
            return;
        }
        if (this.extraFields == null) {
            this.extraFields = new ZipExtraField[]{zipExtraField};
            return;
        }
        if (getExtraField(zipExtraField.getHeaderId()) != null) {
            internalRemoveExtraField(zipExtraField.getHeaderId());
        }
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        ZipExtraField[] zipExtraFieldArrCopyOf = copyOf(zipExtraFieldArr, zipExtraFieldArr.length + 1);
        zipExtraFieldArrCopyOf[zipExtraFieldArrCopyOf.length - 1] = zipExtraField;
        this.extraFields = zipExtraFieldArrCopyOf;
    }

    private void internalRemoveExtraField(ZipShort zipShort) {
        if (this.extraFields == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (ZipExtraField zipExtraField : this.extraFields) {
            if (!zipShort.equals(zipExtraField.getHeaderId())) {
                arrayList.add(zipExtraField);
            }
        }
        if (this.extraFields.length == arrayList.size()) {
            return;
        }
        this.extraFields = (ZipExtraField[]) arrayList.toArray(ExtraFieldUtils.EMPTY_ZIP_EXTRA_FIELD_ARRAY);
    }

    private void internalSetLastModifiedTime(FileTime fileTime) {
        super.setLastModifiedTime(fileTime);
        this.time = fileTime.toMillis();
        this.lastModifiedDateSet = true;
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return isDirectoryEntryName(getName());
    }

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public boolean isStreamContiguous() {
        return this.isStreamContiguous;
    }

    public boolean isUnixSymlink() {
        return (getUnixMode() & 61440) == 40960;
    }

    private void mergeExtraFields(ZipExtraField[] zipExtraFieldArr, boolean z) {
        ZipExtraField extraField;
        if (this.extraFields == null) {
            setExtraFields(zipExtraFieldArr);
            return;
        }
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            if (zipExtraField instanceof UnparseableExtraFieldData) {
                extraField = this.unparseableExtra;
            } else {
                extraField = getExtraField(zipExtraField.getHeaderId());
            }
            if (extraField == null) {
                internalAddExtraField(zipExtraField);
            } else {
                byte[] localFileDataData = z ? zipExtraField.getLocalFileDataData() : zipExtraField.getCentralDirectoryData();
                if (z) {
                    try {
                        extraField.parseFromLocalFileData(localFileDataData, 0, localFileDataData.length);
                    } catch (ZipException unused) {
                        UnrecognizedExtraField unrecognizedExtraField = new UnrecognizedExtraField();
                        unrecognizedExtraField.setHeaderId(extraField.getHeaderId());
                        if (z) {
                            unrecognizedExtraField.setLocalFileDataData(localFileDataData);
                            unrecognizedExtraField.setCentralDirectoryData(extraField.getCentralDirectoryData());
                        } else {
                            unrecognizedExtraField.setLocalFileDataData(extraField.getLocalFileDataData());
                            unrecognizedExtraField.setCentralDirectoryData(localFileDataData);
                        }
                        internalRemoveExtraField(extraField.getHeaderId());
                        internalAddExtraField(unrecognizedExtraField);
                    }
                } else {
                    extraField.parseFromCentralDirectoryData(localFileDataData, 0, localFileDataData.length);
                }
            }
        }
        setExtra();
    }

    private ZipExtraField[] parseExtraFields(byte[] bArr, boolean z, final ExtraFieldParsingBehavior extraFieldParsingBehavior) throws ZipException {
        if (this.extraFieldFactory != null) {
            return ExtraFieldUtils.parse(bArr, z, new ExtraFieldParsingBehavior() { // from class: org.apache.commons.compress.archivers.zip.ZipArchiveEntry.1
                @Override // org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
                public ZipExtraField createExtraField(ZipShort zipShort) throws IllegalAccessException, ZipException, InstantiationException {
                    ZipExtraField zipExtraField = (ZipExtraField) ZipArchiveEntry.this.extraFieldFactory.apply(zipShort);
                    return zipExtraField == null ? extraFieldParsingBehavior.createExtraField(zipShort) : zipExtraField;
                }

                @Override // org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
                public ZipExtraField fill(ZipExtraField zipExtraField, byte[] bArr2, int i, int i2, boolean z2) throws ZipException {
                    return extraFieldParsingBehavior.fill(zipExtraField, bArr2, i, i2, z2);
                }

                @Override // org.apache.commons.compress.archivers.zip.UnparseableExtraFieldBehavior
                public ZipExtraField onUnparseableExtraField(byte[] bArr2, int i, int i2, boolean z2, int i3) throws ZipException {
                    return extraFieldParsingBehavior.onUnparseableExtraField(bArr2, i, i2, z2, i3);
                }
            });
        }
        return ExtraFieldUtils.parse(bArr, z, extraFieldParsingBehavior);
    }

    public void removeExtraField(ZipShort zipShort) {
        if (getExtraField(zipShort) == null) {
            throw new NoSuchElementException();
        }
        internalRemoveExtraField(zipShort);
        setExtra();
    }

    public void removeUnparseableExtraFieldData() {
        if (this.unparseableExtra == null) {
            throw new NoSuchElementException();
        }
        this.unparseableExtra = null;
        setExtra();
    }

    private boolean requiresExtraTimeFields() {
        if (getLastAccessTime() == null && getCreationTime() == null) {
            return this.lastModifiedDateSet;
        }
        return true;
    }

    public void setAlignment(int i) {
        if (((i - 1) & i) != 0 || i > 65535) {
            throw new IllegalArgumentException("Invalid value for alignment, must be power of two and no bigger than 65535 but is " + i);
        }
        this.alignment = i;
    }

    private void setAttributes(Path path, LinkOption... linkOptionArr) throws IOException {
        BasicFileAttributes attributes = Files.readAttributes(path, (Class<BasicFileAttributes>) BasicFileAttributes.class, linkOptionArr);
        if (attributes.isRegularFile()) {
            setSize(attributes.size());
        }
        super.setLastModifiedTime(attributes.lastModifiedTime());
        super.setCreationTime(attributes.creationTime());
        super.setLastAccessTime(attributes.lastAccessTime());
        setExtraTimeFields();
    }

    public void setCentralDirectoryExtra(byte[] bArr) {
        try {
            mergeExtraFields(parseExtraFields(bArr, false, ExtraFieldParsingMode.BEST_EFFORT), false);
        } catch (ZipException e) {
            throw new IllegalArgumentException(e.getMessage(), e);
        }
    }

    public void setCommentSource(CommentSource commentSource) {
        this.commentSource = commentSource;
    }

    @Override // java.util.zip.ZipEntry
    public ZipEntry setCreationTime(FileTime fileTime) {
        super.setCreationTime(fileTime);
        setExtraTimeFields();
        return this;
    }

    protected void setDataOffset(long j) {
        this.dataOffset = j;
    }

    public void setDiskNumberStart(long j) {
        this.diskNumberStart = j;
    }

    public void setExternalAttributes(long j) {
        this.externalAttributes = j;
    }

    protected void setExtra() {
        super.setExtra(ExtraFieldUtils.mergeLocalFileDataData(getAllExtraFieldsNoCopy()));
        updateTimeFieldsFromExtraFields();
    }

    @Override // java.util.zip.ZipEntry
    public void setExtra(byte[] bArr) throws RuntimeException {
        try {
            mergeExtraFields(parseExtraFields(bArr, true, ExtraFieldParsingMode.BEST_EFFORT), true);
        } catch (ZipException e) {
            throw new IllegalArgumentException("Error parsing extra fields for entry: " + getName() + " - " + e.getMessage(), e);
        }
    }

    public void setExtraFields(ZipExtraField[] zipExtraFieldArr) {
        this.unparseableExtra = null;
        ArrayList arrayList = new ArrayList();
        if (zipExtraFieldArr != null) {
            for (ZipExtraField zipExtraField : zipExtraFieldArr) {
                if (zipExtraField instanceof UnparseableExtraFieldData) {
                    this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
                } else {
                    arrayList.add(zipExtraField);
                }
            }
        }
        this.extraFields = (ZipExtraField[]) arrayList.toArray(ExtraFieldUtils.EMPTY_ZIP_EXTRA_FIELD_ARRAY);
        setExtra();
    }

    private void setExtraTimeFields() {
        if (getExtraField(X5455_ExtendedTimestamp.HEADER_ID) != null) {
            internalRemoveExtraField(X5455_ExtendedTimestamp.HEADER_ID);
        }
        if (getExtraField(X000A_NTFS.HEADER_ID) != null) {
            internalRemoveExtraField(X000A_NTFS.HEADER_ID);
        }
        if (requiresExtraTimeFields()) {
            FileTime lastModifiedTime = getLastModifiedTime();
            FileTime lastAccessTime = getLastAccessTime();
            FileTime creationTime = getCreationTime();
            if (canConvertToInfoZipExtendedTimestamp(lastModifiedTime, lastAccessTime, creationTime)) {
                addInfoZipExtendedTimestamp(lastModifiedTime, lastAccessTime, creationTime);
            }
            addNTFSTimestamp(lastModifiedTime, lastAccessTime, creationTime);
        }
        setExtra();
    }

    public void setGeneralPurposeBit(GeneralPurposeBit generalPurposeBit) {
        this.generalPurposeBit = generalPurposeBit;
    }

    public void setInternalAttributes(int i) {
        this.internalAttributes = i;
    }

    @Override // java.util.zip.ZipEntry
    public ZipEntry setLastAccessTime(FileTime fileTime) {
        super.setLastAccessTime(fileTime);
        setExtraTimeFields();
        return this;
    }

    @Override // java.util.zip.ZipEntry
    public ZipEntry setLastModifiedTime(FileTime fileTime) {
        internalSetLastModifiedTime(fileTime);
        setExtraTimeFields();
        return this;
    }

    protected void setLocalHeaderOffset(long j) {
        this.localHeaderOffset = j;
    }

    @Override // java.util.zip.ZipEntry
    public void setMethod(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("ZIP compression method can not be negative: " + i);
        }
        this.method = i;
    }

    protected void setName(String str) {
        if (str != null && getPlatform() == 0 && !str.contains(ZIP_DIR_SEP)) {
            str = str.replace('\\', IOUtils.DIR_SEPARATOR_UNIX);
        }
        this.name = str;
    }

    protected void setName(String str, byte[] bArr) {
        setName(str);
        this.rawName = bArr;
    }

    public void setNameSource(NameSource nameSource) {
        this.nameSource = nameSource;
    }

    protected void setPlatform(int i) {
        this.platform = i;
    }

    public void setRawFlag(int i) {
        this.rawFlag = i;
    }

    @Override // java.util.zip.ZipEntry
    public void setSize(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Invalid entry size");
        }
        this.size = j;
    }

    protected void setStreamContiguous(boolean z) {
        this.isStreamContiguous = z;
    }

    public void setTime(FileTime fileTime) {
        setTime(fileTime.toMillis());
    }

    @Override // java.util.zip.ZipEntry
    public void setTime(long j) {
        if (ZipUtil.isDosTime(j)) {
            super.setTime(j);
            this.time = j;
            this.lastModifiedDateSet = false;
            setExtraTimeFields();
            return;
        }
        setLastModifiedTime(FileTime.fromMillis(j));
    }

    public void setUnixMode(int i) {
        setExternalAttributes(((i & 128) == 0 ? 1 : 0) | (i << 16) | (isDirectory() ? 16 : 0));
        this.platform = 3;
    }

    public void setVersionMadeBy(int i) {
        this.versionMadeBy = i;
    }

    public void setVersionRequired(int i) {
        this.versionRequired = i;
    }

    private void updateTimeFieldsFromExtraFields() {
        updateTimeFromExtendedTimestampField();
        updateTimeFromNtfsField();
    }

    private void updateTimeFromExtendedTimestampField() {
        FileTime createFileTime;
        FileTime accessFileTime;
        FileTime modifyFileTime;
        ZipExtraField extraField = getExtraField(X5455_ExtendedTimestamp.HEADER_ID);
        if (extraField instanceof X5455_ExtendedTimestamp) {
            X5455_ExtendedTimestamp x5455_ExtendedTimestamp = (X5455_ExtendedTimestamp) extraField;
            if (x5455_ExtendedTimestamp.isBit0_modifyTimePresent() && (modifyFileTime = x5455_ExtendedTimestamp.getModifyFileTime()) != null) {
                internalSetLastModifiedTime(modifyFileTime);
            }
            if (x5455_ExtendedTimestamp.isBit1_accessTimePresent() && (accessFileTime = x5455_ExtendedTimestamp.getAccessFileTime()) != null) {
                super.setLastAccessTime(accessFileTime);
            }
            if (!x5455_ExtendedTimestamp.isBit2_createTimePresent() || (createFileTime = x5455_ExtendedTimestamp.getCreateFileTime()) == null) {
                return;
            }
            super.setCreationTime(createFileTime);
        }
    }

    private void updateTimeFromNtfsField() {
        ZipExtraField extraField = getExtraField(X000A_NTFS.HEADER_ID);
        if (extraField instanceof X000A_NTFS) {
            X000A_NTFS x000a_ntfs = (X000A_NTFS) extraField;
            FileTime modifyFileTime = x000a_ntfs.getModifyFileTime();
            if (modifyFileTime != null) {
                internalSetLastModifiedTime(modifyFileTime);
            }
            FileTime accessFileTime = x000a_ntfs.getAccessFileTime();
            if (accessFileTime != null) {
                super.setLastAccessTime(accessFileTime);
            }
            FileTime createFileTime = x000a_ntfs.getCreateFileTime();
            if (createFileTime != null) {
                super.setCreationTime(createFileTime);
            }
        }
    }
}
