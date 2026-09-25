package tech.ula.library.ui;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;
import tech.ula.library.model.entities.Filesystem;

/* JADX INFO: compiled from: FilesystemListFragmentDirections.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Ltech/ula/library/ui/FilesystemListFragmentDirections;", "", "()V", "ActionFilesystemListToFilesystemEdit", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FilesystemListFragmentDirections {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: FilesystemListFragmentDirections.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\bHÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, d2 = {"Ltech/ula/library/ui/FilesystemListFragmentDirections$ActionFilesystemListToFilesystemEdit;", "Landroidx/navigation/NavDirections;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "editExisting", "", "(Ltech/ula/library/model/entities/Filesystem;Z)V", "actionId", "", "getActionId", "()I", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "getEditExisting", "()Z", "getFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class ActionFilesystemListToFilesystemEdit implements NavDirections {
        private final int actionId;
        private final boolean editExisting;
        private final Filesystem filesystem;

        /* JADX WARN: Multi-variable type inference failed */
        public ActionFilesystemListToFilesystemEdit() {
            this(null, false, 3, 0 == true ? 1 : 0);
        }

        public static /* synthetic */ ActionFilesystemListToFilesystemEdit copy$default(ActionFilesystemListToFilesystemEdit actionFilesystemListToFilesystemEdit, Filesystem filesystem, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                filesystem = actionFilesystemListToFilesystemEdit.filesystem;
            }
            if ((i & 2) != 0) {
                z = actionFilesystemListToFilesystemEdit.editExisting;
            }
            return actionFilesystemListToFilesystemEdit.copy(filesystem, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Filesystem getFilesystem() {
            return this.filesystem;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getEditExisting() {
            return this.editExisting;
        }

        public final ActionFilesystemListToFilesystemEdit copy(Filesystem filesystem, boolean editExisting) {
            return new ActionFilesystemListToFilesystemEdit(filesystem, editExisting);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ActionFilesystemListToFilesystemEdit)) {
                return false;
            }
            ActionFilesystemListToFilesystemEdit actionFilesystemListToFilesystemEdit = (ActionFilesystemListToFilesystemEdit) other;
            return Intrinsics.areEqual(this.filesystem, actionFilesystemListToFilesystemEdit.filesystem) && this.editExisting == actionFilesystemListToFilesystemEdit.editExisting;
        }

        public int hashCode() {
            Filesystem filesystem = this.filesystem;
            return ((filesystem == null ? 0 : filesystem.hashCode()) * 31) + Boolean.hashCode(this.editExisting);
        }

        public String toString() {
            return "ActionFilesystemListToFilesystemEdit(filesystem=" + this.filesystem + ", editExisting=" + this.editExisting + ")";
        }

        public ActionFilesystemListToFilesystemEdit(Filesystem filesystem, boolean z) {
            this.filesystem = filesystem;
            this.editExisting = z;
            this.actionId = R.id.action_filesystem_list_to_filesystem_edit;
        }

        public /* synthetic */ ActionFilesystemListToFilesystemEdit(Filesystem filesystem, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : filesystem, (i & 2) != 0 ? false : z);
        }

        public final Filesystem getFilesystem() {
            return this.filesystem;
        }

        public final boolean getEditExisting() {
            return this.editExisting;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return this.actionId;
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(Filesystem.class)) {
                bundle.putParcelable("filesystem", this.filesystem);
            } else if (Serializable.class.isAssignableFrom(Filesystem.class)) {
                bundle.putSerializable("filesystem", (Serializable) this.filesystem);
            }
            bundle.putBoolean("editExisting", this.editExisting);
            return bundle;
        }
    }

    private FilesystemListFragmentDirections() {
    }

    /* JADX INFO: compiled from: FilesystemListFragmentDirections.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Ltech/ula/library/ui/FilesystemListFragmentDirections$Companion;", "", "()V", "actionFilesystemListToFilesystemEdit", "Landroidx/navigation/NavDirections;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "editExisting", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ NavDirections actionFilesystemListToFilesystemEdit$default(Companion companion, Filesystem filesystem, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                filesystem = null;
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.actionFilesystemListToFilesystemEdit(filesystem, z);
        }

        public final NavDirections actionFilesystemListToFilesystemEdit(Filesystem filesystem, boolean editExisting) {
            return new ActionFilesystemListToFilesystemEdit(filesystem, editExisting);
        }
    }
}
