package org.apache.commons.io.monitor;

import java.io.File;
import java.io.FileFilter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOCase;
import org.apache.commons.io.comparator.NameFileComparator;
import org.apache.commons.io.filefilter.TrueFileFilter;

/* JADX INFO: loaded from: classes3.dex */
public class FileAlterationObserver implements Serializable {
    private static final long serialVersionUID = 1185122225658782848L;
    private final Comparator<File> comparator;
    private final transient FileFilter fileFilter;
    private final transient List<FileAlterationListener> listeners;
    private final FileEntry rootEntry;

    public void destroy() throws Exception {
    }

    public FileAlterationObserver(File file) {
        this(file, (FileFilter) null);
    }

    public FileAlterationObserver(File file, FileFilter fileFilter) {
        this(file, fileFilter, (IOCase) null);
    }

    public FileAlterationObserver(File file, FileFilter fileFilter, IOCase iOCase) {
        this(new FileEntry(file), fileFilter, iOCase);
    }

    protected FileAlterationObserver(FileEntry fileEntry, FileFilter fileFilter, IOCase iOCase) {
        this.listeners = new CopyOnWriteArrayList();
        Objects.requireNonNull(fileEntry, "rootEntry");
        Objects.requireNonNull(fileEntry.getFile(), "rootEntry.getFile()");
        this.rootEntry = fileEntry;
        this.fileFilter = fileFilter == null ? TrueFileFilter.INSTANCE : fileFilter;
        int i = AnonymousClass1.$SwitchMap$org$apache$commons$io$IOCase[IOCase.value(iOCase, IOCase.SYSTEM).ordinal()];
        if (i == 1) {
            this.comparator = NameFileComparator.NAME_SYSTEM_COMPARATOR;
        } else if (i == 2) {
            this.comparator = NameFileComparator.NAME_INSENSITIVE_COMPARATOR;
        } else {
            this.comparator = NameFileComparator.NAME_COMPARATOR;
        }
    }

    /* JADX INFO: renamed from: org.apache.commons.io.monitor.FileAlterationObserver$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$io$IOCase;

        static {
            int[] iArr = new int[IOCase.values().length];
            $SwitchMap$org$apache$commons$io$IOCase = iArr;
            try {
                iArr[IOCase.SYSTEM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$io$IOCase[IOCase.INSENSITIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FileAlterationObserver(String str) {
        this(new File(str));
    }

    public FileAlterationObserver(String str, FileFilter fileFilter) {
        this(new File(str), fileFilter);
    }

    public FileAlterationObserver(String str, FileFilter fileFilter, IOCase iOCase) {
        this(new File(str), fileFilter, iOCase);
    }

    public void addListener(FileAlterationListener fileAlterationListener) {
        if (fileAlterationListener != null) {
            this.listeners.add(fileAlterationListener);
        }
    }

    public void checkAndNotify() {
        this.listeners.forEach(new Consumer() { // from class: org.apache.commons.io.monitor.FileAlterationObserver$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2171x2d975733((FileAlterationListener) obj);
            }
        });
        File file = this.rootEntry.getFile();
        if (file.exists()) {
            FileEntry fileEntry = this.rootEntry;
            checkAndNotify(fileEntry, fileEntry.getChildren(), listFiles(file));
        } else if (this.rootEntry.isExists()) {
            FileEntry fileEntry2 = this.rootEntry;
            checkAndNotify(fileEntry2, fileEntry2.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
        }
        this.listeners.forEach(new Consumer() { // from class: org.apache.commons.io.monitor.FileAlterationObserver$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2172x47b2d5d2((FileAlterationListener) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$checkAndNotify$0$org-apache-commons-io-monitor-FileAlterationObserver, reason: not valid java name */
    /* synthetic */ void m2171x2d975733(FileAlterationListener fileAlterationListener) {
        fileAlterationListener.onStart(this);
    }

    /* JADX INFO: renamed from: lambda$checkAndNotify$1$org-apache-commons-io-monitor-FileAlterationObserver, reason: not valid java name */
    /* synthetic */ void m2172x47b2d5d2(FileAlterationListener fileAlterationListener) {
        fileAlterationListener.onStop(this);
    }

    private void checkAndNotify(FileEntry fileEntry, FileEntry[] fileEntryArr, File[] fileArr) {
        FileEntry[] fileEntryArr2 = fileArr.length > 0 ? new FileEntry[fileArr.length] : FileEntry.EMPTY_FILE_ENTRY_ARRAY;
        int i = 0;
        for (FileEntry fileEntry2 : fileEntryArr) {
            while (i < fileArr.length && this.comparator.compare(fileEntry2.getFile(), fileArr[i]) > 0) {
                FileEntry fileEntryCreateFileEntry = createFileEntry(fileEntry, fileArr[i]);
                fileEntryArr2[i] = fileEntryCreateFileEntry;
                doCreate(fileEntryCreateFileEntry);
                i++;
            }
            if (i < fileArr.length && this.comparator.compare(fileEntry2.getFile(), fileArr[i]) == 0) {
                doMatch(fileEntry2, fileArr[i]);
                checkAndNotify(fileEntry2, fileEntry2.getChildren(), listFiles(fileArr[i]));
                fileEntryArr2[i] = fileEntry2;
                i++;
            } else {
                checkAndNotify(fileEntry2, fileEntry2.getChildren(), FileUtils.EMPTY_FILE_ARRAY);
                doDelete(fileEntry2);
            }
        }
        while (i < fileArr.length) {
            FileEntry fileEntryCreateFileEntry2 = createFileEntry(fileEntry, fileArr[i]);
            fileEntryArr2[i] = fileEntryCreateFileEntry2;
            doCreate(fileEntryCreateFileEntry2);
            i++;
        }
        fileEntry.setChildren(fileEntryArr2);
    }

