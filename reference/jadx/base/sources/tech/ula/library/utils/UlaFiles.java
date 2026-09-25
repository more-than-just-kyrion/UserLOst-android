package tech.ula.library.utils;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: UlaFiles.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010-\u001a\u00020\u0005J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u0005J\u0012\u00102\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\b\u00103\u001a\u00020/H\u0002J\u0010\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u0005H\u0002J\f\u00106\u001a\u00020\u0005*\u00020\u0005H\u0002R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\fR\u0011\u0010\u0013\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\fR\u0011\u0010\u0015\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\fR\u0011\u0010\u0017\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\fR\u0011\u0010\u0019\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\fR\u0011\u0010\u001b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\fR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\fR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b \u0010\fR\u0011\u0010!\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\fR\u0013\u0010#\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\fR\u0013\u0010%\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\fR\u0013\u0010'\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\fR\u0011\u0010)\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010+\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\f¨\u00067"}, d2 = {"Ltech/ula/library/utils/UlaFiles;", "", "context", "Landroid/content/Context;", "libDirPath", "", "symlinker", "Ltech/ula/library/utils/Symlinker;", "(Landroid/content/Context;Ljava/lang/String;Ltech/ula/library/utils/Symlinker;)V", "DCIMDir", "Ljava/io/File;", "getDCIMDir", "()Ljava/io/File;", "busybox", "getBusybox", "documentsDir", "getDocumentsDir", "downloadDir", "getDownloadDir", "emulatedScopedDir", "getEmulatedScopedDir", "emulatedUserDir", "getEmulatedUserDir", "filesDir", "getFilesDir", "intentsDir", "getIntentsDir", "libDir", "getLibDir", "musicDir", "getMusicDir", "picturesDir", "getPicturesDir", "proot", "getProot", "sdCardScopedDir", "getSdCardScopedDir", "sdCardUserDir", "getSdCardUserDir", "sdcardDir", "getSdcardDir", "supportDir", "getSupportDir", "videosDir", "getVideosDir", "getArchType", "makePermissionsUsable", "", "containingDirectoryPath", "filename", "resolveSdCardScopedStorage", "setupLinks", "translateABI", "abi", "toSupportName", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UlaFiles {
    private final File DCIMDir;
    private final File busybox;
    private final File documentsDir;
    private final File downloadDir;
    private final File emulatedScopedDir;
    private final File emulatedUserDir;
    private final File filesDir;
    private final File intentsDir;
    private final File libDir;
    private final File musicDir;
    private final File picturesDir;
    private final File proot;
    private final File sdCardScopedDir;
    private final File sdCardUserDir;
    private final File sdcardDir;
    private final File supportDir;
    private final Symlinker symlinker;
    private final File videosDir;

    public UlaFiles(Context context, String libDirPath, Symlinker symlinker) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(libDirPath, "libDirPath");
        Intrinsics.checkNotNullParameter(symlinker, "symlinker");
        this.symlinker = symlinker;
        File filesDir = context.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "getFilesDir(...)");
        this.filesDir = filesDir;
        this.libDir = new File(libDirPath);
        File file = new File(filesDir, "support");
        this.supportDir = file;
        File externalFilesDir = context.getExternalFilesDir(null);
        Intrinsics.checkNotNull(externalFilesDir);
        this.emulatedScopedDir = externalFilesDir;
        File file2 = new File(externalFilesDir, "storage");
        this.emulatedUserDir = file2;
        File file3 = new File(externalFilesDir, "Intents");
        this.intentsDir = file3;
        File fileResolveSdCardScopedStorage = resolveSdCardScopedStorage(context);
        this.sdCardScopedDir = fileResolveSdCardScopedStorage;
        File file4 = fileResolveSdCardScopedStorage != null ? new File(fileResolveSdCardScopedStorage, "storage") : null;
        this.sdCardUserDir = file4;
        this.sdcardDir = Environment.getExternalStorageDirectory();
        this.documentsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS);
        this.downloadDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        this.musicDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MUSIC);
        this.picturesDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        this.videosDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES);
        this.DCIMDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM);
        this.busybox = new File(file, "busybox");
        this.proot = new File(file, "proot");
        file2.mkdirs();
        file3.mkdirs();
        if (file4 != null) {
            file4.mkdirs();
        }
        setupLinks();
    }

    public /* synthetic */ UlaFiles(Context context, String str, Symlinker symlinker, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i & 4) != 0 ? new Symlinker() : symlinker);
    }

    public final File getFilesDir() {
        return this.filesDir;
    }

    public final File getLibDir() {
        return this.libDir;
    }

    public final File getSupportDir() {
        return this.supportDir;
    }

    public final File getEmulatedScopedDir() {
        return this.emulatedScopedDir;
    }

    public final File getEmulatedUserDir() {
        return this.emulatedUserDir;
    }

    public final File getIntentsDir() {
        return this.intentsDir;
    }

    public final File getSdCardScopedDir() {
        return this.sdCardScopedDir;
    }

    public final File getSdCardUserDir() {
        return this.sdCardUserDir;
    }

    public final File getSdcardDir() {
        return this.sdcardDir;
    }

    public final File getDocumentsDir() {
        return this.documentsDir;
    }

    public final File getDownloadDir() {
        return this.downloadDir;
    }

    public final File getMusicDir() {
        return this.musicDir;
    }

    public final File getPicturesDir() {
        return this.picturesDir;
    }

    public final File getVideosDir() {
        return this.videosDir;
    }

    public final File getDCIMDir() {
        return this.DCIMDir;
    }

    public final File getBusybox() {
        return this.busybox;
    }

    public final File getProot() {
        return this.proot;
    }

    public final void makePermissionsUsable(String containingDirectoryPath, String filename) throws InterruptedException {
        Intrinsics.checkNotNullParameter(containingDirectoryPath, "containingDirectoryPath");
        Intrinsics.checkNotNullParameter(filename, "filename");
        ArrayList arrayListArrayListOf = CollectionsKt.arrayListOf("chmod", "0777", filename);
        File file = new File(containingDirectoryPath);
        file.mkdirs();
        ProcessBuilder processBuilder = new ProcessBuilder(arrayListArrayListOf);
        processBuilder.directory(file);
        processBuilder.start().waitFor();
    }

    private final File resolveSdCardScopedStorage(Context context) {
        File[] externalFilesDirs = context.getExternalFilesDirs(null);
        if (externalFilesDirs.length > 1) {
            return externalFilesDirs[1];
        }
        return null;
    }

    private final String toSupportName(String str) {
        return StringsKt.substringBeforeLast$default(StringsKt.substringAfter$default(str, "lib_", (String) null, 2, (Object) null), ".so", (String) null, 2, (Object) null);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003c  */
    /* JADX WARN: Code duplicated, block: B:12:0x0044  */
    /* JADX WARN: Code duplicated, block: B:14:0x004d  */
    /* JADX WARN: Code duplicated, block: B:15:0x005c  */
    /* JADX WARN: Code duplicated, block: B:18:0x0066 A[PHI: r5
  0x0066: PHI (r5v2 java.lang.String) = (r5v0 java.lang.String), (r5v1 java.lang.String), (r5v0 java.lang.String) binds: [B:16:0x0063, B:14:0x004d, B:9:0x003a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:23:0x008c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:0x008c A[SYNTHETIC] */
    private final void setupLinks() throws Exception {
        this.supportDir.mkdirs();
        File[] fileArrListFiles = this.libDir.listFiles();
        Intrinsics.checkNotNull(fileArrListFiles);
        for (File file : fileArrListFiles) {
            String name = file.getName();
            Intrinsics.checkNotNull(name);
            if (!StringsKt.startsWith$default(name, "lib_proot.", false, 2, (Object) null)) {
                Intrinsics.checkNotNull(name);
                if (!StringsKt.startsWith$default(name, "lib_libtalloc", false, 2, (Object) null)) {
                    Intrinsics.checkNotNull(name);
                    if (StringsKt.startsWith$default(name, "lib_loader", false, 2, (Object) null)) {
                        if (Build.VERSION.SDK_INT >= 29) {
                            Intrinsics.checkNotNull(name);
                            if (StringsKt.endsWith$default(name, ".a10.so", false, 2, (Object) null)) {
                                Intrinsics.checkNotNull(name);
                                name = StringsKt.replace$default(name, ".a10.so", ".so", false, 4, (Object) null);
                                Intrinsics.checkNotNull(name);
                                File file2 = new File(this.supportDir, toSupportName(name));
                                file2.delete();
                                Symlinker symlinker = this.symlinker;
                                String path = file.getPath();
                                Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
                                String path2 = file2.getPath();
                                Intrinsics.checkNotNullExpressionValue(path2, "getPath(...)");
                                symlinker.createSymlink(path, path2);
                            }
                        } else {
                            Intrinsics.checkNotNull(name);
                            if (!StringsKt.endsWith$default(name, ".a10.so", false, 2, (Object) null)) {
                                Intrinsics.checkNotNull(name);
                                File file3 = new File(this.supportDir, toSupportName(name));
                                file3.delete();
                                Symlinker symlinker2 = this.symlinker;
                                String path3 = file.getPath();
                                Intrinsics.checkNotNullExpressionValue(path3, "getPath(...)");
                                String path4 = file3.getPath();
                                Intrinsics.checkNotNullExpressionValue(path4, "getPath(...)");
                                symlinker2.createSymlink(path3, path4);
                            }
                        }
                    } else {
                        Intrinsics.checkNotNull(name);
                        File file4 = new File(this.supportDir, toSupportName(name));
                        file4.delete();
                        Symlinker symlinker3 = this.symlinker;
                        String path5 = file.getPath();
                        Intrinsics.checkNotNullExpressionValue(path5, "getPath(...)");
                        String path6 = file4.getPath();
                        Intrinsics.checkNotNullExpressionValue(path6, "getPath(...)");
                        symlinker3.createSymlink(path5, path6);
                    }
                } else if (Build.VERSION.SDK_INT >= 29) {
                    Intrinsics.checkNotNull(name);
                    if (StringsKt.endsWith$default(name, ".a10.so", false, 2, (Object) null)) {
                        Intrinsics.checkNotNull(name);
                        name = StringsKt.replace$default(name, ".a10.so", ".so", false, 4, (Object) null);
                        Intrinsics.checkNotNull(name);
                        File file5 = new File(this.supportDir, toSupportName(name));
                        file5.delete();
                        Symlinker symlinker4 = this.symlinker;
                        String path7 = file.getPath();
                        Intrinsics.checkNotNullExpressionValue(path7, "getPath(...)");
                        String path8 = file5.getPath();
                        Intrinsics.checkNotNullExpressionValue(path8, "getPath(...)");
                        symlinker4.createSymlink(path7, path8);
                    }
                } else {
                    Intrinsics.checkNotNull(name);
                    if (!StringsKt.endsWith$default(name, ".a10.so", false, 2, (Object) null)) {
                        Intrinsics.checkNotNull(name);
                        File file6 = new File(this.supportDir, toSupportName(name));
                        file6.delete();
                        Symlinker symlinker5 = this.symlinker;
                        String path9 = file.getPath();
                        Intrinsics.checkNotNullExpressionValue(path9, "getPath(...)");
                        String path10 = file6.getPath();
                        Intrinsics.checkNotNullExpressionValue(path10, "getPath(...)");
                        symlinker5.createSymlink(path9, path10);
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 29) {
                Intrinsics.checkNotNull(name);
                if (StringsKt.endsWith$default(name, ".a10.so", false, 2, (Object) null)) {
                    Intrinsics.checkNotNull(name);
                    name = StringsKt.replace$default(name, ".a10.so", ".so", false, 4, (Object) null);
                    Intrinsics.checkNotNull(name);
                    File file7 = new File(this.supportDir, toSupportName(name));
                    file7.delete();
                    Symlinker symlinker6 = this.symlinker;
                    String path11 = file.getPath();
                    Intrinsics.checkNotNullExpressionValue(path11, "getPath(...)");
                    String path12 = file7.getPath();
                    Intrinsics.checkNotNullExpressionValue(path12, "getPath(...)");
                    symlinker6.createSymlink(path11, path12);
                }
            } else {
                Intrinsics.checkNotNull(name);
                if (!StringsKt.endsWith$default(name, ".a10.so", false, 2, (Object) null)) {
                    Intrinsics.checkNotNull(name);
                    File file8 = new File(this.supportDir, toSupportName(name));
                    file8.delete();
                    Symlinker symlinker7 = this.symlinker;
                    String path13 = file.getPath();
                    Intrinsics.checkNotNullExpressionValue(path13, "getPath(...)");
                    String path14 = file8.getPath();
                    Intrinsics.checkNotNullExpressionValue(path14, "getPath(...)");
                    symlinker7.createSymlink(path13, path14);
                }
            }
        }
    }

    public final String getArchType() {
        return translateABI(FilesKt.readText$default(new File(this.libDir, "lib_arch.so"), null, 1, null));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0033 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        if (r2.equals("x86") == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        if (r2.equals("x86_64") == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:?, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final String translateABI(String abi) {
        String str;
        switch (abi.hashCode()) {
            case -806050265:
                str = "x86_64";
                break;
            case 117110:
                str = "x86";
                break;
            case 145444210:
                if (abi.equals("armeabi-v7a")) {
                    return "arm";
                }
                return "";
            case 1431565292:
                if (abi.equals("arm64-v8a")) {
                    return "arm64";
                }
                return "";
            default:
                return "";
        }
    }
}
