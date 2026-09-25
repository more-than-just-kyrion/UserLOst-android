package org.apache.commons.compress.utils;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.NonWritableChannelException;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public class MultiReadOnlySeekableByteChannel implements SeekableByteChannel {
    private static final Path[] EMPTY_PATH_ARRAY = new Path[0];
    private final List<SeekableByteChannel> channels;
    private int currentChannelIdx;
    private long globalPosition;

    public static SeekableByteChannel forFiles(File... fileArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (File file : (File[]) Objects.requireNonNull(fileArr, "files must not be null")) {
            arrayList.add(file.toPath());
        }
        return forPaths((Path[]) arrayList.toArray(EMPTY_PATH_ARRAY));
    }

    public static SeekableByteChannel forPaths(Path... pathArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Path path : (Path[]) Objects.requireNonNull(pathArr, "paths must not be null")) {
            arrayList.add(Files.newByteChannel(path, StandardOpenOption.READ));
        }
        if (arrayList.size() == 1) {
            return (SeekableByteChannel) arrayList.get(0);
        }
        return new MultiReadOnlySeekableByteChannel(arrayList);
    }

    public static SeekableByteChannel forSeekableByteChannels(SeekableByteChannel... seekableByteChannelArr) {
        if (((SeekableByteChannel[]) Objects.requireNonNull(seekableByteChannelArr, "channels must not be null")).length == 1) {
            return seekableByteChannelArr[0];
        }
        return new MultiReadOnlySeekableByteChannel(Arrays.asList(seekableByteChannelArr));
    }

    public MultiReadOnlySeekableByteChannel(List<SeekableByteChannel> list) {
        this.channels = Collections.unmodifiableList(new ArrayList((Collection) Objects.requireNonNull(list, "channels must not be null")));
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Iterator<SeekableByteChannel> it = this.channels.iterator();
        IOException iOException = null;
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                }
            }
        }
        if (iOException != null) {
            throw new IOException("failed to close wrapped channel", iOException);
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return this.channels.stream().allMatch(new Predicate() { // from class: org.apache.commons.compress.utils.MultiReadOnlySeekableByteChannel$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((SeekableByteChannel) obj).isOpen();
            }
        });
    }

    @Override // java.nio.channels.SeekableByteChannel
    public long position() {
        return this.globalPosition;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public synchronized SeekableByteChannel position(long j) throws IOException {
        try {
            if (j < 0) {
                throw new IllegalArgumentException("Negative position: " + j);
            }
            if (!isOpen()) {
                throw new ClosedChannelException();
            }
            this.globalPosition = j;
            int i = 0;
            while (i < this.channels.size()) {
                SeekableByteChannel seekableByteChannel = this.channels.get(i);
                long size = seekableByteChannel.size();
                long j2 = -1;
                if (j == -1) {
                    j2 = j;
                    j = 0;
                } else if (j <= size) {
                    this.currentChannelIdx = i;
                } else {
                    j2 = j - size;
                    j = size;
                }
                seekableByteChannel.position(j);
                i++;
                j = j2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized SeekableByteChannel position(long j, long j2) throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        for (int i = 0; i < j; i++) {
            j2 += this.channels.get(i).size();
        }
        return position(j2);
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public synchronized int read(ByteBuffer byteBuffer) throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        int i = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0;
        }
        while (byteBuffer.hasRemaining() && this.currentChannelIdx < this.channels.size()) {
            SeekableByteChannel seekableByteChannel = this.channels.get(this.currentChannelIdx);
            int i2 = seekableByteChannel.read(byteBuffer);
            if (i2 == -1) {
                this.currentChannelIdx++;
            } else {
                if (seekableByteChannel.position() >= seekableByteChannel.size()) {
                    this.currentChannelIdx++;
                }
                i += i2;
            }
        }
        if (i <= 0) {
            return -1;
        }
        this.globalPosition += (long) i;
        return i;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public long size() throws IOException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
        Iterator<SeekableByteChannel> it = this.channels.iterator();
        long size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel truncate(long j) {
        throw new NonWritableChannelException();
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        throw new NonWritableChannelException();
    }
}
