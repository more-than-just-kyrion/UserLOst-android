package org.apache.commons.compress.archivers.zip;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.FileVisitOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.compress.compressors.CompressorStreamFactory;
import org.apache.commons.compress.utils.FileNameUtils;
import org.apache.commons.compress.utils.MultiReadOnlySeekableByteChannel;

/* JADX INFO: loaded from: classes3.dex */
public class ZipSplitReadOnlySeekableByteChannel extends MultiReadOnlySeekableByteChannel {
    private static final Path[] EMPTY_PATH_ARRAY = new Path[0];
    private static final int ZIP_SPLIT_SIGNATURE_LENGTH = 4;
    private final ByteBuffer zipSplitSignatureByteBuffer;

    /* JADX INFO: renamed from: $r8$lambda$wBZ5N9SAmxJLRX-vx8hIUeo_fgc, reason: not valid java name */
    public static /* synthetic */ ArrayList m2079$r8$lambda$wBZ5N9SAmxJLRXvx8hIUeo_fgc() {
        return new ArrayList();
    }

    private static final class ZipSplitSegmentComparator implements Comparator<Path>, Serializable {
        private static final long serialVersionUID = 20200123;

        private ZipSplitSegmentComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Path path, Path path2) {
            String extension = FileNameUtils.getExtension(path);
            String extension2 = FileNameUtils.getExtension(path2);
            if (!extension.startsWith(CompressorStreamFactory.Z)) {
                return -1;
            }
            if (extension2.startsWith(CompressorStreamFactory.Z)) {
                return Integer.valueOf(Integer.parseInt(extension.substring(1))).compareTo(Integer.valueOf(Integer.parseInt(extension2.substring(1))));
            }
            return 1;
        }
    }

    public static SeekableByteChannel buildFromLastSplitSegment(File file) throws IOException {
        return buildFromLastSplitSegment(file.toPath());
    }

    public static SeekableByteChannel buildFromLastSplitSegment(Path path) throws IOException {
        if (!FileNameUtils.getExtension(path).equalsIgnoreCase(ArchiveStreamFactory.ZIP)) {
            throw new IllegalArgumentException("The extension of last ZIP split segment should be .zip");
        }
        Path parent = path.getParent();
        Objects.nonNull(parent);
        Path parent2 = parent != null ? path.getParent() : path.getFileSystem().getPath(".", new String[0]);
        final Pattern patternCompile = Pattern.compile(Pattern.quote(FileNameUtils.getBaseName(path)) + ".[zZ][0-9]+");
        Stream<Path> streamWalk = Files.walk(parent2, 1, new FileVisitOption[0]);
        try {
            ArrayList arrayList = (ArrayList) streamWalk.filter(new Predicate() { // from class: org.apache.commons.compress.archivers.zip.ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda2
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return Files.isRegularFile((Path) obj, new LinkOption[0]);
                }
            }).filter(new Predicate() { // from class: org.apache.commons.compress.archivers.zip.ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda3
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return patternCompile.matcher(((Path) obj).getFileName().toString()).matches();
                }
            }).sorted(new ZipSplitSegmentComparator()).collect(Collectors.toCollection(new Supplier() { // from class: org.apache.commons.compress.archivers.zip.ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return ZipSplitReadOnlySeekableByteChannel.m2079$r8$lambda$wBZ5N9SAmxJLRXvx8hIUeo_fgc();
                }
            }));
            if (streamWalk != null) {
                streamWalk.close();
            }
            return forPaths(path, arrayList);
        } catch (Throwable th) {
            if (streamWalk != null) {
                try {
                    streamWalk.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static SeekableByteChannel forFiles(File... fileArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (File file : (File[]) Objects.requireNonNull(fileArr, "files must not be null")) {
            arrayList.add(file.toPath());
        }
        return forPaths((Path[]) arrayList.toArray(EMPTY_PATH_ARRAY));
    }

    public static SeekableByteChannel forFiles(File file, Iterable<File> iterable) throws IOException {
        Objects.requireNonNull(iterable, "files");
        Objects.requireNonNull(file, "lastSegmentFile");
        final ArrayList arrayList = new ArrayList();
        iterable.forEach(new Consumer() { // from class: org.apache.commons.compress.archivers.zip.ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add(((File) obj).toPath());
            }
        });
        return forPaths(file.toPath(), arrayList);
    }

    public static SeekableByteChannel forOrderedSeekableByteChannels(SeekableByteChannel... seekableByteChannelArr) throws IOException {
        if (((SeekableByteChannel[]) Objects.requireNonNull(seekableByteChannelArr, "channels must not be null")).length == 1) {
            return seekableByteChannelArr[0];
        }
        return new ZipSplitReadOnlySeekableByteChannel(Arrays.asList(seekableByteChannelArr));
    }

    public static SeekableByteChannel forOrderedSeekableByteChannels(SeekableByteChannel seekableByteChannel, Iterable<SeekableByteChannel> iterable) throws IOException {
        Objects.requireNonNull(iterable, "channels");
        Objects.requireNonNull(seekableByteChannel, "lastSegmentChannel");
        final ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(arrayList);
        iterable.forEach(new Consumer() { // from class: org.apache.commons.compress.archivers.zip.ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((SeekableByteChannel) obj);
            }
        });
        arrayList.add(seekableByteChannel);
        return forOrderedSeekableByteChannels((SeekableByteChannel[]) arrayList.toArray(new SeekableByteChannel[0]));
    }

    public static SeekableByteChannel forPaths(List<Path> list, OpenOption[] openOptionArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) Objects.requireNonNull(list, "paths must not be null")).iterator();
        while (it.hasNext()) {
            arrayList.add(Files.newByteChannel((Path) it.next(), openOptionArr));
        }
        if (arrayList.size() == 1) {
            return (SeekableByteChannel) arrayList.get(0);
        }
        return new ZipSplitReadOnlySeekableByteChannel(arrayList);
    }

    public static SeekableByteChannel forPaths(Path... pathArr) throws IOException {
        return forPaths((List<Path>) Arrays.asList(pathArr), new OpenOption[]{StandardOpenOption.READ});
    }

    public static SeekableByteChannel forPaths(Path path, Iterable<Path> iterable) throws IOException {
        Objects.requireNonNull(iterable, "paths");
        Objects.requireNonNull(path, "lastSegmentPath");
        final ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(arrayList);
        iterable.forEach(new Consumer() { // from class: org.apache.commons.compress.archivers.zip.ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((Path) obj);
            }
        });
        arrayList.add(path);
        return forPaths((Path[]) arrayList.toArray(EMPTY_PATH_ARRAY));
    }

    public ZipSplitReadOnlySeekableByteChannel(List<SeekableByteChannel> list) throws IOException {
        super(list);
        this.zipSplitSignatureByteBuffer = ByteBuffer.allocate(4);
        assertSplitSignature(list);
    }

    private void assertSplitSignature(List<SeekableByteChannel> list) throws IOException {
        SeekableByteChannel seekableByteChannel = list.get(0);
        seekableByteChannel.position(0L);
        this.zipSplitSignatureByteBuffer.rewind();
        seekableByteChannel.read(this.zipSplitSignatureByteBuffer);
        if (!new ZipLong(this.zipSplitSignatureByteBuffer.array()).equals(ZipLong.DD_SIG)) {
            seekableByteChannel.position(0L);
            throw new IOException("The first ZIP split segment does not begin with split ZIP file signature");
        }
        seekableByteChannel.position(0L);
    }
}
