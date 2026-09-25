package tech.ula.library.ui;

import android.os.Bundle;
import androidx.navigation.NavDirections;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;

/* JADX INFO: compiled from: FilesystemEditFragmentDirections.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00052\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0006"}, d2 = {"Ltech/ula/library/ui/FilesystemEditFragmentDirections;", "", "()V", "ActionFilesystemEditToAvfInstallWizard", "ActionFilesystemEditToQemuInstallWizard", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilesystemEditFragmentDirections {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: FilesystemEditFragmentDirections.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Ltech/ula/library/ui/FilesystemEditFragmentDirections$ActionFilesystemEditToAvfInstallWizard;", "Landroidx/navigation/NavDirections;", InstallWizardFragment.ARG_TARGET, "", "(Ljava/lang/String;)V", "actionId", "", "getActionId", "()I", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "getTarget", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class ActionFilesystemEditToAvfInstallWizard implements NavDirections {
        private final int actionId;
        private final String target;

        /* JADX WARN: Multi-variable type inference failed */
        public ActionFilesystemEditToAvfInstallWizard() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public static /* synthetic */ ActionFilesystemEditToAvfInstallWizard copy$default(ActionFilesystemEditToAvfInstallWizard actionFilesystemEditToAvfInstallWizard, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = actionFilesystemEditToAvfInstallWizard.target;
            }
            return actionFilesystemEditToAvfInstallWizard.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTarget() {
            return this.target;
        }

        public final ActionFilesystemEditToAvfInstallWizard copy(String target) {
            Intrinsics.checkNotNullParameter(target, "target");
            return new ActionFilesystemEditToAvfInstallWizard(target);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ActionFilesystemEditToAvfInstallWizard) && Intrinsics.areEqual(this.target, ((ActionFilesystemEditToAvfInstallWizard) other).target);
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "ActionFilesystemEditToAvfInstallWizard(target=" + this.target + ")";
        }

        public ActionFilesystemEditToAvfInstallWizard(String target) {
            Intrinsics.checkNotNullParameter(target, "target");
            this.target = target;
            this.actionId = R.id.action_filesystem_edit_to_avf_install_wizard;
        }

        public /* synthetic */ ActionFilesystemEditToAvfInstallWizard(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? InstallTarget.AVF_ARG : str);
        }

        public final String getTarget() {
            return this.target;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return this.actionId;
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            bundle.putString(InstallWizardFragment.ARG_TARGET, this.target);
            return bundle;
        }
    }

    private FilesystemEditFragmentDirections() {
    }

    /* JADX INFO: compiled from: FilesystemEditFragmentDirections.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Ltech/ula/library/ui/FilesystemEditFragmentDirections$ActionFilesystemEditToQemuInstallWizard;", "Landroidx/navigation/NavDirections;", InstallWizardFragment.ARG_TARGET, "", "(Ljava/lang/String;)V", "actionId", "", "getActionId", "()I", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "getTarget", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class ActionFilesystemEditToQemuInstallWizard implements NavDirections {
        private final int actionId;
        private final String target;

        /* JADX WARN: Multi-variable type inference failed */
        public ActionFilesystemEditToQemuInstallWizard() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public static /* synthetic */ ActionFilesystemEditToQemuInstallWizard copy$default(ActionFilesystemEditToQemuInstallWizard actionFilesystemEditToQemuInstallWizard, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = actionFilesystemEditToQemuInstallWizard.target;
            }
            return actionFilesystemEditToQemuInstallWizard.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getTarget() {
            return this.target;
        }

        public final ActionFilesystemEditToQemuInstallWizard copy(String target) {
            Intrinsics.checkNotNullParameter(target, "target");
            return new ActionFilesystemEditToQemuInstallWizard(target);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ActionFilesystemEditToQemuInstallWizard) && Intrinsics.areEqual(this.target, ((ActionFilesystemEditToQemuInstallWizard) other).target);
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            return "ActionFilesystemEditToQemuInstallWizard(target=" + this.target + ")";
        }

        public ActionFilesystemEditToQemuInstallWizard(String target) {
            Intrinsics.checkNotNullParameter(target, "target");
            this.target = target;
            this.actionId = R.id.action_filesystem_edit_to_qemu_install_wizard;
        }

        public /* synthetic */ ActionFilesystemEditToQemuInstallWizard(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "qemu" : str);
        }

        public final String getTarget() {
            return this.target;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return this.actionId;
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            bundle.putString(InstallWizardFragment.ARG_TARGET, this.target);
            return bundle;
        }
    }

    /* JADX INFO: compiled from: FilesystemEditFragmentDirections.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006¨\u0006\b"}, d2 = {"Ltech/ula/library/ui/FilesystemEditFragmentDirections$Companion;", "", "()V", "actionFilesystemEditToAvfInstallWizard", "Landroidx/navigation/NavDirections;", InstallWizardFragment.ARG_TARGET, "", "actionFilesystemEditToQemuInstallWizard", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ NavDirections actionFilesystemEditToAvfInstallWizard$default(Companion companion, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = InstallTarget.AVF_ARG;
            }
            return companion.actionFilesystemEditToAvfInstallWizard(str);
        }

        public final NavDirections actionFilesystemEditToAvfInstallWizard(String target) {
            Intrinsics.checkNotNullParameter(target, "target");
            return new ActionFilesystemEditToAvfInstallWizard(target);
        }

        public static /* synthetic */ NavDirections actionFilesystemEditToQemuInstallWizard$default(Companion companion, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "qemu";
            }
            return companion.actionFilesystemEditToQemuInstallWizard(str);
        }

        public final NavDirections actionFilesystemEditToQemuInstallWizard(String target) {
            Intrinsics.checkNotNullParameter(target, "target");
            return new ActionFilesystemEditToQemuInstallWizard(target);
        }
    }
}
