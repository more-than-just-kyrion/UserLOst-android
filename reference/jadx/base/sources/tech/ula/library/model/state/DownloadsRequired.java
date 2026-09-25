package tech.ula.library.model.state;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.repositories.DownloadMetadata;

/* JADX INFO: compiled from: SessionStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0006HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Ltech/ula/library/model/state/DownloadsRequired;", "Ltech/ula/library/model/state/DownloadRequirementsGenerationState;", "downloadsRequired", "", "Ltech/ula/library/model/repositories/DownloadMetadata;", "largeDownloadRequired", "", "(Ljava/util/List;Z)V", "getDownloadsRequired", "()Ljava/util/List;", "getLargeDownloadRequired", "()Z", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DownloadsRequired extends DownloadRequirementsGenerationState {
    private final List<DownloadMetadata> downloadsRequired;
    private final boolean largeDownloadRequired;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DownloadsRequired copy$default(DownloadsRequired downloadsRequired, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            list = downloadsRequired.downloadsRequired;
        }
        if ((i & 2) != 0) {
            z = downloadsRequired.largeDownloadRequired;
        }
        return downloadsRequired.copy(list, z);
    }

    public final List<DownloadMetadata> component1() {
        return this.downloadsRequired;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getLargeDownloadRequired() {
        return this.largeDownloadRequired;
    }

    public final DownloadsRequired copy(List<DownloadMetadata> downloadsRequired, boolean largeDownloadRequired) {
        Intrinsics.checkNotNullParameter(downloadsRequired, "downloadsRequired");
        return new DownloadsRequired(downloadsRequired, largeDownloadRequired);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadsRequired)) {
            return false;
        }
        DownloadsRequired downloadsRequired = (DownloadsRequired) other;
        return Intrinsics.areEqual(this.downloadsRequired, downloadsRequired.downloadsRequired) && this.largeDownloadRequired == downloadsRequired.largeDownloadRequired;
    }

    public int hashCode() {
        return (this.downloadsRequired.hashCode() * 31) + Boolean.hashCode(this.largeDownloadRequired);
    }

    public String toString() {
        return "DownloadsRequired(downloadsRequired=" + this.downloadsRequired + ", largeDownloadRequired=" + this.largeDownloadRequired + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadsRequired(List<DownloadMetadata> downloadsRequired, boolean z) {
        super(null);
        Intrinsics.checkNotNullParameter(downloadsRequired, "downloadsRequired");
        this.downloadsRequired = downloadsRequired;
        this.largeDownloadRequired = z;
    }

    public final List<DownloadMetadata> getDownloadsRequired() {
        return this.downloadsRequired;
    }

    public final boolean getLargeDownloadRequired() {
        return this.largeDownloadRequired;
    }
}
