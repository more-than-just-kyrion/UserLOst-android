package org.apache.commons.compress.archivers.sevenz;

import java.util.BitSet;

/* JADX INFO: loaded from: classes3.dex */
final class Archive {
    long[] packCrcs;
    BitSet packCrcsDefined;
    long packPos;
    StreamMap streamMap;
    SubStreamsInfo subStreamsInfo;
    long[] packSizes = new long[0];
    Folder[] folders = Folder.EMPTY_FOLDER_ARRAY;
    SevenZArchiveEntry[] files = SevenZArchiveEntry.EMPTY_SEVEN_Z_ARCHIVE_ENTRY_ARRAY;

    Archive() {
    }

    private static String lengthOf(long[] jArr) {
        return jArr == null ? "(null)" : Integer.toString(jArr.length);
    }

    private static String lengthOf(Object[] objArr) {
        return objArr == null ? "(null)" : Integer.toString(objArr.length);
    }

    public String toString() {
        return "Archive with packed streams starting at offset " + this.packPos + ", " + lengthOf(this.packSizes) + " pack sizes, " + lengthOf(this.packCrcs) + " CRCs, " + lengthOf(this.folders) + " folders, " + lengthOf(this.files) + " files and " + this.streamMap;
    }
}
