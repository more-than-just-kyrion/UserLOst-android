package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.Filesystem;

/* JADX INFO: compiled from: AppsStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Ltech/ula/library/model/state/AppsFilesystemRequiresCredentials;", "Ltech/ula/library/model/state/AppsStartupState;", "appsFilesystem", "Ltech/ula/library/model/entities/Filesystem;", "(Ltech/ula/library/model/entities/Filesystem;)V", "getAppsFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class AppsFilesystemRequiresCredentials extends AppsStartupState {
    private final Filesystem appsFilesystem;

    public static /* synthetic */ AppsFilesystemRequiresCredentials copy$default(AppsFilesystemRequiresCredentials appsFilesystemRequiresCredentials, Filesystem filesystem, int i, Object obj) {
        if ((i & 1) != 0) {
            filesystem = appsFilesystemRequiresCredentials.appsFilesystem;
        }
        return appsFilesystemRequiresCredentials.copy(filesystem);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Filesystem getAppsFilesystem() {
        return this.appsFilesystem;
    }

    public final AppsFilesystemRequiresCredentials copy(Filesystem appsFilesystem) {
        Intrinsics.checkNotNullParameter(appsFilesystem, "appsFilesystem");
        return new AppsFilesystemRequiresCredentials(appsFilesystem);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AppsFilesystemRequiresCredentials) && Intrinsics.areEqual(this.appsFilesystem, ((AppsFilesystemRequiresCredentials) other).appsFilesystem);
    }

    public int hashCode() {
        return this.appsFilesystem.hashCode();
    }

    public String toString() {
        return "AppsFilesystemRequiresCredentials(appsFilesystem=" + this.appsFilesystem + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppsFilesystemRequiresCredentials(Filesystem appsFilesystem) {
        super(null);
        Intrinsics.checkNotNullParameter(appsFilesystem, "appsFilesystem");
        this.appsFilesystem = appsFilesystem;
    }

    public final Filesystem getAppsFilesystem() {
        return this.appsFilesystem;
    }
}
