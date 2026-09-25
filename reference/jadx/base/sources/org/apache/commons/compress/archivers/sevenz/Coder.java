package org.apache.commons.compress.archivers.sevenz;

/* JADX INFO: loaded from: classes3.dex */
final class Coder {
    final byte[] decompressionMethodId;
    final long numInStreams;
    final long numOutStreams;
    final byte[] properties;

    Coder(byte[] bArr, long j, long j2, byte[] bArr2) {
        this.decompressionMethodId = bArr;
        this.numInStreams = j;
        this.numOutStreams = j2;
        this.properties = bArr2;
    }
}
