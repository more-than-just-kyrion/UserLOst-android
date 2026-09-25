package tech.ula.library.model.state;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.repositories.DownloadMetadata;

/* JADX INFO: compiled from: SessionStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Ltech/ula/library/model/state/DownloadAssets;", "Ltech/ula/library/model/state/SessionStartupEvent;", "downloadRequirements", "", "Ltech/ula/library/model/repositories/DownloadMetadata;", "(Ljava/util/List;)V", "getDownloadRequirements", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DownloadAssets extends SessionStartupEvent {
    private final List<DownloadMetadata> downloadRequirements;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DownloadAssets copy$default(DownloadAssets downloadAssets, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = downloadAssets.downloadRequirements;
        }
        return downloadAssets.copy(list);
    }

    public final List<DownloadMetadata> component1() {
        return this.downloadRequirements;
    }

    public final DownloadAssets copy(List<DownloadMetadata> downloadRequirements) {
        Intrinsics.checkNotNullParameter(downloadRequirements, "downloadRequirements");
        return new DownloadAssets(downloadRequirements);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DownloadAssets) && Intrinsics.areEqual(this.downloadRequirements, ((DownloadAssets) other).downloadRequirements);
    }

    public int hashCode() {
        return this.downloadRequirements.hashCode();
    }

    public String toString() {
        return "DownloadAssets(downloadRequirements=" + this.downloadRequirements + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadAssets(List<DownloadMetadata> downloadRequirements) {
        super(null);
        Intrinsics.checkNotNullParameter(downloadRequirements, "downloadRequirements");
        this.downloadRequirements = downloadRequirements;
    }

    public final List<DownloadMetadata> getDownloadRequirements() {
        return this.downloadRequirements;
    }
}
