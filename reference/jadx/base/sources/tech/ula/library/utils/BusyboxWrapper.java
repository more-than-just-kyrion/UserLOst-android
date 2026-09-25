package tech.ula.library.utils;

import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.apache.commons.lang3.SystemProperties;

/* JADX INFO: compiled from: BusyboxExecutor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nJ\"\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\rj\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007`\u000eJX\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\rj\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007`\u000e2$\b\u0002\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\rj\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007`\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0007J\u0006\u0010\u0014\u001a\u00020\nJ\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0007J\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Ltech/ula/library/utils/BusyboxWrapper;", "", "ulaFiles", "Ltech/ula/library/utils/UlaFiles;", "(Ltech/ula/library/utils/UlaFiles;)V", "addBusyboxAndProot", "", "", "command", "busyboxIsPresent", "", "executionScriptIsPresent", "getBusyboxEnv", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getProotEnv", "env", "filesystemDir", "Ljava/io/File;", "prootDebugLevel", "prootIsPresent", "wrapCommand", "wrapScript", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BusyboxWrapper {
    private final UlaFiles ulaFiles;

    public BusyboxWrapper(UlaFiles ulaFiles) {
        Intrinsics.checkNotNullParameter(ulaFiles, "ulaFiles");
        this.ulaFiles = ulaFiles;
    }

    public final List<String> wrapCommand(String command) {
        Intrinsics.checkNotNullParameter(command, "command");
        String path = this.ulaFiles.getBusybox().getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        return CollectionsKt.listOf((Object[]) new String[]{path, "sh", "-c", command});
    }

    public final List<String> wrapScript(String command) {
        Intrinsics.checkNotNullParameter(command, "command");
        return CollectionsKt.plus((Collection) CollectionsKt.listOf((Object[]) new String[]{this.ulaFiles.getBusybox().getPath(), "sh"}), (Iterable) StringsKt.split$default((CharSequence) command, new String[]{" "}, false, 0, 6, (Object) null));
    }

    public final HashMap<String, String> getBusyboxEnv() {
        return MapsKt.hashMapOf(TuplesKt.to("LD_LIBRARY_PATH", this.ulaFiles.getSupportDir().getAbsolutePath()), TuplesKt.to("LIB_PATH", this.ulaFiles.getSupportDir().getAbsolutePath()), TuplesKt.to("ROOT_PATH", this.ulaFiles.getFilesDir().getAbsolutePath()));
    }

    public final boolean busyboxIsPresent() {
        return this.ulaFiles.getBusybox().exists();
    }

    public final List<String> addBusyboxAndProot(String command) {
        Intrinsics.checkNotNullParameter(command, "command");
        return CollectionsKt.plus((Collection) CollectionsKt.listOf((Object[]) new String[]{this.ulaFiles.getBusybox().getAbsolutePath(), "sh", "support/execInProot.sh"}), (Iterable) StringsKt.split$default((CharSequence) command, new String[]{" "}, false, 0, 6, (Object) null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HashMap getProotEnv$default(BusyboxWrapper busyboxWrapper, HashMap map, File file, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            map = new HashMap();
        }
        return busyboxWrapper.getProotEnv(map, file, str);
    }

    public final HashMap<String, String> getProotEnv(HashMap<String, String> env, File filesystemDir, String prootDebugLevel) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(env, "env");
        Intrinsics.checkNotNullParameter(filesystemDir, "filesystemDir");
        Intrinsics.checkNotNullParameter(prootDebugLevel, "prootDebugLevel");
        String str3 = "-b " + this.ulaFiles.getEmulatedUserDir().getAbsolutePath() + ":/storage/internal";
        File sdCardUserDir = this.ulaFiles.getSdCardUserDir();
        String str4 = "";
        if (sdCardUserDir == null || (str = "-b " + sdCardUserDir.getAbsolutePath() + ":/storage/sdcard") == null) {
            str = "";
        }
        File sdcardDir = this.ulaFiles.getSdcardDir();
        if (sdcardDir != null && (str2 = "-b " + sdcardDir.getAbsolutePath() + ":/sdcard") != null) {
            str4 = str2;
        }
        File documentsDir = this.ulaFiles.getDocumentsDir();
        if (documentsDir != null) {
            String str5 = "-b " + documentsDir.getAbsolutePath() + ":/Documents";
        }
        File downloadDir = this.ulaFiles.getDownloadDir();
        if (downloadDir != null) {
            String str6 = "-b " + downloadDir.getAbsolutePath() + ":/Downloads";
        }
        File musicDir = this.ulaFiles.getMusicDir();
        if (musicDir != null) {
            String str7 = "-b " + musicDir.getAbsolutePath() + ":/Music";
        }
        File picturesDir = this.ulaFiles.getPicturesDir();
        if (picturesDir != null) {
            String str8 = "-b " + picturesDir.getAbsolutePath() + ":/Pictures";
        }
        File videosDir = this.ulaFiles.getVideosDir();
        if (videosDir != null) {
            String str9 = "-b " + videosDir.getAbsolutePath() + ":/Videos";
        }
        File dCIMDir = this.ulaFiles.getDCIMDir();
        if (dCIMDir != null) {
            String str10 = "-b " + dCIMDir.getAbsolutePath() + ":/DCIM";
        }
        String str11 = str3 + " " + str + " " + str4 + " " + ("-b " + this.ulaFiles.getIntentsDir() + ":/Intents");
        String property = System.getProperty(SystemProperties.OS_VERSION);
        Intrinsics.checkNotNull(property);
        return MapsKt.hashMapOf(TuplesKt.to("LD_LIBRARY_PATH", this.ulaFiles.getSupportDir().getAbsolutePath()), TuplesKt.to("LIB_PATH", this.ulaFiles.getSupportDir().getAbsolutePath()), TuplesKt.to("ROOT_PATH", this.ulaFiles.getFilesDir().getAbsolutePath()), TuplesKt.to("ROOTFS_PATH", filesystemDir.getAbsolutePath()), TuplesKt.to("PROOT_DEBUG_LEVEL", prootDebugLevel), TuplesKt.to("PROOT_ARGS", "-p --sysvipc -H -0 -l -L --droid_files"), TuplesKt.to("EXTRA_BINDINGS", str11), TuplesKt.to("OS_VERSION", property));
    }

    public final boolean prootIsPresent() {
        return this.ulaFiles.getProot().exists();
    }

    public final boolean executionScriptIsPresent() {
        return new File(this.ulaFiles.getSupportDir(), "execInProot.sh").exists();
    }
}
