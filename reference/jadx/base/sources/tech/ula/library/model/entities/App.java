package tech.ula.library.model.entities;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: App.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u001f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0007HÆ\u0003J\t\u0010&\u001a\u00020\u0007HÆ\u0003J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0007HÆ\u0003J\t\u0010)\u001a\u00020\fHÆ\u0003JY\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\t\u0010+\u001a\u00020,HÖ\u0001J\u0013\u0010-\u001a\u00020\u00072\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u00020,HÖ\u0001J\t\u00101\u001a\u00020\u0003HÖ\u0001J\u0019\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020,HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0014\"\u0004\b\u001b\u0010\u0016R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u00067"}, d2 = {"Ltech/ula/library/model/entities/App;", "Landroid/os/Parcelable;", "name", "", "category", "filesystemRequired", "supportsCli", "", "supportsGui", "supportsStandalone", "isPaidApp", "version", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZJ)V", "getCategory", "()Ljava/lang/String;", "setCategory", "(Ljava/lang/String;)V", "getFilesystemRequired", "setFilesystemRequired", "()Z", "setPaidApp", "(Z)V", "getName", "getSupportsCli", "setSupportsCli", "getSupportsGui", "setSupportsGui", "getSupportsStandalone", "setSupportsStandalone", "getVersion", "()J", "setVersion", "(J)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class App implements Parcelable {
    public static final Parcelable.Creator<App> CREATOR = new Creator();
    private String category;
    private String filesystemRequired;
    private boolean isPaidApp;
    private final String name;
    private boolean supportsCli;
    private boolean supportsGui;
    private String supportsStandalone;
    private long version;

    /* JADX INFO: compiled from: App.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<App> {
        @Override // android.os.Parcelable.Creator
        public final App createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new App(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0, parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public final App[] newArray(int i) {
            return new App[i];
        }
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFilesystemRequired() {
        return this.filesystemRequired;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getSupportsCli() {
        return this.supportsCli;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getSupportsGui() {
        return this.supportsGui;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getSupportsStandalone() {
        return this.supportsStandalone;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getIsPaidApp() {
        return this.isPaidApp;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final long getVersion() {
        return this.version;
    }

    public final App copy(String name, String category, String filesystemRequired, boolean supportsCli, boolean supportsGui, String supportsStandalone, boolean isPaidApp, long version) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(filesystemRequired, "filesystemRequired");
        Intrinsics.checkNotNullParameter(supportsStandalone, "supportsStandalone");
        return new App(name, category, filesystemRequired, supportsCli, supportsGui, supportsStandalone, isPaidApp, version);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof App)) {
            return false;
        }
        App app = (App) other;
        return Intrinsics.areEqual(this.name, app.name) && Intrinsics.areEqual(this.category, app.category) && Intrinsics.areEqual(this.filesystemRequired, app.filesystemRequired) && this.supportsCli == app.supportsCli && this.supportsGui == app.supportsGui && Intrinsics.areEqual(this.supportsStandalone, app.supportsStandalone) && this.isPaidApp == app.isPaidApp && this.version == app.version;
    }

    public int hashCode() {
        return (((((((((((((this.name.hashCode() * 31) + this.category.hashCode()) * 31) + this.filesystemRequired.hashCode()) * 31) + Boolean.hashCode(this.supportsCli)) * 31) + Boolean.hashCode(this.supportsGui)) * 31) + this.supportsStandalone.hashCode()) * 31) + Boolean.hashCode(this.isPaidApp)) * 31) + Long.hashCode(this.version);
    }

    public String toString() {
        return "App(name=" + this.name + ", category=" + this.category + ", filesystemRequired=" + this.filesystemRequired + ", supportsCli=" + this.supportsCli + ", supportsGui=" + this.supportsGui + ", supportsStandalone=" + this.supportsStandalone + ", isPaidApp=" + this.isPaidApp + ", version=" + this.version + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeString(this.name);
        parcel.writeString(this.category);
        parcel.writeString(this.filesystemRequired);
        parcel.writeInt(this.supportsCli ? 1 : 0);
        parcel.writeInt(this.supportsGui ? 1 : 0);
        parcel.writeString(this.supportsStandalone);
        parcel.writeInt(this.isPaidApp ? 1 : 0);
        parcel.writeLong(this.version);
    }

    public App(String name, String category, String filesystemRequired, boolean z, boolean z2, String supportsStandalone, boolean z3, long j) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(filesystemRequired, "filesystemRequired");
        Intrinsics.checkNotNullParameter(supportsStandalone, "supportsStandalone");
        this.name = name;
        this.category = category;
        this.filesystemRequired = filesystemRequired;
        this.supportsCli = z;
        this.supportsGui = z2;
        this.supportsStandalone = supportsStandalone;
        this.isPaidApp = z3;
        this.version = j;
    }

    public /* synthetic */ App(String str, String str2, String str3, boolean z, boolean z2, String str4, boolean z3, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2, (i & 32) == 0 ? str4 : "", (i & 64) == 0 ? z3 : false, (i & 128) != 0 ? 0L : j);
    }

    public final String getName() {
        return this.name;
    }

    public final String getCategory() {
        return this.category;
    }

    public final void setCategory(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.category = str;
    }

    public final String getFilesystemRequired() {
        return this.filesystemRequired;
    }

    public final void setFilesystemRequired(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filesystemRequired = str;
    }

    public final boolean getSupportsCli() {
        return this.supportsCli;
    }

    public final void setSupportsCli(boolean z) {
        this.supportsCli = z;
    }

    public final boolean getSupportsGui() {
        return this.supportsGui;
    }

    public final void setSupportsGui(boolean z) {
        this.supportsGui = z;
    }

    public final String getSupportsStandalone() {
        return this.supportsStandalone;
    }

    public final void setSupportsStandalone(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.supportsStandalone = str;
    }

    public final boolean isPaidApp() {
        return this.isPaidApp;
    }

    public final void setPaidApp(boolean z) {
        this.isPaidApp = z;
    }

    public final long getVersion() {
        return this.version;
    }

    public final void setVersion(long j) {
        this.version = j;
    }
}
