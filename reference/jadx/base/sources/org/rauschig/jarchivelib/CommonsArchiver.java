package org.rauschig.jarchivelib;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.archivers.ArchiveException;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.ArchiveOutputStream;

/* JADX INFO: loaded from: classes3.dex */
class CommonsArchiver implements Archiver {
    private final ArchiveFormat archiveFormat;

    CommonsArchiver(ArchiveFormat archiveFormat) {
        this.archiveFormat = archiveFormat;
    }

    public ArchiveFormat getArchiveFormat() {
        return this.archiveFormat;
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public File create(String str, File file, File file2) throws IOException {
        return create(str, file, IOUtils.filesContainedIn(file2));
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public File create(String str, File file, File... fileArr) throws Throwable {
        ArchiveOutputStream archiveOutputStreamCreateArchiveOutputStream;
        IOUtils.requireDirectory(file);
        File fileCreateNewArchiveFile = createNewArchiveFile(str, getFilenameExtension(), file);
        try {
            archiveOutputStreamCreateArchiveOutputStream = createArchiveOutputStream(fileCreateNewArchiveFile);
            try {
                writeToArchive(fileArr, archiveOutputStreamCreateArchiveOutputStream);
                archiveOutputStreamCreateArchiveOutputStream.flush();
                IOUtils.closeQuietly(archiveOutputStreamCreateArchiveOutputStream);
                return fileCreateNewArchiveFile;
            } catch (Throwable th) {
                th = th;
                IOUtils.closeQuietly(archiveOutputStreamCreateArchiveOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            archiveOutputStreamCreateArchiveOutputStream = null;
        }
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public void extract(File file, File file2) throws Throwable {
        ArchiveInputStream archiveInputStreamCreateArchiveInputStream;
        assertExtractSource(file);
        IOUtils.requireDirectory(file2);
        try {
            archiveInputStreamCreateArchiveInputStream = createArchiveInputStream(file);
            try {
                extract(archiveInputStreamCreateArchiveInputStream, file2);
                IOUtils.closeQuietly(archiveInputStreamCreateArchiveInputStream);
            } catch (Throwable th) {
                th = th;
                IOUtils.closeQuietly(archiveInputStreamCreateArchiveInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            archiveInputStreamCreateArchiveInputStream = null;
        }
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public void extract(InputStream inputStream, File file) throws IOException {
        extract(createArchiveInputStream(inputStream), file);
    }

    private void extract(ArchiveInputStream archiveInputStream, File file) throws Throwable {
        while (true) {
            org.apache.commons.compress.archivers.ArchiveEntry nextEntry = archiveInputStream.getNextEntry();
            if (nextEntry == null) {
                return;
            }
            File file2 = new File(file, nextEntry.getName());
            if (nextEntry.isDirectory()) {
                file2.mkdirs();
            } else {
                file2.getParentFile().mkdirs();
                IOUtils.copy(archiveInputStream, file2);
            }
            FileModeMapper.map(nextEntry, file2);
        }
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public ArchiveStream stream(File file) throws IOException {
        return new CommonsArchiveStream(createArchiveInputStream(file));
    }

    @Override // org.rauschig.jarchivelib.Archiver
    public String getFilenameExtension() {
        return getArchiveFormat().getDefaultFileExtension();
    }

    protected ArchiveInputStream createArchiveInputStream(File file) throws IOException {
        try {
            return CommonsStreamFactory.createArchiveInputStream(file);
        } catch (ArchiveException e) {
            throw new IOException(e);
        }
    }

    protected ArchiveInputStream createArchiveInputStream(InputStream inputStream) throws IOException {
        try {
            return CommonsStreamFactory.createArchiveInputStream(inputStream);
        } catch (ArchiveException e) {
            throw new IOException(e);
        }
    }

    protected ArchiveOutputStream createArchiveOutputStream(File file) throws IOException {
        try {
            return CommonsStreamFactory.createArchiveOutputStream(this, file);
        } catch (ArchiveException e) {
            throw new IOException(e);
        }
    }

    protected void assertExtractSource(File file) throws IllegalArgumentException, FileNotFoundException {
        if (file.isDirectory()) {
            throw new IllegalArgumentException("Can not extract " + file + ". Source is a directory.");
        }
        if (!file.exists()) {
            throw new FileNotFoundException(file.getPath());
        }
        if (!file.canRead()) {
            throw new IllegalArgumentException("Can not extract " + file + ". Can not read from source.");
        }
    }

    protected File createNewArchiveFile(String str, String str2, File file) throws IOException {
        if (!str.endsWith(str2)) {
            str = str + str2;
        }
        File file2 = new File(file, str);
        file2.createNewFile();
        return file2;
    }

    protected void writeToArchive(File[] fileArr, ArchiveOutputStream archiveOutputStream) throws Throwable {
        for (File file : fileArr) {
            if (!file.exists()) {
                throw new FileNotFoundException(file.getPath());
            }
            if (!file.canRead()) {
                throw new FileNotFoundException(file.getPath() + " (Permission denied)");
            }
            writeToArchive(file.getParentFile(), new File[]{file}, archiveOutputStream);
        }
    }

    protected void writeToArchive(File file, File[] fileArr, ArchiveOutputStream archiveOutputStream) throws Throwable {
        for (File file2 : fileArr) {
            createArchiveEntry(file2, IOUtils.relativePath(file, file2), archiveOutputStream);
            if (file2.isDirectory()) {
                writeToArchive(file, file2.listFiles(), archiveOutputStream);
            }
        }
    }

    protected void createArchiveEntry(File file, String str, ArchiveOutputStream archiveOutputStream) throws Throwable {
        org.apache.commons.compress.archivers.ArchiveEntry archiveEntryCreateArchiveEntry = archiveOutputStream.createArchiveEntry(file, str);
        archiveOutputStream.putArchiveEntry(archiveEntryCreateArchiveEntry);
        if (!archiveEntryCreateArchiveEntry.isDirectory()) {
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    IOUtils.copy(fileInputStream2, archiveOutputStream);
                    IOUtils.closeQuietly(fileInputStream2);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    IOUtils.closeQuietly(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        archiveOutputStream.closeArchiveEntry();
    }
}