    private FileEntry createFileEntry(FileEntry fileEntry, File file) {
        FileEntry fileEntryNewChildInstance = fileEntry.newChildInstance(file);
        fileEntryNewChildInstance.refresh(file);
        fileEntryNewChildInstance.setChildren(doListFiles(file, fileEntryNewChildInstance));
        return fileEntryNewChildInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doCreate(final FileEntry fileEntry) {
        this.listeners.forEach(new Consumer() { // from class: org.apache.commons.io.monitor.FileAlterationObserver$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FileAlterationObserver.lambda$doCreate$2(fileEntry, (FileAlterationListener) obj);
            }
        });
        Stream.of((Object[]) fileEntry.getChildren()).forEach(new Consumer() { // from class: org.apache.commons.io.monitor.FileAlterationObserver$$ExternalSyntheticLambda2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.doCreate((FileEntry) obj);
            }
        });
    }

    static /* synthetic */ void lambda$doCreate$2(FileEntry fileEntry, FileAlterationListener fileAlterationListener) {
        if (fileEntry.isDirectory()) {
            fileAlterationListener.onDirectoryCreate(fileEntry.getFile());
        } else {
            fileAlterationListener.onFileCreate(fileEntry.getFile());
        }
    }

    private void doDelete(final FileEntry fileEntry) {
        this.listeners.forEach(new Consumer() { // from class: org.apache.commons.io.monitor.FileAlterationObserver$$ExternalSyntheticLambda7
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                FileAlterationObserver.lambda$doDelete$3(fileEntry, (FileAlterationListener) obj);
            }
        });
    }

    static /* synthetic */ void lambda$doDelete$3(FileEntry fileEntry, FileAlterationListener fileAlterationListener) {
        if (fileEntry.isDirectory()) {
            fileAlterationListener.onDirectoryDelete(fileEntry.getFile());
        } else {
            fileAlterationListener.onFileDelete(fileEntry.getFile());
        }
    }

    private FileEntry[] doListFiles(File file, final FileEntry fileEntry) {
        final File[] fileArrListFiles = listFiles(file);
        FileEntry[] fileEntryArr = fileArrListFiles.length > 0 ? new FileEntry[fileArrListFiles.length] : FileEntry.EMPTY_FILE_ENTRY_ARRAY;
        Arrays.setAll(fileEntryArr, new IntFunction() { // from class: org.apache.commons.io.monitor.FileAlterationObserver$$ExternalSyntheticLambda3
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return this.f$0.m2173xdd7b21b3(fileEntry, fileArrListFiles, i);
            }
        });
        return fileEntryArr;
    }

    /* JADX INFO: renamed from: lambda$doListFiles$4$org-apache-commons-io-monitor-FileAlterationObserver, reason: not valid java name */
    /* synthetic */ FileEntry m2173xdd7b21b3(FileEntry fileEntry, File[] fileArr, int i) {
        return createFileEntry(fileEntry, fileArr[i]);
    }

    private void doMatch(final FileEntry fileEntry, final File file) {
        if (fileEntry.refresh(file)) {
            this.listeners.forEach(new Consumer() { // from class: org.apache.commons.io.monitor.FileAlterationObserver$$ExternalSyntheticLambda6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    FileAlterationObserver.lambda$doMatch$5(fileEntry, file, (FileAlterationListener) obj);
                }
            });
        }
    }

    static /* synthetic */ void lambda$doMatch$5(FileEntry fileEntry, File file, FileAlterationListener fileAlterationListener) {
        if (fileEntry.isDirectory()) {
            fileAlterationListener.onDirectoryChange(file);
        } else {
            fileAlterationListener.onFileChange(file);
        }
    }

    public File getDirectory() {
        return this.rootEntry.getFile();
    }

    public FileFilter getFileFilter() {
        return this.fileFilter;
    }

    public Iterable<FileAlterationListener> getListeners() {
        return new ArrayList(this.listeners);
    }

    public void initialize() throws Exception {
        FileEntry fileEntry = this.rootEntry;
        fileEntry.refresh(fileEntry.getFile());
        FileEntry fileEntry2 = this.rootEntry;
        fileEntry2.setChildren(doListFiles(fileEntry2.getFile(), this.rootEntry));
    }

    private File[] listFiles(File file) {
        File[] fileArrListFiles = file.isDirectory() ? file.listFiles(this.fileFilter) : null;
        if (fileArrListFiles == null) {
            fileArrListFiles = FileUtils.EMPTY_FILE_ARRAY;
        }
        if (fileArrListFiles.length > 1) {
            Arrays.sort(fileArrListFiles, this.comparator);
        }
        return fileArrListFiles;
    }

    public void removeListener(final FileAlterationListener fileAlterationListener) {
        if (fileAlterationListener != null) {
            List<FileAlterationListener> list = this.listeners;
            Objects.requireNonNull(fileAlterationListener);
            list.removeIf(new Predicate() { // from class: org.apache.commons.io.monitor.FileAlterationObserver$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return fileAlterationListener.equals((FileAlterationListener) obj);
                }
            });
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "[file='" + getDirectory().getPath() + "', " + this.fileFilter.toString() + ", listeners=" + this.listeners.size() + "]";
    }
}
