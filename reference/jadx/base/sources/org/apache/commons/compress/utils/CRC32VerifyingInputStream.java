package org.apache.commons.compress.utils;

import java.io.InputStream;
import java.util.zip.CRC32;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
public class CRC32VerifyingInputStream extends ChecksumVerifyingInputStream {
    @Deprecated
    public CRC32VerifyingInputStream(InputStream inputStream, long j, int i) {
        this(inputStream, j, ((long) i) & BodyPartID.bodyIdMax);
    }

    public CRC32VerifyingInputStream(InputStream inputStream, long j, long j2) {
        super(new CRC32(), inputStream, j, j2);
    }
}
