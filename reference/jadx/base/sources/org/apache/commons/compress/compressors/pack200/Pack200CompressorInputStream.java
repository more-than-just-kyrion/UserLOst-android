package org.apache.commons.compress.compressors.pack200;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.util.Map;
import java.util.jar.JarOutputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.java.util.jar.Pack200;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.input.CloseShieldInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class Pack200CompressorInputStream extends CompressorInputStream {
    private static final byte[] CAFE_DOOD;
    private static final int SIG_LENGTH;
    private final AbstractStreamBridge abstractStreamBridge;
    private final InputStream originalInputStream;

    static {
        byte[] bArr = {-54, -2, -48, 13};
        CAFE_DOOD = bArr;
        SIG_LENGTH = bArr.length;
    }

    public static boolean matches(byte[] bArr, int i) {
        if (i < SIG_LENGTH) {
            return false;
        }
        for (int i2 = 0; i2 < SIG_LENGTH; i2++) {
            if (bArr[i2] != CAFE_DOOD[i2]) {
                return false;
            }
        }
        return true;
    }

    public Pack200CompressorInputStream(File file) throws IOException {
        this(file, Pack200Strategy.IN_MEMORY);
    }

    public Pack200CompressorInputStream(File file, Map<String, String> map) throws IOException {
        this(file, Pack200Strategy.IN_MEMORY, map);
    }

    public Pack200CompressorInputStream(File file, Pack200Strategy pack200Strategy) throws IOException {
        this(null, file, pack200Strategy, null);
    }

    public Pack200CompressorInputStream(File file, Pack200Strategy pack200Strategy, Map<String, String> map) throws IOException {
        this(null, file, pack200Strategy, map);
    }

    public Pack200CompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, Pack200Strategy.IN_MEMORY);
    }

    private Pack200CompressorInputStream(InputStream inputStream, File file, Pack200Strategy pack200Strategy, Map<String, String> map) throws IOException {
        this.originalInputStream = inputStream;
        AbstractStreamBridge abstractStreamBridgeNewStreamBridge = pack200Strategy.newStreamBridge();
        this.abstractStreamBridge = abstractStreamBridgeNewStreamBridge;
        JarOutputStream jarOutputStream = new JarOutputStream(abstractStreamBridgeNewStreamBridge);
        try {
            Pack200.Unpacker unpackerNewUnpacker = Pack200.newUnpacker();
            if (map != null) {
                unpackerNewUnpacker.properties().putAll(map);
            }
            if (file == null) {
                CloseShieldInputStream closeShieldInputStreamWrap = CloseShieldInputStream.wrap(inputStream);
                try {
                    unpackerNewUnpacker.unpack(closeShieldInputStreamWrap, jarOutputStream);
                    if (closeShieldInputStreamWrap != null) {
                        closeShieldInputStreamWrap.close();
                    }
                } catch (Throwable th) {
                    if (closeShieldInputStreamWrap != null) {
                        try {
                            closeShieldInputStreamWrap.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } else {
                unpackerNewUnpacker.unpack(file, jarOutputStream);
            }
            jarOutputStream.close();
        } catch (Throwable th3) {
            try {
                jarOutputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public Pack200CompressorInputStream(InputStream inputStream, Map<String, String> map) throws IOException {
        this(inputStream, Pack200Strategy.IN_MEMORY, map);
    }

    public Pack200CompressorInputStream(InputStream inputStream, Pack200Strategy pack200Strategy) throws IOException {
        this(inputStream, null, pack200Strategy, null);
    }

    public Pack200CompressorInputStream(InputStream inputStream, Pack200Strategy pack200Strategy, Map<String, String> map) throws IOException {
        this(inputStream, null, pack200Strategy, map);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return getInputStream().available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.abstractStreamBridge.stop();
        } finally {
            InputStream inputStream = this.originalInputStream;
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    private InputStream getInputStream() throws IOException {
        return this.abstractStreamBridge.getInputStream();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        try {
            getInputStream().mark(i);
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        try {
            return getInputStream().markSupported();
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return getInputStream().read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return getInputStream().read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return getInputStream().read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        getInputStream().reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return IOUtils.skip(getInputStream(), j);
    }
}
