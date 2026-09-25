package tech.ula.library.model.entities;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Flavor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0015HÖ\u0001J\b\u0010\u001a\u001a\u00020\u0003H\u0016J\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\f\"\u0004\b\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\t¨\u0006 "}, d2 = {"Ltech/ula/library/model/entities/Flavor;", "Landroid/os/Parcelable;", "releaseName", "", "displayName", "isPaid", "", "(Ljava/lang/String;Ljava/lang/String;Z)V", "getDisplayName", "()Ljava/lang/String;", "setDisplayName", "(Ljava/lang/String;)V", "()Z", "setPaid", "(Z)V", "getReleaseName", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Flavor implements Parcelable {
    public static final Parcelable.Creator<Flavor> CREATOR = new Creator();
    private String displayName;
    private boolean isPaid;
    private final String releaseName;

    /* JADX INFO: compiled from: Flavor.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Flavor> {
        @Override // android.os.Parcelable.Creator
        public final Flavor createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new Flavor(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final Flavor[] newArray(int i) {
            return new Flavor[i];
        }
    }

    public Flavor() {
        this(null, null, false, 7, null);
    }

    public static /* synthetic */ Flavor copy$default(Flavor flavor, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = flavor.releaseName;
        }
        if ((i & 2) != 0) {
            str2 = flavor.displayName;
        }
        if ((i & 4) != 0) {
            z = flavor.isPaid;
        }
        return flavor.copy(str, str2, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getReleaseName() {
        return this.releaseName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDisplayName() {
        return this.displayName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsPaid() {
        return this.isPaid;
    }

    public final Flavor copy(String releaseName, String displayName, boolean isPaid) {
        Intrinsics.checkNotNullParameter(releaseName, "releaseName");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        return new Flavor(releaseName, displayName, isPaid);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Flavor)) {
            return false;
        }
        Flavor flavor = (Flavor) other;
        return Intrinsics.areEqual(this.releaseName, flavor.releaseName) && Intrinsics.areEqual(this.displayName, flavor.displayName) && this.isPaid == flavor.isPaid;
    }

    public int hashCode() {
        return (((this.releaseName.hashCode() * 31) + this.displayName.hashCode()) * 31) + Boolean.hashCode(this.isPaid);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeString(this.releaseName);
        parcel.writeString(this.displayName);
        parcel.writeInt(this.isPaid ? 1 : 0);
    }

    public Flavor(String releaseName, String displayName, boolean z) {
        Intrinsics.checkNotNullParameter(releaseName, "releaseName");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        this.releaseName = releaseName;
        this.displayName = displayName;
        this.isPaid = z;
    }

    public /* synthetic */ Flavor(String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? false : z);
    }

    public final String getReleaseName() {
        return this.releaseName;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final void setDisplayName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.displayName = str;
    }

    public final boolean isPaid() {
        return this.isPaid;
    }

    public final void setPaid(boolean z) {
        this.isPaid = z;
    }

    public String toString() {
        return "Flavor(releaseName=" + this.releaseName + ", displayName=" + this.displayName + ", isPaid=" + this.isPaid + ")";
    }
}
