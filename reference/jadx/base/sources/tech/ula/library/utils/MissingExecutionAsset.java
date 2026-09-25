package tech.ula.library.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BusyboxExecutor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Ltech/ula/library/utils/MissingExecutionAsset;", "Ltech/ula/library/utils/ExecutionResult;", "asset", "", "(Ljava/lang/String;)V", "getAsset", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class MissingExecutionAsset extends ExecutionResult {
    private final String asset;

    public static /* synthetic */ MissingExecutionAsset copy$default(MissingExecutionAsset missingExecutionAsset, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = missingExecutionAsset.asset;
        }
        return missingExecutionAsset.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAsset() {
        return this.asset;
    }

    public final MissingExecutionAsset copy(String asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        return new MissingExecutionAsset(asset);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MissingExecutionAsset) && Intrinsics.areEqual(this.asset, ((MissingExecutionAsset) other).asset);
    }

    public int hashCode() {
        return this.asset.hashCode();
    }

    public String toString() {
        return "MissingExecutionAsset(asset=" + this.asset + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingExecutionAsset(String asset) {
        super(null);
        Intrinsics.checkNotNullParameter(asset, "asset");
        this.asset = asset;
    }

    public final String getAsset() {
        return this.asset;
    }
}
