package org.apache.commons.compress.archivers;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Objects;
import java.util.function.Consumer;
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarFile;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;

/* JADX INFO: loaded from: classes3.dex */
public final class Lister {
    private static final ArchiveStreamFactory FACTORY = ArchiveStreamFactory.DEFAULT;
    private final String[] args;
    private final boolean quiet;

    private static <T extends ArchiveInputStream<? extends E>, E extends ArchiveEntry> T createArchiveInputStream(String[] strArr, InputStream inputStream) throws ArchiveException {
        if (strArr.length > 1) {
            return (T) FACTORY.createArchiveInputStream(strArr[1], inputStream);
        }
        return (T) FACTORY.createArchiveInputStream(inputStream);
    }

    private static String detectFormat(Path path) throws ArchiveException, IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(path, new OpenOption[0]));
        try {
            String strDetect = ArchiveStreamFactory.detect(bufferedInputStream);
            bufferedInputStream.close();
            return strDetect;
        } catch (Throwable th) {
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void main(String... strArr) throws ArchiveException, IOException {
        if (strArr == null || strArr.length == 0) {
            usage();
        } else {
            new Lister(false, strArr).go();
        }
    }

    private static void usage() {
        System.err.println("Parameters: archive-name [archive-type]\n");
        System.err.println("The magic archive-type 'zipfile' prefers ZipFile over ZipArchiveInputStream");
        System.err.println("The magic archive-type 'tarfile' prefers TarFile over TarArchiveInputStream");
    }

    @Deprecated
    public Lister() {
        this(false, "");
    }

    Lister(boolean z, String... strArr) {
        this.quiet = z;
        this.args = (String[]) strArr.clone();
        Objects.requireNonNull(strArr[0], "args[0]");
    }

    void go() throws ArchiveException, IOException {
        list(Paths.get(this.args[0], new String[0]), this.args);
    }

    private void list(Path path, String... strArr) throws ArchiveException, IOException {
        println("Analyzing " + path);
        if (!Files.isRegularFile(path, new LinkOption[0])) {
            System.err.println(path + " doesn't exist or is a directory");
        }
        String lowerCase = (strArr.length > 1 ? strArr[1] : detectFormat(path)).toLowerCase(Locale.ROOT);
        println("Detected format " + lowerCase);
        lowerCase.hashCode();
        switch (lowerCase) {
            case "7z":
                list7z(path);
                break;
            case "tar":
                listZipUsingTarFile(path);
                break;
            case "zip":
                listZipUsingZipFile(path);
                break;
            default:
                listStream(path, strArr);
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void list7z(Path path) throws IOException {
        SevenZFile sevenZFile = ((SevenZFile.Builder) SevenZFile.builder().setPath(path)).get();
        try {
            println("Created " + sevenZFile);
            while (true) {
                SevenZArchiveEntry nextEntry = sevenZFile.getNextEntry();
                if (nextEntry == null) {
                    break;
                } else {
                    println(nextEntry.getName() == null ? sevenZFile.getDefaultName() + " (entry name was null)" : nextEntry.getName());
                }
            }
            if (sevenZFile != null) {
                sevenZFile.close();
            }
        } catch (Throwable th) {
            if (sevenZFile != null) {
                try {
                    sevenZFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private void listStream(Path path, String[] strArr) throws ArchiveException, IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(Files.newInputStream(path, new OpenOption[0]));
        try {
            ArchiveInputStream archiveInputStreamCreateArchiveInputStream = createArchiveInputStream(strArr, bufferedInputStream);
            try {
                println("Created " + archiveInputStreamCreateArchiveInputStream.toString());
                while (true) {
                    ArchiveEntry nextEntry = archiveInputStreamCreateArchiveInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    } else {
                        println(nextEntry);
                    }
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                    }
                    throw th;
                }
                if (archiveInputStreamCreateArchiveInputStream != null) {
                    archiveInputStreamCreateArchiveInputStream.close();
                }
                bufferedInputStream.close();
            } catch (Throwable th2) {
                if (archiveInputStreamCreateArchiveInputStream != null) {
                    try {
                        archiveInputStreamCreateArchiveInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (Throwable th4) {
            bufferedInputStream.close();
            throw th4;
        }
    }

    private void listZipUsingTarFile(Path path) throws IOException {
        TarFile tarFile = new TarFile(path);
        try {
            println("Created " + tarFile);
            tarFile.getEntries().forEach(new Consumer() { // from class: org.apache.commons.compress.archivers.Lister$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.println((TarArchiveEntry) obj);
                }
            });
            tarFile.close();
        } catch (Throwable th) {
            try {
                tarFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void listZipUsingZipFile(Path path) throws IOException {
        ZipFile zipFile = ((ZipFile.Builder) ZipFile.builder().setPath(path)).get();
        try {
            println("Created " + zipFile);
            Enumeration<ZipArchiveEntry> entries = zipFile.getEntries();
            while (entries.hasMoreElements()) {
                println(entries.nextElement());
            }
            if (zipFile != null) {
                zipFile.close();
            }
        } catch (Throwable th) {
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void println(ArchiveEntry archiveEntry) {
        println(archiveEntry.getName());
    }

    private void println(String str) {
        if (this.quiet) {
            return;
        }
        System.out.println(str);
    }
}
