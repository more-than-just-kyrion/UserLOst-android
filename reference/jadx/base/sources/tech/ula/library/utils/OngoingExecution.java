package tech.ula.library.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BusyboxExecutor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Ltech/ula/library/utils/OngoingExecution;", "Ltech/ula/library/utils/ExecutionResult;", "process", "Ljava/lang/Process;", "(Ljava/lang/Process;)V", "getProcess", "()Ljava/lang/Process;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OngoingExecution extends ExecutionResult {
    private final Process process;

    public static /* synthetic */ OngoingExecution copy$default(OngoingExecution ongoingExecution, Process process, int i, Object obj) {
        if ((i & 1) != 0) {
            process = ongoingExecution.process;
        }
        return ongoingExecution.copy(process);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Process getProcess() {
        return this.process;
    }

    public final OngoingExecution copy(Process process) {
        Intrinsics.checkNotNullParameter(process, "process");
        return new OngoingExecution(process);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof OngoingExecution) && Intrinsics.areEqual(this.process, ((OngoingExecution) other).process);
    }

    public int hashCode() {
        return this.process.hashCode();
    }

    public String toString() {
        return "OngoingExecution(process=" + this.process + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OngoingExecution(Process process) {
        super(null);
        Intrinsics.checkNotNullParameter(process, "process");
        this.process = process;
    }

    public final Process getProcess() {
        return this.process;
    }
}
