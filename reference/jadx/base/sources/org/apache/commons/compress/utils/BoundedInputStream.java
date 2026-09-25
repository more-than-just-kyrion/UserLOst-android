package org.apache.commons.compress.utils;

import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class BoundedInputStream extends org.apache.commons.io.input.BoundedInputStream {
    public BoundedInputStream(InputStream inputStream, long j) {
        super(inputStream, j);
        setPropagateClose(false);
    }

    public long getBytesRemaining() {
        return getMaxLength() - getCount();
    }
}
