package tech.ula.library.ui;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.Filesystem;

/* JADX INFO: compiled from: FilesystemEditFragmentArgs.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001a"}, d2 = {"Ltech/ula/library/ui/FilesystemEditFragmentArgs;", "Landroidx/navigation/NavArgs;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "editExisting", "", "(Ltech/ula/library/model/entities/Filesystem;Z)V", "getEditExisting", "()Z", "getFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "toString", "", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class FilesystemEditFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean editExisting;
    private final Filesystem filesystem;

    /* JADX WARN: Multi-variable type inference failed */
    public FilesystemEditFragmentArgs() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ FilesystemEditFragmentArgs copy$default(FilesystemEditFragmentArgs filesystemEditFragmentArgs, Filesystem filesystem, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            filesystem = filesystemEditFragmentArgs.filesystem;
        }
        if ((i & 2) != 0) {
            z = filesystemEditFragmentArgs.editExisting;
        }
        return filesystemEditFragmentArgs.copy(filesystem, z);
    }

    @JvmStatic
    public static final FilesystemEditFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final FilesystemEditFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getEditExisting() {
        return this.editExisting;
    }

    public final FilesystemEditFragmentArgs copy(Filesystem filesystem, boolean editExisting) {
        return new FilesystemEditFragmentArgs(filesystem, editExisting);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FilesystemEditFragmentArgs)) {
            return false;
        }
        FilesystemEditFragmentArgs filesystemEditFragmentArgs = (FilesystemEditFragmentArgs) other;
        return Intrinsics.areEqual(this.filesystem, filesystemEditFragmentArgs.filesystem) && this.editExisting == filesystemEditFragmentArgs.editExisting;
    }

    public int hashCode() {
        Filesystem filesystem = this.filesystem;
        return ((filesystem == null ? 0 : filesystem.hashCode()) * 31) + Boolean.hashCode(this.editExisting);
    }

    public String toString() {
        return "FilesystemEditFragmentArgs(filesystem=" + this.filesystem + ", editExisting=" + this.editExisting + ")";
    }

    public FilesystemEditFragmentArgs(Filesystem filesystem, boolean z) {
        this.filesystem = filesystem;
        this.editExisting = z;
    }

    public /* synthetic */ FilesystemEditFragmentArgs(Filesystem filesystem, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : filesystem, (i & 2) != 0 ? false : z);
    }

    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    public final boolean getEditExisting() {
        return this.editExisting;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(Filesystem.class)) {
            bundle.putParcelable("filesystem", this.filesystem);
        } else if (Serializable.class.isAssignableFrom(Filesystem.class)) {
            bundle.putSerializable("filesystem", (Serializable) this.filesystem);
        }
        bundle.putBoolean("editExisting", this.editExisting);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (Parcelable.class.isAssignableFrom(Filesystem.class)) {
            savedStateHandle.set("filesystem", this.filesystem);
        } else if (Serializable.class.isAssignableFrom(Filesystem.class)) {
            savedStateHandle.set("filesystem", (Serializable) this.filesystem);
        }
        savedStateHandle.set("editExisting", Boolean.valueOf(this.editExisting));
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: FilesystemEditFragmentArgs.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Ltech/ula/library/ui/FilesystemEditFragmentArgs$Companion;", "", "()V", "fromBundle", "Ltech/ula/library/ui/FilesystemEditFragmentArgs;", "bundle", "Landroid/os/Bundle;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final FilesystemEditFragmentArgs fromBundle(Bundle bundle) {
            Filesystem filesystem;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(FilesystemEditFragmentArgs.class.getClassLoader());
            if (!bundle.containsKey("filesystem")) {
                filesystem = null;
            } else if (Parcelable.class.isAssignableFrom(Filesystem.class) || Serializable.class.isAssignableFrom(Filesystem.class)) {
                filesystem = (Filesystem) bundle.get("filesystem");
            } else {
                throw new UnsupportedOperationException(Filesystem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            return new FilesystemEditFragmentArgs(filesystem, bundle.containsKey("editExisting") ? bundle.getBoolean("editExisting") : false);
        }

        @JvmStatic
        public final FilesystemEditFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Filesystem filesystem;
            Boolean bool;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (!savedStateHandle.contains("filesystem")) {
                filesystem = null;
            } else if (Parcelable.class.isAssignableFrom(Filesystem.class) || Serializable.class.isAssignableFrom(Filesystem.class)) {
                filesystem = (Filesystem) savedStateHandle.get("filesystem");
            } else {
                throw new UnsupportedOperationException(Filesystem.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            if (savedStateHandle.contains("editExisting")) {
                bool = (Boolean) savedStateHandle.get("editExisting");
                if (bool == null) {
                    throw new IllegalArgumentException("Argument \"editExisting\" of type boolean does not support null values");
                }
            } else {
                bool = false;
            }
            return new FilesystemEditFragmentArgs(filesystem, bool.booleanValue());
        }
    }
}
