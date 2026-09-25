package org.apache.commons.compress.compressors.pack200;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import java.util.jar.JarInputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.apache.commons.compress.java.util.jar.Pack200;

/* JADX INFO: loaded from: classes3.dex */
public class Pack200CompressorOutputStream extends CompressorOutputStream {
    private final AbstractStreamBridge abstractStreamBridge;
    private boolean finished;
    private final OutputStream originalOutput;
    private final Map<String, String> properties;

    public Pack200CompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, Pack200Strategy.IN_MEMORY);
    }

    public Pack200CompressorOutputStream(OutputStream outputStream, Map<String, String> map) throws IOException {
        this(outputStream, Pack200Strategy.IN_MEMORY, map);
    }

    public Pack200CompressorOutputStream(OutputStream outputStream, Pack200Strategy pack200Strategy) throws IOException {
        this(outputStream, pack200Strategy, null);
    }

    public Pack200CompressorOutputStream(OutputStream outputStream, Pack200Strategy pack200Strategy, Map<String, String> map) throws IOException {
        this.originalOutput = outputStream;
        this.abstractStreamBridge = pack200Strategy.newStreamBridge();
        this.properties = map;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            finish();
            try {
                this.abstractStreamBridge.stop();
            } finally {
                this.originalOutput.close();
            }
        } catch (Throwable th) {
            try {
                this.abstractStreamBridge.stop();
                throw th;
            } finally {
                this.originalOutput.close();
            }
        }
    }

    public void finish() throws IOException {
        if (this.finished) {
            return;
        }
        this.finished = true;
        Pack200.Packer packerNewPacker = Pack200.newPacker();
        if (this.properties != null) {
            packerNewPacker.properties().putAll(this.properties);
        }
        JarInputStream jarInputStream = new JarInputStream(this.abstractStreamBridge.getInputStream());
        try {
            packerNewPacker.pack(jarInputStream, this.originalOutput);
            jarInputStream.close();
        } catch (Throwable th) {
            try {
                jarInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.abstractStreamBridge.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.abstractStreamBridge.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.abstractStreamBridge.write(i);
    }
}
