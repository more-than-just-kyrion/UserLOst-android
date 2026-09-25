package org.apache.commons.compress.archivers.sevenz;

import java.nio.file.attribute.FileTime;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import java.util.function.Consumer;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.io.file.attribute.FileTimes;

/* JADX INFO: loaded from: classes3.dex */
public class SevenZArchiveEntry implements ArchiveEntry {
    static final SevenZArchiveEntry[] EMPTY_SEVEN_Z_ARCHIVE_ENTRY_ARRAY = new SevenZArchiveEntry[0];
    private FileTime accessDate;
    private long compressedCrc;
    private long compressedSize;
    private Iterable<? extends SevenZMethodConfiguration> contentMethods;
    private long crc;
    private FileTime creationDate;
    private boolean hasAccessDate;
    private boolean hasCrc;
    private boolean hasCreationDate;
    private boolean hasLastModifiedDate;
    private boolean hasStream;
    private boolean hasWindowsAttributes;
    private boolean isAntiItem;
    private boolean isDirectory;
    private FileTime lastModifiedDate;
    private String name;
    private long size;
    private int windowsAttributes;

    @Deprecated
    public static long javaTimeToNtfsTime(Date date) {
        return FileTimes.toNtfsTime(date);
    }

    @Deprecated
    public static Date ntfsTimeToJavaTime(long j) {
        return FileTimes.ntfsTimeToDate(j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SevenZArchiveEntry sevenZArchiveEntry = (SevenZArchiveEntry) obj;
        return Objects.equals(this.name, sevenZArchiveEntry.name) && this.hasStream == sevenZArchiveEntry.hasStream && this.isDirectory == sevenZArchiveEntry.isDirectory && this.isAntiItem == sevenZArchiveEntry.isAntiItem && this.hasCreationDate == sevenZArchiveEntry.hasCreationDate && this.hasLastModifiedDate == sevenZArchiveEntry.hasLastModifiedDate && this.hasAccessDate == sevenZArchiveEntry.hasAccessDate && Objects.equals(this.creationDate, sevenZArchiveEntry.creationDate) && Objects.equals(this.lastModifiedDate, sevenZArchiveEntry.lastModifiedDate) && Objects.equals(this.accessDate, sevenZArchiveEntry.accessDate) && this.hasWindowsAttributes == sevenZArchiveEntry.hasWindowsAttributes && this.windowsAttributes == sevenZArchiveEntry.windowsAttributes && this.hasCrc == sevenZArchiveEntry.hasCrc && this.crc == sevenZArchiveEntry.crc && this.compressedCrc == sevenZArchiveEntry.compressedCrc && this.size == sevenZArchiveEntry.size && this.compressedSize == sevenZArchiveEntry.compressedSize && equalSevenZMethods(this.contentMethods, sevenZArchiveEntry.contentMethods);
    }

    private boolean equalSevenZMethods(Iterable<? extends SevenZMethodConfiguration> iterable, Iterable<? extends SevenZMethodConfiguration> iterable2) {
        if (iterable == null) {
            return iterable2 == null;
        }
        if (iterable2 == null) {
            return false;
        }
        Iterator<? extends SevenZMethodConfiguration> it = iterable2.iterator();
        for (SevenZMethodConfiguration sevenZMethodConfiguration : iterable) {
            if (!it.hasNext() || !sevenZMethodConfiguration.equals(it.next())) {
                return false;
            }
        }
        return !it.hasNext();
    }

    public Date getAccessDate() {
        return FileTimes.toDate(getAccessTime());
    }

    public FileTime getAccessTime() {
        if (this.hasAccessDate) {
            return this.accessDate;
        }
        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
    }

    @Deprecated
    int getCompressedCrc() {
        return (int) this.compressedCrc;
    }

    long getCompressedCrcValue() {
        return this.compressedCrc;
    }

    long getCompressedSize() {
        return this.compressedSize;
    }

    public Iterable<? extends SevenZMethodConfiguration> getContentMethods() {
        return this.contentMethods;
    }

    @Deprecated
    public int getCrc() {
        return (int) this.crc;
    }

    public long getCrcValue() {
        return this.crc;
    }

    public Date getCreationDate() {
        return FileTimes.toDate(getCreationTime());
    }

    public FileTime getCreationTime() {
        if (this.hasCreationDate) {
            return this.creationDate;
        }
        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
    }

    public boolean getHasAccessDate() {
        return this.hasAccessDate;
    }

    public boolean getHasCrc() {
        return this.hasCrc;
    }

    public boolean getHasCreationDate() {
        return this.hasCreationDate;
    }

    public boolean getHasLastModifiedDate() {
        return this.hasLastModifiedDate;
    }

    public boolean getHasWindowsAttributes() {
        return this.hasWindowsAttributes;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return FileTimes.toDate(getLastModifiedTime());
    }

    public FileTime getLastModifiedTime() {
        if (this.hasLastModifiedDate) {
            return this.lastModifiedDate;
        }
        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.name;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.size;
    }

    public int getWindowsAttributes() {
        return this.windowsAttributes;
    }

    public int hashCode() {
        String name = getName();
        if (name == null) {
            return 0;
        }
        return name.hashCode();
    }

    public boolean hasStream() {
        return this.hasStream;
    }

    public boolean isAntiItem() {
        return this.isAntiItem;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return this.isDirectory;
    }

    public void setAccessDate(Date date) {
        setAccessTime(FileTimes.toFileTime(date));
    }

    public void setAccessDate(long j) {
        this.accessDate = FileTimes.ntfsTimeToFileTime(j);
    }

    public void setAccessTime(FileTime fileTime) {
        boolean z = fileTime != null;
        this.hasAccessDate = z;
        if (z) {
            this.accessDate = fileTime;
        }
    }

    public void setAntiItem(boolean z) {
        this.isAntiItem = z;
    }

    @Deprecated
    void setCompressedCrc(int i) {
        this.compressedCrc = i;
    }

    void setCompressedCrcValue(long j) {
        this.compressedCrc = j;
    }

    void setCompressedSize(long j) {
        this.compressedSize = j;
    }

    public void setContentMethods(Iterable<? extends SevenZMethodConfiguration> iterable) {
        if (iterable != null) {
            final LinkedList linkedList = new LinkedList();
            Objects.requireNonNull(linkedList);
            iterable.forEach(new Consumer() { // from class: org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    linkedList.addLast((SevenZMethodConfiguration) obj);
                }
            });
            this.contentMethods = Collections.unmodifiableList(linkedList);
            return;
        }
        this.contentMethods = null;
    }

