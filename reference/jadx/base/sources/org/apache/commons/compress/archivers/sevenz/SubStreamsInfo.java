package org.apache.commons.compress.archivers.sevenz;

import java.util.BitSet;

/* JADX INFO: loaded from: classes3.dex */
final class SubStreamsInfo {
    final long[] crcs;
    final BitSet hasCrc;
    final long[] unpackSizes;

    SubStreamsInfo(int i) {
        this.unpackSizes = new long[i];
        this.hasCrc = new BitSet(i);
        this.crcs = new long[i];
    }
}
