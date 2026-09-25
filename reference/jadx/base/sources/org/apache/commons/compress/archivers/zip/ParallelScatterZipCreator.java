package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.apache.commons.compress.parallel.InputStreamSupplier;
import org.apache.commons.compress.parallel.ScatterGatherBackingStore;
import org.apache.commons.compress.parallel.ScatterGatherBackingStoreSupplier;

/* JADX INFO: loaded from: classes3.dex */
public class ParallelScatterZipCreator {
    private final ScatterGatherBackingStoreSupplier backingStoreSupplier;
    private long compressionDoneAt;
    private final int compressionLevel;
    private final ExecutorService executorService;
    private final Deque<Future<? extends ScatterZipOutputStream>> futures;
    private long scatterDoneAt;
    private final long startedAt;
    private final Deque<ScatterZipOutputStream> streams;
    private final ThreadLocal<ScatterZipOutputStream> tlScatterStreams;

    public ParallelScatterZipCreator() {
        this(Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors()));
    }

    public ParallelScatterZipCreator(ExecutorService executorService) {
        this(executorService, new DefaultBackingStoreSupplier(null));
    }

    public ParallelScatterZipCreator(ExecutorService executorService, ScatterGatherBackingStoreSupplier scatterGatherBackingStoreSupplier) {
        this(executorService, scatterGatherBackingStoreSupplier, -1);
    }

    public ParallelScatterZipCreator(ExecutorService executorService, ScatterGatherBackingStoreSupplier scatterGatherBackingStoreSupplier, int i) throws IllegalArgumentException {
        this.streams = new ConcurrentLinkedDeque();
        this.futures = new ConcurrentLinkedDeque();
        this.startedAt = System.currentTimeMillis();
        this.tlScatterStreams = new ThreadLocal<ScatterZipOutputStream>() { // from class: org.apache.commons.compress.archivers.zip.ParallelScatterZipCreator.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public ScatterZipOutputStream initialValue() {
                try {
                    ParallelScatterZipCreator parallelScatterZipCreator = ParallelScatterZipCreator.this;
                    ScatterZipOutputStream scatterZipOutputStreamCreateDeferred = parallelScatterZipCreator.createDeferred(parallelScatterZipCreator.backingStoreSupplier);
                    ParallelScatterZipCreator.this.streams.add(scatterZipOutputStreamCreateDeferred);
                    return scatterZipOutputStreamCreateDeferred;
                } catch (IOException e) {
                    throw new UncheckedIOException(e);
                }
            }
        };
        if ((i < 0 || i > 9) && i != -1) {
            throw new IllegalArgumentException("Compression level is expected between -1~9");
        }
        this.backingStoreSupplier = scatterGatherBackingStoreSupplier;
        this.executorService = executorService;
        this.compressionLevel = i;
    }

    public void addArchiveEntry(ZipArchiveEntry zipArchiveEntry, InputStreamSupplier inputStreamSupplier) {
        submitStreamAwareCallable(createCallable(zipArchiveEntry, inputStreamSupplier));
    }

    public void addArchiveEntry(ZipArchiveEntryRequestSupplier zipArchiveEntryRequestSupplier) {
        submitStreamAwareCallable(createCallable(zipArchiveEntryRequestSupplier));
    }

    private void closeAll() {
        Iterator<ScatterZipOutputStream> it = this.streams.iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (IOException unused) {
            }
        }
    }

    public final Callable<ScatterZipOutputStream> createCallable(ZipArchiveEntry zipArchiveEntry, InputStreamSupplier inputStreamSupplier) {
        if (zipArchiveEntry.getMethod() == -1) {
            throw new IllegalArgumentException("Method must be set on zipArchiveEntry: " + zipArchiveEntry);
        }
        final ZipArchiveEntryRequest zipArchiveEntryRequestCreateZipArchiveEntryRequest = ZipArchiveEntryRequest.createZipArchiveEntryRequest(zipArchiveEntry, inputStreamSupplier);
        return new Callable() { // from class: org.apache.commons.compress.archivers.zip.ParallelScatterZipCreator$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m2074x5cb3ae55(zipArchiveEntryRequestCreateZipArchiveEntryRequest);
            }
        };
    }

    /* JADX INFO: renamed from: lambda$createCallable$0$org-apache-commons-compress-archivers-zip-ParallelScatterZipCreator, reason: not valid java name */
    /* synthetic */ ScatterZipOutputStream m2074x5cb3ae55(ZipArchiveEntryRequest zipArchiveEntryRequest) throws Exception {
        ScatterZipOutputStream scatterZipOutputStream = this.tlScatterStreams.get();
        scatterZipOutputStream.addArchiveEntry(zipArchiveEntryRequest);
        return scatterZipOutputStream;
    }

    public final Callable<ScatterZipOutputStream> createCallable(final ZipArchiveEntryRequestSupplier zipArchiveEntryRequestSupplier) {
        return new Callable() { // from class: org.apache.commons.compress.archivers.zip.ParallelScatterZipCreator$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m2075x4e053dd6(zipArchiveEntryRequestSupplier);
            }
        };
    }

    /* JADX INFO: renamed from: lambda$createCallable$1$org-apache-commons-compress-archivers-zip-ParallelScatterZipCreator, reason: not valid java name */
    /* synthetic */ ScatterZipOutputStream m2075x4e053dd6(ZipArchiveEntryRequestSupplier zipArchiveEntryRequestSupplier) throws Exception {
        ScatterZipOutputStream scatterZipOutputStream = this.tlScatterStreams.get();
        scatterZipOutputStream.addArchiveEntry(zipArchiveEntryRequestSupplier.get());
        return scatterZipOutputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ScatterZipOutputStream createDeferred(ScatterGatherBackingStoreSupplier scatterGatherBackingStoreSupplier) throws IOException {
        ScatterGatherBackingStore scatterGatherBackingStore = scatterGatherBackingStoreSupplier.get();
        return new ScatterZipOutputStream(scatterGatherBackingStore, StreamCompressor.create(this.compressionLevel, scatterGatherBackingStore));
    }

    public ScatterStatistics getStatisticsMessage() {
        long j = this.compressionDoneAt;
        return new ScatterStatistics(j - this.startedAt, this.scatterDoneAt - j);
    }

    public final void submit(final Callable<? extends Object> callable) {
        submitStreamAwareCallable(new Callable() { // from class: org.apache.commons.compress.archivers.zip.ParallelScatterZipCreator$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m2076x592c3d9b(callable);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$submit$2$org-apache-commons-compress-archivers-zip-ParallelScatterZipCreator, reason: not valid java name */
    /* synthetic */ ScatterZipOutputStream m2076x592c3d9b(Callable callable) throws Exception {
        callable.call();
        return this.tlScatterStreams.get();
    }

    public final void submitStreamAwareCallable(Callable<? extends ScatterZipOutputStream> callable) {
        this.futures.add(this.executorService.submit(callable));
    }

    public void writeTo(ZipArchiveOutputStream zipArchiveOutputStream) throws ExecutionException, InterruptedException, IOException {
        try {
            try {
                Iterator<Future<? extends ScatterZipOutputStream>> it = this.futures.iterator();
                while (it.hasNext()) {
                    it.next().get();
                }
                this.executorService.shutdown();
                this.executorService.awaitTermination(60000L, TimeUnit.SECONDS);
                this.compressionDoneAt = System.currentTimeMillis();
                Iterator<Future<? extends ScatterZipOutputStream>> it2 = this.futures.iterator();
                while (it2.hasNext()) {
                    it2.next().get().zipEntryWriter().writeNextZipEntry(zipArchiveOutputStream);
                }
                Iterator<ScatterZipOutputStream> it3 = this.streams.iterator();
                while (it3.hasNext()) {
                    it3.next().close();
                }
                this.scatterDoneAt = System.currentTimeMillis();
                closeAll();
            } catch (Throwable th) {
                this.executorService.shutdown();
                throw th;
            }
        } catch (Throwable th2) {
            closeAll();
            throw th2;
        }
    }
}
