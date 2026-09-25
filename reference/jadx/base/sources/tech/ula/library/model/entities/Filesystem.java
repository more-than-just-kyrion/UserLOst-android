package tech.ula.library.model.entities;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Filesystem.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r\u0012\b\b\u0002\u0010\u0010\u001a\u00020\r\u0012\b\b\u0002\u0010\u0011\u001a\u00020\r\u0012\b\b\u0002\u0010\u0012\u001a\u00020\r\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0005HÆ\u0003J\t\u00108\u001a\u00020\rHÆ\u0003J\t\u00109\u001a\u00020\rHÆ\u0003J\t\u0010:\u001a\u00020\rHÆ\u0003J\t\u0010;\u001a\u00020\rHÆ\u0003J\t\u0010<\u001a\u00020\u0014HÆ\u0003J\t\u0010=\u001a\u00020\u0005HÆ\u0003J\t\u0010>\u001a\u00020\u0005HÆ\u0003J\t\u0010?\u001a\u00020\u0005HÆ\u0003J\t\u0010@\u001a\u00020\u0005HÆ\u0003J\t\u0010A\u001a\u00020\u0005HÆ\u0003J\t\u0010B\u001a\u00020\u0005HÆ\u0003J\t\u0010C\u001a\u00020\u0005HÆ\u0003J\t\u0010D\u001a\u00020\rHÆ\u0003J\u009f\u0001\u0010E\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\r2\b\b\u0002\u0010\u0010\u001a\u00020\r2\b\b\u0002\u0010\u0011\u001a\u00020\r2\b\b\u0002\u0010\u0012\u001a\u00020\r2\b\b\u0002\u0010\u0013\u001a\u00020\u0014HÆ\u0001J\t\u0010F\u001a\u00020GHÖ\u0001J\u0013\u0010H\u001a\u00020\r2\b\u0010I\u001a\u0004\u0018\u00010JHÖ\u0003J\t\u0010K\u001a\u00020GHÖ\u0001J\b\u0010L\u001a\u00020\u0005H\u0016J\u0019\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020GHÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0017\"\u0004\b!\u0010\u0019R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010\b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0017\"\u0004\b'\u0010\u0019R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010)\"\u0004\b.\u0010+R\u001a\u0010\u000f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010)\"\u0004\b/\u0010+R\u001a\u0010\u0011\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010)\"\u0004\b0\u0010+R\u001a\u0010\u0010\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010)\"\u0004\b1\u0010+R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u0017\"\u0004\b3\u0010\u0019R\u001a\u0010\u000e\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0017\"\u0004\b5\u0010\u0019¨\u0006R"}, d2 = {"Ltech/ula/library/model/entities/Filesystem;", "Landroid/os/Parcelable;", "id", "", "name", "", "distributionType", "archType", "flavor", "defaultUsername", "defaultPassword", "defaultVncPassword", "isAppsFilesystem", "", "versionCodeUsed", "isCreatedFromBackup", "isProtected", "isPaid", "hasPaidUp", "executionType", "Ltech/ula/library/model/entities/ExecutionType;", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZLtech/ula/library/model/entities/ExecutionType;)V", "getArchType", "()Ljava/lang/String;", "setArchType", "(Ljava/lang/String;)V", "getDefaultPassword", "setDefaultPassword", "getDefaultUsername", "setDefaultUsername", "getDefaultVncPassword", "setDefaultVncPassword", "getDistributionType", "setDistributionType", "getExecutionType", "()Ltech/ula/library/model/entities/ExecutionType;", "setExecutionType", "(Ltech/ula/library/model/entities/ExecutionType;)V", "getFlavor", "setFlavor", "getHasPaidUp", "()Z", "setHasPaidUp", "(Z)V", "getId", "()J", "setAppsFilesystem", "setCreatedFromBackup", "setPaid", "setProtected", "getName", "setName", "getVersionCodeUsed", "setVersionCodeUsed", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Filesystem implements Parcelable {
    public static final Parcelable.Creator<Filesystem> CREATOR = new Creator();
    private String archType;
    private String defaultPassword;
    private String defaultUsername;
    private String defaultVncPassword;
    private String distributionType;
    private ExecutionType executionType;
    private String flavor;
    private boolean hasPaidUp;
    private final long id;
    private boolean isAppsFilesystem;
    private boolean isCreatedFromBackup;
    private boolean isPaid;
    private boolean isProtected;
    private String name;
    private String versionCodeUsed;

    /* JADX INFO: compiled from: Filesystem.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Filesystem> {
        @Override // android.os.Parcelable.Creator
        public final Filesystem createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new Filesystem(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, ExecutionType.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final Filesystem[] newArray(int i) {
            return new Filesystem[i];
        }
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getVersionCodeUsed() {
        return this.versionCodeUsed;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final boolean getIsCreatedFromBackup() {
        return this.isCreatedFromBackup;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getIsProtected() {
        return this.isProtected;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final boolean getIsPaid() {
        return this.isPaid;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final boolean getHasPaidUp() {
        return this.hasPaidUp;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final ExecutionType getExecutionType() {
        return this.executionType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDistributionType() {
        return this.distributionType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getArchType() {
        return this.archType;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getFlavor() {
        return this.flavor;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDefaultUsername() {
        return this.defaultUsername;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getDefaultPassword() {
        return this.defaultPassword;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDefaultVncPassword() {
        return this.defaultVncPassword;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getIsAppsFilesystem() {
        return this.isAppsFilesystem;
    }

    public final Filesystem copy(long id, String name, String distributionType, String archType, String flavor, String defaultUsername, String defaultPassword, String defaultVncPassword, boolean isAppsFilesystem, String versionCodeUsed, boolean isCreatedFromBackup, boolean isProtected, boolean isPaid, boolean hasPaidUp, ExecutionType executionType) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(distributionType, "distributionType");
        Intrinsics.checkNotNullParameter(archType, "archType");
        Intrinsics.checkNotNullParameter(flavor, "flavor");
        Intrinsics.checkNotNullParameter(defaultUsername, "defaultUsername");
        Intrinsics.checkNotNullParameter(defaultPassword, "defaultPassword");
        Intrinsics.checkNotNullParameter(defaultVncPassword, "defaultVncPassword");
        Intrinsics.checkNotNullParameter(versionCodeUsed, "versionCodeUsed");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        return new Filesystem(id, name, distributionType, archType, flavor, defaultUsername, defaultPassword, defaultVncPassword, isAppsFilesystem, versionCodeUsed, isCreatedFromBackup, isProtected, isPaid, hasPaidUp, executionType);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Filesystem)) {
            return false;
        }
        Filesystem filesystem = (Filesystem) other;
        return this.id == filesystem.id && Intrinsics.areEqual(this.name, filesystem.name) && Intrinsics.areEqual(this.distributionType, filesystem.distributionType) && Intrinsics.areEqual(this.archType, filesystem.archType) && Intrinsics.areEqual(this.flavor, filesystem.flavor) && Intrinsics.areEqual(this.defaultUsername, filesystem.defaultUsername) && Intrinsics.areEqual(this.defaultPassword, filesystem.defaultPassword) && Intrinsics.areEqual(this.defaultVncPassword, filesystem.defaultVncPassword) && this.isAppsFilesystem == filesystem.isAppsFilesystem && Intrinsics.areEqual(this.versionCodeUsed, filesystem.versionCodeUsed) && this.isCreatedFromBackup == filesystem.isCreatedFromBackup && this.isProtected == filesystem.isProtected && this.isPaid == filesystem.isPaid && this.hasPaidUp == filesystem.hasPaidUp && this.executionType == filesystem.executionType;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((Long.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + this.distributionType.hashCode()) * 31) + this.archType.hashCode()) * 31) + this.flavor.hashCode()) * 31) + this.defaultUsername.hashCode()) * 31) + this.defaultPassword.hashCode()) * 31) + this.defaultVncPassword.hashCode()) * 31) + Boolean.hashCode(this.isAppsFilesystem)) * 31) + this.versionCodeUsed.hashCode()) * 31) + Boolean.hashCode(this.isCreatedFromBackup)) * 31) + Boolean.hashCode(this.isProtected)) * 31) + Boolean.hashCode(this.isPaid)) * 31) + Boolean.hashCode(this.hasPaidUp)) * 31) + this.executionType.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeLong(this.id);
        parcel.writeString(this.name);
        parcel.writeString(this.distributionType);
        parcel.writeString(this.archType);
        parcel.writeString(this.flavor);
        parcel.writeString(this.defaultUsername);
        parcel.writeString(this.defaultPassword);
        parcel.writeString(this.defaultVncPassword);
        parcel.writeInt(this.isAppsFilesystem ? 1 : 0);
        parcel.writeString(this.versionCodeUsed);
        parcel.writeInt(this.isCreatedFromBackup ? 1 : 0);
        parcel.writeInt(this.isProtected ? 1 : 0);
        parcel.writeInt(this.isPaid ? 1 : 0);
        parcel.writeInt(this.hasPaidUp ? 1 : 0);
        parcel.writeString(this.executionType.name());
    }

    public Filesystem(long j, String name, String distributionType, String archType, String flavor, String defaultUsername, String defaultPassword, String defaultVncPassword, boolean z, String versionCodeUsed, boolean z2, boolean z3, boolean z4, boolean z5, ExecutionType executionType) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(distributionType, "distributionType");
        Intrinsics.checkNotNullParameter(archType, "archType");
        Intrinsics.checkNotNullParameter(flavor, "flavor");
        Intrinsics.checkNotNullParameter(defaultUsername, "defaultUsername");
        Intrinsics.checkNotNullParameter(defaultPassword, "defaultPassword");
        Intrinsics.checkNotNullParameter(defaultVncPassword, "defaultVncPassword");
        Intrinsics.checkNotNullParameter(versionCodeUsed, "versionCodeUsed");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        this.id = j;
        this.name = name;
        this.distributionType = distributionType;
        this.archType = archType;
        this.flavor = flavor;
        this.defaultUsername = defaultUsername;
        this.defaultPassword = defaultPassword;
        this.defaultVncPassword = defaultVncPassword;
        this.isAppsFilesystem = z;
        this.versionCodeUsed = versionCodeUsed;
        this.isCreatedFromBackup = z2;
        this.isProtected = z3;
        this.isPaid = z4;
        this.hasPaidUp = z5;
        this.executionType = executionType;
    }

    public /* synthetic */ Filesystem(long j, String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, String str8, boolean z2, boolean z3, boolean z4, boolean z5, ExecutionType executionType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? "" : str3, (i & 16) != 0 ? "" : str4, (i & 32) != 0 ? "" : str5, (i & 64) != 0 ? "" : str6, (i & 128) != 0 ? "" : str7, (i & 256) != 0 ? false : z, (i & 512) != 0 ? "v0.0.0" : str8, (i & 1024) != 0 ? false : z2, (i & 2048) != 0 ? false : z3, (i & 4096) != 0 ? false : z4, (i & 8192) != 0 ? false : z5, (i & 16384) != 0 ? ExecutionType.PROOT : executionType);
    }

    public final long getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final String getDistributionType() {
        return this.distributionType;
    }

    public final void setDistributionType(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.distributionType = str;
    }

    public final String getArchType() {
        return this.archType;
    }

    public final void setArchType(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.archType = str;
    }

    public final String getFlavor() {
        return this.flavor;
    }

    public final void setFlavor(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.flavor = str;
    }

    public final String getDefaultUsername() {
        return this.defaultUsername;
    }

    public final void setDefaultUsername(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.defaultUsername = str;
    }

    public final String getDefaultPassword() {
        return this.defaultPassword;
    }

    public final void setDefaultPassword(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.defaultPassword = str;
    }

    public final String getDefaultVncPassword() {
        return this.defaultVncPassword;
    }

    public final void setDefaultVncPassword(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.defaultVncPassword = str;
    }

    public final boolean isAppsFilesystem() {
        return this.isAppsFilesystem;
    }

    public final void setAppsFilesystem(boolean z) {
        this.isAppsFilesystem = z;
    }

    public final String getVersionCodeUsed() {
        return this.versionCodeUsed;
    }

    public final void setVersionCodeUsed(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.versionCodeUsed = str;
    }

    public final boolean isCreatedFromBackup() {
        return this.isCreatedFromBackup;
    }

    public final void setCreatedFromBackup(boolean z) {
        this.isCreatedFromBackup = z;
    }

    public final boolean isProtected() {
        return this.isProtected;
    }

    public final void setProtected(boolean z) {
        this.isProtected = z;
    }

    public final boolean isPaid() {
        return this.isPaid;
    }

    public final void setPaid(boolean z) {
        this.isPaid = z;
    }

    public final boolean getHasPaidUp() {
        return this.hasPaidUp;
    }

    public final void setHasPaidUp(boolean z) {
        this.hasPaidUp = z;
    }

    public final ExecutionType getExecutionType() {
        return this.executionType;
    }

    public final void setExecutionType(ExecutionType executionType) {
        Intrinsics.checkNotNullParameter(executionType, "<set-?>");
        this.executionType = executionType;
    }

    public String toString() {
        return "Filesystem(id=" + this.id + ", name=" + this.name + ", distributionType=" + this.distributionType + ", archType=" + this.archType + ", flavor=" + this.flavor + ", isAppsFilesystem=" + this.isAppsFilesystem + ", versionCodeUsed=" + this.versionCodeUsed + ", isCreatedFromBackup=" + this.isCreatedFromBackup + ", isProtected=" + this.isProtected + ", isPaid=" + this.isPaid + ", hasPaidUp=" + this.hasPaidUp;
    }
}
