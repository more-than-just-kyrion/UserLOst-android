package tech.ula.library.viewmodel;

import kotlin.Metadata;

/* JADX INFO: compiled from: MainActivityViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Ltech/ula/library/viewmodel/DownloadProgress;", "Ltech/ula/library/viewmodel/ProgressBarUpdateState;", "numComplete", "", "numTotal", "(II)V", "getNumComplete", "()I", "getNumTotal", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DownloadProgress extends ProgressBarUpdateState {
    private final int numComplete;
    private final int numTotal;

    public static /* synthetic */ DownloadProgress copy$default(DownloadProgress downloadProgress, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = downloadProgress.numComplete;
        }
        if ((i3 & 2) != 0) {
            i2 = downloadProgress.numTotal;
        }
        return downloadProgress.copy(i, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getNumComplete() {
        return this.numComplete;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getNumTotal() {
        return this.numTotal;
    }

    public final DownloadProgress copy(int numComplete, int numTotal) {
        return new DownloadProgress(numComplete, numTotal);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadProgress)) {
            return false;
        }
        DownloadProgress downloadProgress = (DownloadProgress) other;
        return this.numComplete == downloadProgress.numComplete && this.numTotal == downloadProgress.numTotal;
    }

    public int hashCode() {
        return (Integer.hashCode(this.numComplete) * 31) + Integer.hashCode(this.numTotal);
    }

    public String toString() {
        return "DownloadProgress(numComplete=" + this.numComplete + ", numTotal=" + this.numTotal + ")";
    }

    public DownloadProgress(int i, int i2) {
        super(null);
        this.numComplete = i;
        this.numTotal = i2;
    }

    public final int getNumComplete() {
        return this.numComplete;
    }

    public final int getNumTotal() {
        return this.numTotal;
    }
}
