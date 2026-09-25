package tech.ula.library.model.entities;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Session.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\"\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\t\u0010%\u001a\u00020\tHÆ\u0003J\t\u0010&\u001a\u00020\u0005HÆ\u0003J\t\u0010'\u001a\u00020\u0005HÆ\u0003JO\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010)\u001a\u00020\u00052\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020,HÖ\u0001J\t\u0010-\u001a\u00020.HÖ\u0001R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u000e\"\u0004\b\u001e\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000e\"\u0004\b \u0010\u0010¨\u0006/"}, d2 = {"Ltech/ula/library/model/entities/ServiceTypePreferences;", "", "serviceType", "Ltech/ula/library/model/entities/ServiceType;", "soundSupport", "", "micSupport", "shareStorage", "memoryMb", "", "cpuAllCores", "remember", "(Ltech/ula/library/model/entities/ServiceType;ZZZJZZ)V", "getCpuAllCores", "()Z", "setCpuAllCores", "(Z)V", "getMemoryMb", "()J", "setMemoryMb", "(J)V", "getMicSupport", "setMicSupport", "getRemember", "setRemember", "getServiceType", "()Ltech/ula/library/model/entities/ServiceType;", "setServiceType", "(Ltech/ula/library/model/entities/ServiceType;)V", "getShareStorage", "setShareStorage", "getSoundSupport", "setSoundSupport", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "", "toString", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ServiceTypePreferences {
    private boolean cpuAllCores;
    private long memoryMb;
    private boolean micSupport;
    private boolean remember;
    private ServiceType serviceType;
    private boolean shareStorage;
    private boolean soundSupport;

    public ServiceTypePreferences() {
        this(null, false, false, false, 0L, false, false, 127, null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ServiceType getServiceType() {
        return this.serviceType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getSoundSupport() {
        return this.soundSupport;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getMicSupport() {
        return this.micSupport;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getShareStorage() {
        return this.shareStorage;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getMemoryMb() {
        return this.memoryMb;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getCpuAllCores() {
        return this.cpuAllCores;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getRemember() {
        return this.remember;
    }

    public final ServiceTypePreferences copy(ServiceType serviceType, boolean soundSupport, boolean micSupport, boolean shareStorage, long memoryMb, boolean cpuAllCores, boolean remember) {
        Intrinsics.checkNotNullParameter(serviceType, "serviceType");
        return new ServiceTypePreferences(serviceType, soundSupport, micSupport, shareStorage, memoryMb, cpuAllCores, remember);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ServiceTypePreferences)) {
            return false;
        }
        ServiceTypePreferences serviceTypePreferences = (ServiceTypePreferences) other;
        return Intrinsics.areEqual(this.serviceType, serviceTypePreferences.serviceType) && this.soundSupport == serviceTypePreferences.soundSupport && this.micSupport == serviceTypePreferences.micSupport && this.shareStorage == serviceTypePreferences.shareStorage && this.memoryMb == serviceTypePreferences.memoryMb && this.cpuAllCores == serviceTypePreferences.cpuAllCores && this.remember == serviceTypePreferences.remember;
    }

    public int hashCode() {
        return (((((((((((this.serviceType.hashCode() * 31) + Boolean.hashCode(this.soundSupport)) * 31) + Boolean.hashCode(this.micSupport)) * 31) + Boolean.hashCode(this.shareStorage)) * 31) + Long.hashCode(this.memoryMb)) * 31) + Boolean.hashCode(this.cpuAllCores)) * 31) + Boolean.hashCode(this.remember);
    }

    public String toString() {
        return "ServiceTypePreferences(serviceType=" + this.serviceType + ", soundSupport=" + this.soundSupport + ", micSupport=" + this.micSupport + ", shareStorage=" + this.shareStorage + ", memoryMb=" + this.memoryMb + ", cpuAllCores=" + this.cpuAllCores + ", remember=" + this.remember + ")";
    }

    public ServiceTypePreferences(ServiceType serviceType, boolean z, boolean z2, boolean z3, long j, boolean z4, boolean z5) {
        Intrinsics.checkNotNullParameter(serviceType, "serviceType");
        this.serviceType = serviceType;
        this.soundSupport = z;
        this.micSupport = z2;
        this.shareStorage = z3;
        this.memoryMb = j;
        this.cpuAllCores = z4;
        this.remember = z5;
    }

    public /* synthetic */ ServiceTypePreferences(ServiceType serviceType, boolean z, boolean z2, boolean z3, long j, boolean z4, boolean z5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ServiceType.Unselected.INSTANCE : serviceType, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? true : z3, (i & 16) != 0 ? 0L : j, (i & 32) != 0 ? false : z4, (i & 64) == 0 ? z5 : false);
    }

    public final ServiceType getServiceType() {
        return this.serviceType;
    }

    public final void setServiceType(ServiceType serviceType) {
        Intrinsics.checkNotNullParameter(serviceType, "<set-?>");
        this.serviceType = serviceType;
    }

    public final boolean getSoundSupport() {
        return this.soundSupport;
    }

    public final void setSoundSupport(boolean z) {
        this.soundSupport = z;
    }

    public final boolean getMicSupport() {
        return this.micSupport;
    }

    public final void setMicSupport(boolean z) {
        this.micSupport = z;
    }

    public final boolean getShareStorage() {
        return this.shareStorage;
    }

    public final void setShareStorage(boolean z) {
        this.shareStorage = z;
    }

    public final long getMemoryMb() {
        return this.memoryMb;
    }

    public final void setMemoryMb(long j) {
        this.memoryMb = j;
    }

    public final boolean getCpuAllCores() {
        return this.cpuAllCores;
    }

    public final void setCpuAllCores(boolean z) {
        this.cpuAllCores = z;
    }

    public final boolean getRemember() {
        return this.remember;
    }

    public final void setRemember(boolean z) {
        this.remember = z;
    }
}
