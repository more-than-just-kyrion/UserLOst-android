package org.apache.commons.compress.harmony.unpack200;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
import java.util.jar.JarOutputStream;
import java.util.zip.GZIPInputStream;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.input.BoundedInputStream;
import org.spongycastle.bcpg.SecretKeyPacket;

/* JADX INFO: loaded from: classes3.dex */
public class Archive {
    private static final int[] MAGIC = {202, SecretKeyPacket.USAGE_SHA1, 208, 13};
    private boolean deflateHint;
    private final Path inputPath;
    private final long inputSize;
    private BoundedInputStream inputStream;
    private FileOutputStream logFile;
    private int logLevel = 1;
    private String outputFileName;
    private final JarOutputStream outputStream;
    private boolean overrideDeflateHint;
    private boolean removePackFile;

    public Archive(InputStream inputStream, JarOutputStream jarOutputStream) throws IOException {
        this.inputStream = Pack200UnpackerAdapter.newBoundedInputStream(inputStream);
        this.outputStream = jarOutputStream;
        if (inputStream instanceof FileInputStream) {
            this.inputPath = Paths.get(Pack200UnpackerAdapter.readPath((FileInputStream) inputStream), new String[0]);
        } else {
            this.inputPath = null;
        }
        this.inputSize = -1L;
    }

    public Archive(String str, String str2) throws IOException {
        Path path = Paths.get(str, new String[0]);
        this.inputPath = path;
        long size = Files.size(path);
        this.inputSize = size;
        this.inputStream = new BoundedInputStream(Files.newInputStream(path, new OpenOption[0]), size);
        this.outputStream = new JarOutputStream(new BufferedOutputStream(new FileOutputStream(str2)));
        this.outputFileName = str2;
    }

    private boolean available(InputStream inputStream) throws IOException {
        inputStream.mark(1);
        int i = inputStream.read();
        inputStream.reset();
        return i != -1;
    }

    public void setDeflateHint(boolean z) {
        this.overrideDeflateHint = true;
        this.deflateHint = z;
    }

    public void setLogFile(String str) throws FileNotFoundException {
        this.logFile = new FileOutputStream(str);
    }

    public void setLogFile(String str, boolean z) throws FileNotFoundException {
        this.logFile = new FileOutputStream(str, z);
    }

    public void setQuiet(boolean z) {
        if (z || this.logLevel == 0) {
            this.logLevel = 0;
        }
    }

    public void setRemovePackFile(boolean z) {
        this.removePackFile = z;
    }

    public void setVerbose(boolean z) {
        if (z) {
            this.logLevel = 2;
        } else if (this.logLevel == 2) {
            this.logLevel = 1;
        }
    }

    public void unpack() throws IOException {
        Path path;
        this.outputStream.setComment("PACK200");
        try {
            if (!this.inputStream.markSupported()) {
                BoundedInputStream boundedInputStream = new BoundedInputStream(new BufferedInputStream(this.inputStream));
                this.inputStream = boundedInputStream;
                if (!boundedInputStream.markSupported()) {
                    throw new IllegalStateException();
                }
            }
            this.inputStream.mark(2);
            if (((this.inputStream.read() & 255) | ((this.inputStream.read() & 255) << 8)) == 35615) {
                this.inputStream.reset();
                this.inputStream = new BoundedInputStream(new BufferedInputStream(new GZIPInputStream(this.inputStream)));
            } else {
                this.inputStream.reset();
            }
            BoundedInputStream boundedInputStream2 = this.inputStream;
            int[] iArr = MAGIC;
            boundedInputStream2.mark(iArr.length);
            int length = iArr.length;
            int[] iArr2 = new int[length];
            for (int i = 0; i < length; i++) {
                iArr2[i] = this.inputStream.read();
            }
            int i2 = 0;
            boolean z = false;
            while (true) {
                int[] iArr3 = MAGIC;
                if (i2 >= iArr3.length) {
                    break;
                }
                if (iArr2[i2] != iArr3[i2]) {
                    z = true;
                }
                i2++;
            }
            this.inputStream.reset();
            if (z) {
                JarInputStream jarInputStream = new JarInputStream(this.inputStream);
                while (true) {
                    JarEntry nextJarEntry = jarInputStream.getNextJarEntry();
                    if (nextJarEntry == null) {
                        break;
                    }
                    this.outputStream.putNextEntry(nextJarEntry);
                    byte[] bArr = new byte[16384];
                    for (int i3 = jarInputStream.read(bArr); i3 != -1; i3 = jarInputStream.read(bArr)) {
                        this.outputStream.write(bArr, 0, i3);
                    }
                    this.outputStream.closeEntry();
                }
            } else {
                int i4 = 0;
                while (available(this.inputStream)) {
                    i4++;
                    Segment segment = new Segment();
                    segment.setLogLevel(this.logLevel);
                    OutputStream outputStream = this.logFile;
                    if (outputStream == null) {
                        outputStream = System.out;
                    }
                    segment.setLogStream(outputStream);
                    segment.setPreRead(false);
                    if (i4 == 1) {
                        segment.log(2, "Unpacking from " + this.inputPath + " to " + this.outputFileName);
                    }
                    segment.log(2, "Reading segment " + i4);
                    if (this.overrideDeflateHint) {
                        segment.overrideDeflateHint(this.deflateHint);
                    }
                    segment.unpack(this.inputStream, this.outputStream);
                    this.outputStream.flush();
                }
            }
            IOUtils.closeQuietly((InputStream) this.inputStream);
            IOUtils.closeQuietly((OutputStream) this.outputStream);
            IOUtils.closeQuietly((OutputStream) this.logFile);
            if (!this.removePackFile || (path = this.inputPath) == null) {
                return;
            }
            Files.delete(path);
        } catch (Throwable th) {
            IOUtils.closeQuietly((InputStream) this.inputStream);
            IOUtils.closeQuietly((OutputStream) this.outputStream);
            IOUtils.closeQuietly((OutputStream) this.logFile);
            throw th;
        }
    }
}
