package io.sentry.marshaller;

import io.sentry.event.Event;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface Marshaller {
    String getContentEncoding();

    String getContentType();

    void marshall(Event event, OutputStream outputStream) throws IOException;

    public static final class UncloseableOutputStream extends OutputStream {
        private final OutputStream originalStream;

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public UncloseableOutputStream(OutputStream outputStream) {
            this.originalStream = outputStream;
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.originalStream.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.originalStream.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.originalStream.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.originalStream.flush();
        }
    }
}
