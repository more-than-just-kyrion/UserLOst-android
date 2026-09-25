package tech.ula.library.ui;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InstallWizardFragment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\bHÆ\u0003JA\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001e"}, d2 = {"Ltech/ula/library/ui/InstallTarget;", "", "packageName", "", "apkAssetName", "downloadUrl", "displayName", "permissionsToGrant", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getApkAssetName", "()Ljava/lang/String;", "getDisplayName", "getDownloadUrl", "getPackageName", "getPermissionsToGrant", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class InstallTarget {
    public static final String AVF_ARG = "avf";
    public static final String QEMU_ARG = "qemu";
    private final String apkAssetName;
    private final String displayName;
    private final String downloadUrl;
    private final String packageName;
    private final List<String> permissionsToGrant;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final InstallTarget AVF = new InstallTarget("tech.ula.vm", "userland-vm.apk", "", "UserLOst VM", CollectionsKt.listOf((Object[]) new String[]{"android.permission.MANAGE_VIRTUAL_MACHINE", "android.permission.USE_CUSTOM_VIRTUAL_MACHINE", "android.permission.POST_NOTIFICATIONS"}));
    private static final InstallTarget QEMU = new InstallTarget("tech.ula.qemu", "userland-qemu.apk", "", "UserLOst QEMU", CollectionsKt.listOf("android.permission.POST_NOTIFICATIONS"));

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InstallTarget copy$default(InstallTarget installTarget, String str, String str2, String str3, String str4, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = installTarget.packageName;
        }
        if ((i & 2) != 0) {
            str2 = installTarget.apkAssetName;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = installTarget.downloadUrl;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            str4 = installTarget.displayName;
        }
        String str7 = str4;
        if ((i & 16) != 0) {
            list = installTarget.permissionsToGrant;
        }
        return installTarget.copy(str, str5, str6, str7, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApkAssetName() {
        return this.apkAssetName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDisplayName() {
        return this.displayName;
    }

    public final List<String> component5() {
        return this.permissionsToGrant;
    }

    public final InstallTarget copy(String packageName, String apkAssetName, String downloadUrl, String displayName, List<String> permissionsToGrant) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(apkAssetName, "apkAssetName");
        Intrinsics.checkNotNullParameter(downloadUrl, "downloadUrl");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Intrinsics.checkNotNullParameter(permissionsToGrant, "permissionsToGrant");
        return new InstallTarget(packageName, apkAssetName, downloadUrl, displayName, permissionsToGrant);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InstallTarget)) {
            return false;
        }
        InstallTarget installTarget = (InstallTarget) other;
        return Intrinsics.areEqual(this.packageName, installTarget.packageName) && Intrinsics.areEqual(this.apkAssetName, installTarget.apkAssetName) && Intrinsics.areEqual(this.downloadUrl, installTarget.downloadUrl) && Intrinsics.areEqual(this.displayName, installTarget.displayName) && Intrinsics.areEqual(this.permissionsToGrant, installTarget.permissionsToGrant);
    }

    public int hashCode() {
        return (((((((this.packageName.hashCode() * 31) + this.apkAssetName.hashCode()) * 31) + this.downloadUrl.hashCode()) * 31) + this.displayName.hashCode()) * 31) + this.permissionsToGrant.hashCode();
    }

    public String toString() {
        return "InstallTarget(packageName=" + this.packageName + ", apkAssetName=" + this.apkAssetName + ", downloadUrl=" + this.downloadUrl + ", displayName=" + this.displayName + ", permissionsToGrant=" + this.permissionsToGrant + ")";
    }

    public InstallTarget(String packageName, String apkAssetName, String downloadUrl, String displayName, List<String> permissionsToGrant) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(apkAssetName, "apkAssetName");
        Intrinsics.checkNotNullParameter(downloadUrl, "downloadUrl");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Intrinsics.checkNotNullParameter(permissionsToGrant, "permissionsToGrant");
        this.packageName = packageName;
        this.apkAssetName = apkAssetName;
        this.downloadUrl = downloadUrl;
        this.displayName = displayName;
        this.permissionsToGrant = permissionsToGrant;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getApkAssetName() {
        return this.apkAssetName;
    }

    public final String getDownloadUrl() {
        return this.downloadUrl;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final List<String> getPermissionsToGrant() {
        return this.permissionsToGrant;
    }

    /* JADX INFO: compiled from: InstallWizardFragment.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u000e\u0010\u000b\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Ltech/ula/library/ui/InstallTarget$Companion;", "", "()V", "AVF", "Ltech/ula/library/ui/InstallTarget;", "getAVF", "()Ltech/ula/library/ui/InstallTarget;", "AVF_ARG", "", "QEMU", "getQEMU", "QEMU_ARG", "fromArg", "arg", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final InstallTarget getAVF() {
            return InstallTarget.AVF;
        }

        public final InstallTarget getQEMU() {
            return InstallTarget.QEMU;
        }

        public final InstallTarget fromArg(String arg) {
            return Intrinsics.areEqual(arg, "qemu") ? getQEMU() : getAVF();
        }
    }
}
