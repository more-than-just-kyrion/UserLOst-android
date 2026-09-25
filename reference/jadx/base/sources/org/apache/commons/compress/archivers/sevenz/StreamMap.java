package org.apache.commons.compress.archivers.sevenz;

/* JADX INFO: loaded from: classes3.dex */
final class StreamMap {
    final int[] fileFolderIndex;
    final int[] folderFirstFileIndex;
    final int[] folderFirstPackStreamIndex;
    final long[] packStreamOffsets;

    StreamMap(int[] iArr, long[] jArr, int[] iArr2, int[] iArr3) {
        this.folderFirstPackStreamIndex = iArr;
        this.packStreamOffsets = jArr;
        this.folderFirstFileIndex = iArr2;
        this.fileFolderIndex = iArr3;
    }

    public String toString() {
        return "StreamMap with indices of " + this.folderFirstPackStreamIndex.length + " folders, offsets of " + this.packStreamOffsets.length + " packed streams, first files of " + this.folderFirstFileIndex.length + " folders and folder indices for " + this.fileFolderIndex.length + " files";
    }
}
