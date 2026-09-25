package tech.ula.library.ui;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InstallWizardFragmentArgs.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0015"}, d2 = {"Ltech/ula/library/ui/InstallWizardFragmentArgs;", "Landroidx/navigation/NavArgs;", InstallWizardFragment.ARG_TARGET, "", "(Ljava/lang/String;)V", "getTarget", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "toString", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class InstallWizardFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String target;

    /* JADX WARN: Multi-variable type inference failed */
    public InstallWizardFragmentArgs() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ InstallWizardFragmentArgs copy$default(InstallWizardFragmentArgs installWizardFragmentArgs, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = installWizardFragmentArgs.target;
        }
        return installWizardFragmentArgs.copy(str);
    }

    @JvmStatic
    public static final InstallWizardFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final InstallWizardFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTarget() {
        return this.target;
    }

    public final InstallWizardFragmentArgs copy(String target) {
        Intrinsics.checkNotNullParameter(target, "target");
        return new InstallWizardFragmentArgs(target);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof InstallWizardFragmentArgs) && Intrinsics.areEqual(this.target, ((InstallWizardFragmentArgs) other).target);
    }

    public int hashCode() {
        return this.target.hashCode();
    }

    public String toString() {
        return "InstallWizardFragmentArgs(target=" + this.target + ")";
    }

    public InstallWizardFragmentArgs(String target) {
        Intrinsics.checkNotNullParameter(target, "target");
        this.target = target;
    }

    public /* synthetic */ InstallWizardFragmentArgs(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "qemu" : str);
    }

    public final String getTarget() {
        return this.target;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(InstallWizardFragment.ARG_TARGET, this.target);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        savedStateHandle.set(InstallWizardFragment.ARG_TARGET, this.target);
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: InstallWizardFragmentArgs.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Ltech/ula/library/ui/InstallWizardFragmentArgs$Companion;", "", "()V", "fromBundle", "Ltech/ula/library/ui/InstallWizardFragmentArgs;", "bundle", "Landroid/os/Bundle;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final InstallWizardFragmentArgs fromBundle(Bundle bundle) {
            String string;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(InstallWizardFragmentArgs.class.getClassLoader());
            if (bundle.containsKey(InstallWizardFragment.ARG_TARGET)) {
                string = bundle.getString(InstallWizardFragment.ARG_TARGET);
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"target\" is marked as non-null but was passed a null value.");
                }
            } else {
                string = "qemu";
            }
            return new InstallWizardFragmentArgs(string);
        }

        @JvmStatic
        public final InstallWizardFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            String str;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (savedStateHandle.contains(InstallWizardFragment.ARG_TARGET)) {
                str = (String) savedStateHandle.get(InstallWizardFragment.ARG_TARGET);
                if (str == null) {
                    throw new IllegalArgumentException("Argument \"target\" is marked as non-null but was passed a null value");
                }
            } else {
                str = "qemu";
            }
            return new InstallWizardFragmentArgs(str);
        }
    }
}
