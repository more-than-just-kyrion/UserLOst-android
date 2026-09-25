package org.apache.commons.compress.harmony.pack200;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.function.ToIntFunction;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.JarInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes3.dex */
public class Archive {
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private long currentSegmentSize;
    private JarFile jarFile;
    private final JarInputStream jarInputStream;
    private final PackingOptions options;
    private final OutputStream outputStream;

    static class PackingFile {
        private byte[] contents;
        private final boolean deflateHint;
        private final boolean isDirectory;
        private final long modtime;
        private final String name;

        PackingFile(byte[] bArr, JarEntry jarEntry) {
            this.name = jarEntry.getName();
            this.contents = bArr;
            this.modtime = jarEntry.getTime();
            this.deflateHint = jarEntry.getMethod() == 8;
            this.isDirectory = jarEntry.isDirectory();
        }

        PackingFile(String str, byte[] bArr, long j) {
            this.name = str;
            this.contents = bArr;
            this.modtime = j;
            this.deflateHint = false;
            this.isDirectory = false;
        }

        public byte[] getContents() {
            return this.contents;
        }

        public long getModtime() {
            return this.modtime;
        }

        public String getName() {
            return this.name;
        }

        public boolean isDefalteHint() {
            return this.deflateHint;
        }

        public boolean isDirectory() {
            return this.isDirectory;
        }

        public void setContents(byte[] bArr) {
            this.contents = bArr;
        }

        public String toString() {
            return this.name;
        }
    }

    static class SegmentUnit {
        private int byteAmount;
        private final List<Pack200ClassReader> classList;
        private final List<PackingFile> fileList;
        private int packedByteAmount;

