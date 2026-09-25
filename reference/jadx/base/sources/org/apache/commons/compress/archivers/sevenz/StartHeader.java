package org.apache.commons.compress.archivers.sevenz;

/* JADX INFO: loaded from: classes3.dex */
final class StartHeader {
    final long nextHeaderCrc;
    final long nextHeaderOffset;
    final long nextHeaderSize;

    StartHeader(long j, long j2, long j3) {
        this.nextHeaderOffset = j;
        this.nextHeaderSize = j2;
        this.nextHeaderCrc = j3;
    }
}
