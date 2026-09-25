package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.compress.parallel.FileBasedScatterGatherBackingStore;
import org.apache.commons.compress.parallel.ScatterGatherBackingStore;
import org.apache.commons.compress.parallel.ScatterGatherBackingStoreSupplier;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultBackingStoreSupplier implements ScatterGatherBackingStoreSupplier {
    private static final String PREFIX = "parallelscatter";
    private final Path dir;
    private final AtomicInteger storeNum = new AtomicInteger();

    public DefaultBackingStoreSupplier(Path path) {
        this.dir = path;
    }

    @Override // org.apache.commons.compress.parallel.ScatterGatherBackingStoreSupplier
    public ScatterGatherBackingStore get() throws IOException {
        String str = "n" + this.storeNum.incrementAndGet();
        Path path = this.dir;
        return new FileBasedScatterGatherBackingStore(path == null ? Files.createTempFile(PREFIX, str, new FileAttribute[0]) : Files.createTempFile(path, PREFIX, str, new FileAttribute[0]));
    }
}