        SegmentUnit(List<Pack200ClassReader> list, List<PackingFile> list2) {
            this.classList = list;
            this.fileList = list2;
            this.byteAmount = 0;
            int iSum = list.stream().mapToInt(new ToIntFunction() { // from class: org.apache.commons.compress.harmony.pack200.Archive$SegmentUnit$$ExternalSyntheticLambda0
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return Archive.SegmentUnit.lambda$new$0((Pack200ClassReader) obj);
                }
            }).sum();
            this.byteAmount = iSum;
            this.byteAmount = iSum + list2.stream().mapToInt(new ToIntFunction() { // from class: org.apache.commons.compress.harmony.pack200.Archive$SegmentUnit$$ExternalSyntheticLambda1
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return Archive.SegmentUnit.lambda$new$1((Archive.PackingFile) obj);
                }
            }).sum();
        }

        static /* synthetic */ int lambda$new$0(Pack200ClassReader pack200ClassReader) {
            return pack200ClassReader.b.length;
        }

        static /* synthetic */ int lambda$new$1(PackingFile packingFile) {
            return packingFile.contents.length;
        }

        public void addPackedByteAmount(int i) {
            this.packedByteAmount += i;
        }

        public int classListSize() {
            return this.classList.size();
        }

        public int fileListSize() {
            return this.fileList.size();
        }

        public int getByteAmount() {
            return this.byteAmount;
        }

        public List<Pack200ClassReader> getClassList() {
            return this.classList;
        }

        public List<PackingFile> getFileList() {
            return this.fileList;
        }

        public int getPackedByteAmount() {
            return this.packedByteAmount;
        }
    }

    public Archive(JarFile jarFile, OutputStream outputStream, PackingOptions packingOptions) throws IOException {
        packingOptions = packingOptions == null ? new PackingOptions() : packingOptions;
        this.options = packingOptions;
        this.outputStream = new BufferedOutputStream(packingOptions.isGzip() ? new GZIPOutputStream(outputStream) : outputStream);
        this.jarFile = jarFile;
        this.jarInputStream = null;
        PackingUtils.config(packingOptions);
    }

    public Archive(JarInputStream jarInputStream, OutputStream outputStream, PackingOptions packingOptions) throws IOException {
        this.jarInputStream = jarInputStream;
        packingOptions = packingOptions == null ? new PackingOptions() : packingOptions;
        this.options = packingOptions;
        this.outputStream = new BufferedOutputStream(packingOptions.isGzip() ? new GZIPOutputStream(outputStream) : outputStream);
        PackingUtils.config(packingOptions);
    }

    private boolean addJarEntry(PackingFile packingFile, List<Pack200ClassReader> list, List<PackingFile> list2) {
        long segmentLimit = this.options.getSegmentLimit();
        if (segmentLimit != -1 && segmentLimit != 0) {
            long jEstimateSize = estimateSize(packingFile);
            long j = this.currentSegmentSize;
            if (jEstimateSize + j > segmentLimit && j > 0) {
                return false;
            }
            this.currentSegmentSize = j + jEstimateSize;
        }
        String name = packingFile.getName();
        if (name.endsWith(".class") && !this.options.isPassFile(name)) {
            Pack200ClassReader pack200ClassReader = new Pack200ClassReader(packingFile.contents);
            pack200ClassReader.setFileName(name);
            list.add(pack200ClassReader);
            packingFile.contents = EMPTY_BYTE_ARRAY;
        }
        list2.add(packingFile);
        return true;
    }

    private void doNormalPack() throws IOException {
        List<PackingFile> packingFileListFromJar;
        PackingUtils.log("Start to perform a normal packing");
        JarInputStream jarInputStream = this.jarInputStream;
        if (jarInputStream != null) {
            packingFileListFromJar = PackingUtils.getPackingFileListFromJar(jarInputStream, this.options.isKeepFileOrder());
        } else {
            packingFileListFromJar = PackingUtils.getPackingFileListFromJar(this.jarFile, this.options.isKeepFileOrder());
        }
        List<SegmentUnit> listSplitIntoSegments = splitIntoSegments(packingFileListFromJar);
        int size = listSplitIntoSegments.size();
        int byteAmount = 0;
        int packedByteAmount = 0;
        for (int i = 0; i < size; i++) {
            SegmentUnit segmentUnit = listSplitIntoSegments.get(i);
            new Segment().pack(segmentUnit, this.outputStream, this.options);
            byteAmount += segmentUnit.getByteAmount();
            packedByteAmount += segmentUnit.getPackedByteAmount();
        }
        PackingUtils.log("Total: Packed " + byteAmount + " input bytes of " + packingFileListFromJar.size() + " files into " + packedByteAmount + " bytes in " + size + " segments");
        this.outputStream.close();
    }

    private void doZeroEffortPack() throws IOException {
        PackingUtils.log("Start to perform a zero-effort packing");
        JarInputStream jarInputStream = this.jarInputStream;
        if (jarInputStream != null) {
            PackingUtils.copyThroughJar(jarInputStream, this.outputStream);
        } else {
            PackingUtils.copyThroughJar(this.jarFile, this.outputStream);
        }
    }

    private long estimateSize(PackingFile packingFile) {
        String name = packingFile.getName();
        if (name.startsWith("META-INF") || name.startsWith("/META-INF")) {
            return 0L;
        }
        long length = packingFile.contents.length;
        return ((long) name.length()) + (length >= 0 ? length : 0L) + 5;
    }

    public void pack() throws IOException {
        if (this.options.getEffort() == 0) {
            doZeroEffortPack();
        } else {
            doNormalPack();
        }
    }

    private List<SegmentUnit> splitIntoSegments(List<PackingFile> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        long segmentLimit = this.options.getSegmentLimit();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            PackingFile packingFile = list.get(i);
            if (!addJarEntry(packingFile, arrayList2, arrayList3)) {
                arrayList.add(new SegmentUnit(arrayList2, arrayList3));
                arrayList2 = new ArrayList();
                arrayList3 = new ArrayList();
                this.currentSegmentSize = 0L;
                addJarEntry(packingFile, arrayList2, arrayList3);
                this.currentSegmentSize = 0L;
            } else if (segmentLimit == 0 && estimateSize(packingFile) > 0) {
                arrayList.add(new SegmentUnit(arrayList2, arrayList3));
                arrayList2 = new ArrayList();
                arrayList3 = new ArrayList();
            }
        }
        if (arrayList2.size() > 0 || arrayList3.size() > 0) {
            arrayList.add(new SegmentUnit(arrayList2, arrayList3));
        }
        return arrayList;
    }
}
