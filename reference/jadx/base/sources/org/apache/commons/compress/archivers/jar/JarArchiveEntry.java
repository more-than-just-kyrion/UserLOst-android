package org.apache.commons.compress.archivers.jar;

import java.security.cert.Certificate;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;

/* JADX INFO: loaded from: classes3.dex */
public class JarArchiveEntry extends ZipArchiveEntry {
    @Deprecated
    public Certificate[] getCertificates() {
        return null;
    }

    @Deprecated
    public Attributes getManifestAttributes() {
        return null;
    }

    public JarArchiveEntry(JarEntry jarEntry) throws ZipException {
        super(jarEntry);
    }

    public JarArchiveEntry(String str) {
        super(str);
    }

    public JarArchiveEntry(ZipArchiveEntry zipArchiveEntry) throws ZipException {
        super(zipArchiveEntry);
    }

    public JarArchiveEntry(ZipEntry zipEntry) throws ZipException {
        super(zipEntry);
    }
}
