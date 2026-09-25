package io.sentry.connection;

import io.sentry.event.Event;
import io.sentry.marshaller.Marshaller;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class OutputStreamConnection extends AbstractConnection {
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private Marshaller marshaller;
    private final OutputStream outputStream;

    public OutputStreamConnection(OutputStream outputStream) {
        super(null, null);
        this.outputStream = outputStream;
    }

    @Override // io.sentry.connection.AbstractConnection
    protected synchronized void doSend(Event event) throws ConnectionException {
        try {
            OutputStream outputStream = this.outputStream;
            Charset charset = UTF_8;
            outputStream.write("Sentry event:\n".getBytes(charset));
            this.marshaller.marshall(event, this.outputStream);
            this.outputStream.write(StringUtils.LF.getBytes(charset));
            this.outputStream.flush();
        } catch (IOException e) {
            throw new ConnectionException("Couldn't sent the event properly", e);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.outputStream.close();
    }

    public void setMarshaller(Marshaller marshaller) {
        this.marshaller = marshaller;
    }
}
