package org.apache.commons.compress.compressors.pack200;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
abstract class AbstractStreamBridge extends FilterOutputStream {
    private InputStream inputStream;
    private final Object inputStreamLock;

    abstract InputStream createInputStream() throws IOException;

    protected AbstractStreamBridge() {
        this(null);
    }

    protected AbstractStreamBridge(OutputStream outputStream) {
        super(outputStream);
        this.inputStreamLock = new Object();
    }

    InputStream getInputStream() throws IOException {
        synchronized (this.inputStreamLock) {
            if (this.inputStream == null) {
                this.inputStream = createInputStream();
            }
        }
        return this.inputStream;
    }

    void stop() throws IOException {
        close();
        synchronized (this.inputStreamLock) {
            InputStream inputStream = this.inputStream;
            if (inputStream != null) {
                inputStream.close();
                this.inputStream = null;
            }
        }
    }
}
