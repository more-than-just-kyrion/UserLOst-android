package org.rauschig.jarchivelib;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public interface Compressor {
    void compress(File file, File file2) throws IOException, IllegalArgumentException;

    void decompress(File file, File file2) throws IOException, IllegalArgumentException;

    InputStream decompressingStream(InputStream inputStream) throws IOException;

    String getFilenameExtension();
}
