package org.apache.commons.compress.utils;

import io.sentry.marshaller.json.JsonMarshaller;
import java.io.InputStream;
import java.util.Objects;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class ChecksumCalculatingInputStream extends CheckedInputStream {
    @Deprecated
    public ChecksumCalculatingInputStream(Checksum checksum, InputStream inputStream) {
        super((InputStream) Objects.requireNonNull(inputStream, "inputStream"), (Checksum) Objects.requireNonNull(checksum, JsonMarshaller.CHECKSUM));
    }

    @Deprecated
    public long getValue() {
        return getChecksum().getValue();
    }
}
