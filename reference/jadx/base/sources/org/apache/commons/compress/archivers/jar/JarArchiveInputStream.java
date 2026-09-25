package org.apache.commons.compress.archivers.jar;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class JarArchiveInputStream extends ZipArchiveInputStream {
    public static boolean matches(byte[] bArr, int i) {
        return ZipArchiveInputStream.matches(bArr, i);
    }

    public JarArchiveInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public JarArchiveInputStream(InputStream inputStream, String str) {
        super(inputStream, str);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipArchiveInputStream, org.apache.commons.compress.archivers.ArchiveInputStream
    public JarArchiveEntry getNextEntry() throws IOException {
        return getNextJarEntry();
    }

    @Deprecated
    public JarArchiveEntry getNextJarEntry() throws IOException {
        ZipArchiveEntry nextZipEntry = getNextZipEntry();
        if (nextZipEntry == null) {
            return null;
        }
        return new JarArchiveEntry(nextZipEntry);
    }
}
