package tech.ula.library.utils;

import kotlin.Metadata;

/* JADX INFO: compiled from: AssetDownloader.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Ltech/ula/library/utils/CompletedDownloadsUpdate;", "Ltech/ula/library/utils/AssetDownloadState;", "numCompleted", "", "numTotal", "(II)V", "getNumCompleted", "()I", "getNumTotal", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class CompletedDownloadsUpdate extends AssetDownloadState {
    private final int numCompleted;
    private final int numTotal;

    public static /* synthetic */ CompletedDownloadsUpdate copy$default(CompletedDownloadsUpdate completedDownloadsUpdate, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = completedDownloadsUpdate.numCompleted;
        }
        if ((i3 & 2) != 0) {
            i2 = completedDownloadsUpdate.numTotal;
        }
        return completedDownloadsUpdate.copy(i, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getNumCompleted() {
        return this.numCompleted;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getNumTotal() {
        return this.numTotal;
    }

    public final CompletedDownloadsUpdate copy(int numCompleted, int numTotal) {
        return new CompletedDownloadsUpdate(numCompleted, numTotal);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CompletedDownloadsUpdate)) {
            return false;
        }
        CompletedDownloadsUpdate completedDownloadsUpdate = (CompletedDownloadsUpdate) other;
        return this.numCompleted == completedDownloadsUpdate.numCompleted && this.numTotal == completedDownloadsUpdate.numTotal;
    }

    public int hashCode() {
        return (Integer.hashCode(this.numCompleted) * 31) + Integer.hashCode(this.numTotal);
    }

    public String toString() {
        return "CompletedDownloadsUpdate(numCompleted=" + this.numCompleted + ", numTotal=" + this.numTotal + ")";
    }

    public CompletedDownloadsUpdate(int i, int i2) {
        super(null);
        this.numCompleted = i;
        this.numTotal = i2;
    }

    public final int getNumCompleted() {
        return this.numCompleted;
    }

    public final int getNumTotal() {
        return this.numTotal;
    }
}
