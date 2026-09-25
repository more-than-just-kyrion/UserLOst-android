package org.rauschig.jarchivelib;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public interface Archiver {
    File create(String str, File file, File file2) throws IOException;

    File create(String str, File file, File... fileArr) throws IOException;

    void extract(File file, File file2) throws IOException;

    void extract(InputStream inputStream, File file) throws IOException;

    String getFilenameExtension();

    ArchiveStream stream(File file) throws IOException;
}
