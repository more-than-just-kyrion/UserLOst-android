package org.apache.commons.compress.archivers.sevenz;

/* JADX INFO: loaded from: classes3.dex */
final class BindPair {
    final long inIndex;
    final long outIndex;

    BindPair(long j, long j2) {
        this.inIndex = j;
        this.outIndex = j2;
    }

    public String toString() {
        return "BindPair binding input " + this.inIndex + " to output " + this.outIndex;
    }
}
