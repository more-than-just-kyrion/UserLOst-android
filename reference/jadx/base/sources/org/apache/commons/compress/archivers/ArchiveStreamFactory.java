package org.apache.commons.compress.archivers;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.Locale;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.function.Consumer;
import org.apache.commons.compress.archivers.ar.ArArchiveInputStream;
import org.apache.commons.compress.archivers.ar.ArArchiveOutputStream;
import org.apache.commons.compress.archivers.arj.ArjArchiveInputStream;
import org.apache.commons.compress.archivers.cpio.CpioArchiveInputStream;
import org.apache.commons.compress.archivers.cpio.CpioArchiveOutputStream;
import org.apache.commons.compress.archivers.dump.DumpArchiveInputStream;
import org.apache.commons.compress.archivers.jar.JarArchiveInputStream;
import org.apache.commons.compress.archivers.jar.JarArchiveOutputStream;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream;
import org.apache.commons.compress.archivers.tar.TarArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;
import org.apache.commons.compress.utils.IOUtils;
import org.apache.commons.compress.utils.Sets;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveStreamFactory implements ArchiveStreamProvider {
    public static final String APK = "apk";
    public static final String APKM = "apkm";
    public static final String APKS = "apks";
    public static final String AR = "ar";
    public static final String ARJ = "arj";
    public static final String CPIO = "cpio";
    public static final ArchiveStreamFactory DEFAULT = new ArchiveStreamFactory();
    public static final String DUMP = "dump";
    private static final int DUMP_SIGNATURE_SIZE = 32;
    public static final String JAR = "jar";
    public static final String SEVEN_Z = "7z";
    private static final int SIGNATURE_SIZE = 12;
    public static final String TAR = "tar";
    private static final int TAR_HEADER_SIZE = 512;
    private static final int TAR_TEST_ENTRY_COUNT = 10;
    public static final String XAPK = "xapk";
    public static final String ZIP = "zip";
    private SortedMap<String, ArchiveStreamProvider> archiveInputStreamProviders;
    private SortedMap<String, ArchiveStreamProvider> archiveOutputStreamProviders;
    private volatile String entryEncoding;

    private static Iterable<ArchiveStreamProvider> archiveStreamProviderIterable() {
        return ServiceLoader.load(ArchiveStreamProvider.class, ClassLoader.getSystemClassLoader());
    }

    public static String detect(InputStream inputStream) throws ArchiveException {
        if (inputStream == null) {
            throw new IllegalArgumentException("Stream must not be null.");
        }
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("Mark is not supported.");
        }
        byte[] bArr = new byte[12];
        inputStream.mark(12);
        try {
            int fully = IOUtils.readFully(inputStream, bArr);
            inputStream.reset();
            if (ZipArchiveInputStream.matches(bArr, fully)) {
                return ZIP;
            }
            if (JarArchiveInputStream.matches(bArr, fully)) {
                return JAR;
            }
            if (ArArchiveInputStream.matches(bArr, fully)) {
                return AR;
            }
            if (CpioArchiveInputStream.matches(bArr, fully)) {
                return CPIO;
            }
            if (ArjArchiveInputStream.matches(bArr, fully)) {
                return ARJ;
            }
            if (SevenZFile.matches(bArr, fully)) {
                return SEVEN_Z;
            }
            byte[] bArr2 = new byte[32];
            inputStream.mark(32);
            try {
                int fully2 = IOUtils.readFully(inputStream, bArr2);
                inputStream.reset();
                if (DumpArchiveInputStream.matches(bArr2, fully2)) {
                    return DUMP;
                }
                byte[] bArr3 = new byte[512];
                inputStream.mark(512);
                try {
                    int fully3 = IOUtils.readFully(inputStream, bArr3);
                    inputStream.reset();
                    if (TarArchiveInputStream.matches(bArr3, fully3)) {
                        return TAR;
                    }
                    if (fully3 >= 512) {
                        try {
                            TarArchiveInputStream tarArchiveInputStream = new TarArchiveInputStream(new ByteArrayInputStream(bArr3));
                            try {
                                TarArchiveEntry nextEntry = tarArchiveInputStream.getNextEntry();
                                int i = 0;
                                while (nextEntry != null && nextEntry.isDirectory()) {
                                    int i2 = i + 1;
                                    if (i >= 10) {
                                        i = i2;
                                        break;
                                    }
                                    nextEntry = tarArchiveInputStream.getNextEntry();
                                    i = i2;
                                }
                                if ((nextEntry != null && nextEntry.isCheckSumOK() && !nextEntry.isDirectory() && nextEntry.getSize() > 0) || i > 0) {
                                    tarArchiveInputStream.close();
                                    return TAR;
                                }
                                tarArchiveInputStream.close();
                            } catch (Throwable th) {
                                try {
                                    tarArchiveInputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (Exception unused) {
                        }
                    }
                    throw new ArchiveException("No Archiver found for the stream signature");
                } catch (IOException e) {
                    throw new ArchiveException("IOException while reading tar signature", e);
                }
            } catch (IOException e2) {
                throw new ArchiveException("IOException while reading dump signature", e2);
            }
        } catch (IOException e3) {
            throw new ArchiveException("IOException while reading signature.", e3);
        }
    }

    public static SortedMap<String, ArchiveStreamProvider> findAvailableArchiveInputStreamProviders() {
        return (SortedMap) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.apache.commons.compress.archivers.ArchiveStreamFactory$$ExternalSyntheticLambda3
            @Override // java.security.PrivilegedAction
            public final Object run() {
                return ArchiveStreamFactory.lambda$findAvailableArchiveInputStreamProviders$1();
            }
        });
    }

    static /* synthetic */ SortedMap lambda$findAvailableArchiveInputStreamProviders$1() {
        final TreeMap treeMap = new TreeMap();
        ArchiveStreamFactory archiveStreamFactory = DEFAULT;
        putAll(archiveStreamFactory.getInputStreamArchiveNames(), archiveStreamFactory, treeMap);
        archiveStreamProviderIterable().forEach(new Consumer() { // from class: org.apache.commons.compress.archivers.ArchiveStreamFactory$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ArchiveStreamProvider archiveStreamProvider = (ArchiveStreamProvider) obj;
                ArchiveStreamFactory.putAll(archiveStreamProvider.getInputStreamArchiveNames(), archiveStreamProvider, treeMap);
            }
        });
        return treeMap;
    }

    public static SortedMap<String, ArchiveStreamProvider> findAvailableArchiveOutputStreamProviders() {
        return (SortedMap) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.apache.commons.compress.archivers.ArchiveStreamFactory$$ExternalSyntheticLambda2
            @Override // java.security.PrivilegedAction
            public final Object run() {
                return ArchiveStreamFactory.lambda$findAvailableArchiveOutputStreamProviders$3();
            }
        });
    }

    static /* synthetic */ SortedMap lambda$findAvailableArchiveOutputStreamProviders$3() {
        final TreeMap treeMap = new TreeMap();
        ArchiveStreamFactory archiveStreamFactory = DEFAULT;
        putAll(archiveStreamFactory.getOutputStreamArchiveNames(), archiveStreamFactory, treeMap);
        archiveStreamProviderIterable().forEach(new Consumer() { // from class: org.apache.commons.compress.archivers.ArchiveStreamFactory$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ArchiveStreamProvider archiveStreamProvider = (ArchiveStreamProvider) obj;
                ArchiveStreamFactory.putAll(archiveStreamProvider.getOutputStreamArchiveNames(), archiveStreamProvider, treeMap);
            }
        });
        return treeMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void putAll(Set<String> set, final ArchiveStreamProvider archiveStreamProvider, final TreeMap<String, ArchiveStreamProvider> treeMap) {
        set.forEach(new Consumer() { // from class: org.apache.commons.compress.archivers.ArchiveStreamFactory$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                treeMap.put(ArchiveStreamFactory.toKey((String) obj), archiveStreamProvider);
            }
        });
    }

    private static String toKey(String str) {
        return str.toUpperCase(Locale.ROOT);
    }

    public ArchiveStreamFactory() {
        this(null);
    }

    public ArchiveStreamFactory(String str) {
        this.entryEncoding = str;
    }

    public <I extends ArchiveInputStream<? extends ArchiveEntry>> I createArchiveInputStream(InputStream inputStream) throws ArchiveException {
        return (I) createArchiveInputStream(detect(inputStream), inputStream);
    }

    public <I extends ArchiveInputStream<? extends ArchiveEntry>> I createArchiveInputStream(String str, InputStream inputStream) throws ArchiveException {
        return (I) createArchiveInputStream(str, inputStream, this.entryEncoding);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveStreamProvider
    public <I extends ArchiveInputStream<? extends ArchiveEntry>> I createArchiveInputStream(String str, InputStream inputStream, String str2) throws ArchiveException {
        if (str == null) {
            throw new IllegalArgumentException("Archiver name must not be null.");
        }
        if (inputStream == null) {
            throw new IllegalArgumentException("InputStream must not be null.");
        }
        if (AR.equalsIgnoreCase(str)) {
            return new ArArchiveInputStream(inputStream);
        }
        if (ARJ.equalsIgnoreCase(str)) {
            if (str2 != null) {
                return new ArjArchiveInputStream(inputStream, str2);
            }
            return new ArjArchiveInputStream(inputStream);
        }
        if (ZIP.equalsIgnoreCase(str)) {
            if (str2 != null) {
                return new ZipArchiveInputStream(inputStream, str2);
            }
            return new ZipArchiveInputStream(inputStream);
        }
        if (TAR.equalsIgnoreCase(str)) {
            if (str2 != null) {
                return new TarArchiveInputStream(inputStream, str2);
            }
            return new TarArchiveInputStream(inputStream);
        }
        if (JAR.equalsIgnoreCase(str) || APK.equalsIgnoreCase(str)) {
            if (str2 != null) {
                return new JarArchiveInputStream(inputStream, str2);
            }
            return new JarArchiveInputStream(inputStream);
        }
        if (CPIO.equalsIgnoreCase(str)) {
            if (str2 != null) {
                return new CpioArchiveInputStream(inputStream, str2);
            }
            return new CpioArchiveInputStream(inputStream);
        }
        if (DUMP.equalsIgnoreCase(str)) {
            if (str2 != null) {
                return new DumpArchiveInputStream(inputStream, str2);
            }
            return new DumpArchiveInputStream(inputStream);
        }
        if (SEVEN_Z.equalsIgnoreCase(str)) {
            throw new StreamingNotSupportedException(SEVEN_Z);
        }
        ArchiveStreamProvider archiveStreamProvider = getArchiveInputStreamProviders().get(toKey(str));
        if (archiveStreamProvider != null) {
            return (I) archiveStreamProvider.createArchiveInputStream(str, inputStream, str2);
        }
        throw new ArchiveException("Archiver: " + str + " not found.");
    }

    public <O extends ArchiveOutputStream<? extends ArchiveEntry>> O createArchiveOutputStream(String str, OutputStream outputStream) throws ArchiveException {
        return (O) createArchiveOutputStream(str, outputStream, this.entryEncoding);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveStreamProvider
    public <O extends ArchiveOutputStream<? extends ArchiveEntry>> O createArchiveOutputStream(String str, OutputStream outputStream, String str2) throws ArchiveException {
        if (str == null) {
            throw new IllegalArgumentException("Archiver name must not be null.");
        }
        if (outputStream == null) {
            throw new IllegalArgumentException("OutputStream must not be null.");
        }
        if (AR.equalsIgnoreCase(str)) {
            return new ArArchiveOutputStream(outputStream);
        }
        if (ZIP.equalsIgnoreCase(str)) {
            ZipArchiveOutputStream zipArchiveOutputStream = new ZipArchiveOutputStream(outputStream);
            if (str2 != null) {
                zipArchiveOutputStream.setEncoding(str2);
            }
            return zipArchiveOutputStream;
        }
        if (TAR.equalsIgnoreCase(str)) {
            if (str2 != null) {
                return new TarArchiveOutputStream(outputStream, str2);
            }
            return new TarArchiveOutputStream(outputStream);
        }
        if (JAR.equalsIgnoreCase(str)) {
            if (str2 != null) {
                return new JarArchiveOutputStream(outputStream, str2);
            }
            return new JarArchiveOutputStream(outputStream);
        }
        if (CPIO.equalsIgnoreCase(str)) {
            if (str2 != null) {
                return new CpioArchiveOutputStream(outputStream, str2);
            }
            return new CpioArchiveOutputStream(outputStream);
        }
        if (SEVEN_Z.equalsIgnoreCase(str)) {
            throw new StreamingNotSupportedException(SEVEN_Z);
        }
        ArchiveStreamProvider archiveStreamProvider = getArchiveOutputStreamProviders().get(toKey(str));
        if (archiveStreamProvider != null) {
            return (O) archiveStreamProvider.createArchiveOutputStream(str, outputStream, str2);
        }
        throw new ArchiveException("Archiver: " + str + " not found.");
    }

    public SortedMap<String, ArchiveStreamProvider> getArchiveInputStreamProviders() {
        if (this.archiveInputStreamProviders == null) {
            this.archiveInputStreamProviders = Collections.unmodifiableSortedMap(findAvailableArchiveInputStreamProviders());
        }
        return this.archiveInputStreamProviders;
    }

    public SortedMap<String, ArchiveStreamProvider> getArchiveOutputStreamProviders() {
        if (this.archiveOutputStreamProviders == null) {
            this.archiveOutputStreamProviders = Collections.unmodifiableSortedMap(findAvailableArchiveOutputStreamProviders());
        }
        return this.archiveOutputStreamProviders;
    }

    public String getEntryEncoding() {
        return this.entryEncoding;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveStreamProvider
    public Set<String> getInputStreamArchiveNames() {
        return Sets.newHashSet(AR, ARJ, ZIP, TAR, JAR, CPIO, DUMP, SEVEN_Z);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveStreamProvider
    public Set<String> getOutputStreamArchiveNames() {
        return Sets.newHashSet(AR, ZIP, TAR, JAR, CPIO, SEVEN_Z);
    }

    @Deprecated
    public void setEntryEncoding(String str) {
        this.entryEncoding = str;
    }
}
