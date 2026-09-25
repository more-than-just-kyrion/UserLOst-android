package org.apache.commons.compress.archivers;

import java.io.IOException;
import java.nio.file.Path;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public interface ArchiveEntry {
    public static final long SIZE_UNKNOWN = -1;

    Date getLastModifiedDate();

    String getName();

    long getSize();

    boolean isDirectory();

    default Path resolveIn(Path path) throws IOException {
        String name = getName();
        Path pathNormalize = path.resolve(name).normalize();
        if (pathNormalize.startsWith(path)) {
            return pathNormalize;
        }
        throw new IOException(String.format("Zip slip '%s' + '%s' -> '%s'", path, name, pathNormalize));
    }
}