    public void setContentMethods(SevenZMethodConfiguration... sevenZMethodConfigurationArr) {
        setContentMethods(Arrays.asList(sevenZMethodConfigurationArr));
    }

    @Deprecated
    public void setCrc(int i) {
        this.crc = i;
    }

    public void setCrcValue(long j) {
        this.crc = j;
    }

    public void setCreationDate(Date date) {
        setCreationTime(FileTimes.toFileTime(date));
    }

    public void setCreationDate(long j) {
        this.creationDate = FileTimes.ntfsTimeToFileTime(j);
    }

    public void setCreationTime(FileTime fileTime) {
        boolean z = fileTime != null;
        this.hasCreationDate = z;
        if (z) {
            this.creationDate = fileTime;
        }
    }

    public void setDirectory(boolean z) {
        this.isDirectory = z;
    }

    public void setHasAccessDate(boolean z) {
        this.hasAccessDate = z;
    }

    public void setHasCrc(boolean z) {
        this.hasCrc = z;
    }

    public void setHasCreationDate(boolean z) {
        this.hasCreationDate = z;
    }

    public void setHasLastModifiedDate(boolean z) {
        this.hasLastModifiedDate = z;
    }

    public void setHasStream(boolean z) {
        this.hasStream = z;
    }

    public void setHasWindowsAttributes(boolean z) {
        this.hasWindowsAttributes = z;
    }

    public void setLastModifiedDate(Date date) {
        setLastModifiedTime(FileTimes.toFileTime(date));
    }

    public void setLastModifiedDate(long j) {
        this.lastModifiedDate = FileTimes.ntfsTimeToFileTime(j);
    }

    public void setLastModifiedTime(FileTime fileTime) {
        boolean z = fileTime != null;
        this.hasLastModifiedDate = z;
        if (z) {
            this.lastModifiedDate = fileTime;
        }
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setWindowsAttributes(int i) {
        this.windowsAttributes = i;
    }
}
