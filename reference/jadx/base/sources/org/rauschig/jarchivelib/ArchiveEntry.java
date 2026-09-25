package org.rauschig.jarchivelib;

import java.io.File;
import java.io.IOException;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public interface ArchiveEntry {
    public static final long UNKNOWN_SIZE = -1;

    File extract(File file) throws IllegalStateException, IOException, IllegalArgumentException;

    Date getLastModifiedDate();

    String getName();

    long getSize();

    boolean isDirectory();
}
