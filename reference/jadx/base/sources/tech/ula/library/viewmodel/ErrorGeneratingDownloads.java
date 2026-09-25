package tech.ula.library.viewmodel;

import kotlin.Metadata;

/* JADX INFO: compiled from: MainActivityViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltech/ula/library/viewmodel/ErrorGeneratingDownloads;", "Ltech/ula/library/viewmodel/IllegalState;", "errorId", "", "(I)V", "getErrorId", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ErrorGeneratingDownloads extends IllegalState {
    private final int errorId;

    public static /* synthetic */ ErrorGeneratingDownloads copy$default(ErrorGeneratingDownloads errorGeneratingDownloads, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = errorGeneratingDownloads.errorId;
        }
        return errorGeneratingDownloads.copy(i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getErrorId() {
        return this.errorId;
    }

    public final ErrorGeneratingDownloads copy(int errorId) {
        return new ErrorGeneratingDownloads(errorId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ErrorGeneratingDownloads) && this.errorId == ((ErrorGeneratingDownloads) other).errorId;
    }

    public int hashCode() {
        return Integer.hashCode(this.errorId);
    }

    public String toString() {
        return "ErrorGeneratingDownloads(errorId=" + this.errorId + ")";
    }

    public ErrorGeneratingDownloads(int i) {
        super(null);
        this.errorId = i;
    }

    public final int getErrorId() {
        return this.errorId;
    }
}
