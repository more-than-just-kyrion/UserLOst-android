package tech.ula.library.model.state;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.ExecutionType;
import tech.ula.library.model.entities.Filesystem;

/* JADX INFO: compiled from: AppsStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0015\u001a\u00020\tHÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0011¨\u0006\u001d"}, d2 = {"Ltech/ula/library/model/state/SubmitAppsFilesystemFlavor;", "Ltech/ula/library/model/state/AppsStartupEvent;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "flavor", "", "isPaid", "", "executionType", "Ltech/ula/library/model/entities/ExecutionType;", "(Ltech/ula/library/model/entities/Filesystem;Ljava/lang/String;ZLtech/ula/library/model/entities/ExecutionType;)V", "getExecutionType", "()Ltech/ula/library/model/entities/ExecutionType;", "getFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", "getFlavor", "()Ljava/lang/String;", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SubmitAppsFilesystemFlavor extends AppsStartupEvent {
    private final ExecutionType executionType;
    private final Filesystem filesystem;
    private final String flavor;
    private final boolean isPaid;

    public static /* synthetic */ SubmitAppsFilesystemFlavor copy$default(SubmitAppsFilesystemFlavor submitAppsFilesystemFlavor, Filesystem filesystem, String str, boolean z, ExecutionType executionType, int i, Object obj) {
        if ((i & 1) != 0) {
            filesystem = submitAppsFilesystemFlavor.filesystem;
        }
        if ((i & 2) != 0) {
            str = submitAppsFilesystemFlavor.flavor;
        }
        if ((i & 4) != 0) {
            z = submitAppsFilesystemFlavor.isPaid;
        }
        if ((i & 8) != 0) {
            executionType = submitAppsFilesystemFlavor.executionType;
        }
        return submitAppsFilesystemFlavor.copy(filesystem, str, z, executionType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFlavor() {
        return this.flavor;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsPaid() {
        return this.isPaid;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ExecutionType getExecutionType() {
        return this.executionType;
    }

    public final SubmitAppsFilesystemFlavor copy(Filesystem filesystem, String flavor, boolean isPaid, ExecutionType executionType) {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        Intrinsics.checkNotNullParameter(flavor, "flavor");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        return new SubmitAppsFilesystemFlavor(filesystem, flavor, isPaid, executionType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubmitAppsFilesystemFlavor)) {
            return false;
        }
        SubmitAppsFilesystemFlavor submitAppsFilesystemFlavor = (SubmitAppsFilesystemFlavor) other;
        return Intrinsics.areEqual(this.filesystem, submitAppsFilesystemFlavor.filesystem) && Intrinsics.areEqual(this.flavor, submitAppsFilesystemFlavor.flavor) && this.isPaid == submitAppsFilesystemFlavor.isPaid && this.executionType == submitAppsFilesystemFlavor.executionType;
    }

    public int hashCode() {
        return (((((this.filesystem.hashCode() * 31) + this.flavor.hashCode()) * 31) + Boolean.hashCode(this.isPaid)) * 31) + this.executionType.hashCode();
    }

    public String toString() {
        return "SubmitAppsFilesystemFlavor(filesystem=" + this.filesystem + ", flavor=" + this.flavor + ", isPaid=" + this.isPaid + ", executionType=" + this.executionType + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubmitAppsFilesystemFlavor(Filesystem filesystem, String flavor, boolean z, ExecutionType executionType) {
        super(null);
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        Intrinsics.checkNotNullParameter(flavor, "flavor");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        this.filesystem = filesystem;
        this.flavor = flavor;
        this.isPaid = z;
        this.executionType = executionType;
    }

    public /* synthetic */ SubmitAppsFilesystemFlavor(Filesystem filesystem, String str, boolean z, ExecutionType executionType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(filesystem, str, z, (i & 8) != 0 ? ExecutionType.PROOT : executionType);
    }

    public final ExecutionType getExecutionType() {
        return this.executionType;
    }

    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    public final String getFlavor() {
        return this.flavor;
    }

    public final boolean isPaid() {
        return this.isPaid;
    }
}
