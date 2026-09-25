package tech.ula.library.model.entities;

import android.os.Parcel;
import android.os.Parcelable;
import com.iiordanov.bVNC.Constants;
import com.undatech.opaque.RemoteClientLibConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Session.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b]\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bû\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0012\u001a\u00020\t\u0012\b\b\u0002\u0010\u0013\u001a\u00020\t\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0016\u001a\u00020\t\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018\u0012\b\b\u0002\u0010\u0019\u001a\u00020\t\u0012\b\b\u0002\u0010\u001a\u001a\u00020\t\u0012\b\b\u0002\u0010\u001b\u001a\u00020\t\u0012\b\b\u0002\u0010\u001c\u001a\u00020\t\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001e\u0012\b\b\u0002\u0010\u001f\u001a\u00020\t\u0012\b\b\u0002\u0010 \u001a\u00020\u0003\u0012\b\b\u0002\u0010!\u001a\u00020\t¢\u0006\u0002\u0010\"J\t\u0010_\u001a\u00020\u0003HÆ\u0003J\t\u0010`\u001a\u00020\u0003HÆ\u0003J\t\u0010a\u001a\u00020\u0003HÆ\u0003J\t\u0010b\u001a\u00020\u0005HÆ\u0003J\t\u0010c\u001a\u00020\tHÆ\u0003J\t\u0010d\u001a\u00020\tHÆ\u0003J\t\u0010e\u001a\u00020\u0015HÆ\u0003J\t\u0010f\u001a\u00020\tHÆ\u0003J\t\u0010g\u001a\u00020\u0018HÆ\u0003J\t\u0010h\u001a\u00020\tHÆ\u0003J\t\u0010i\u001a\u00020\tHÆ\u0003J\t\u0010j\u001a\u00020\u0005HÆ\u0003J\t\u0010k\u001a\u00020\tHÆ\u0003J\t\u0010l\u001a\u00020\tHÆ\u0003J\t\u0010m\u001a\u00020\u001eHÆ\u0003J\t\u0010n\u001a\u00020\tHÆ\u0003J\t\u0010o\u001a\u00020\u0003HÆ\u0003J\t\u0010p\u001a\u00020\tHÆ\u0003J\t\u0010q\u001a\u00020\u0003HÆ\u0003J\t\u0010r\u001a\u00020\u0005HÆ\u0003J\t\u0010s\u001a\u00020\tHÆ\u0003J\t\u0010t\u001a\u00020\u0005HÆ\u0003J\t\u0010u\u001a\u00020\u0005HÆ\u0003J\t\u0010v\u001a\u00020\u0005HÆ\u0003J\t\u0010w\u001a\u00020\u000eHÆ\u0003J\u0083\u0002\u0010x\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\t2\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\t2\b\b\u0002\u0010\u001a\u001a\u00020\t2\b\b\u0002\u0010\u001b\u001a\u00020\t2\b\b\u0002\u0010\u001c\u001a\u00020\t2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020\t2\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\tHÆ\u0001J\t\u0010y\u001a\u00020\u0015HÖ\u0001J\u0013\u0010z\u001a\u00020\t2\b\u0010{\u001a\u0004\u0018\u00010|HÖ\u0003J\t\u0010}\u001a\u00020\u0015HÖ\u0001J\b\u0010~\u001a\u00020\u0005H\u0016J\u001d\u0010\u007f\u001a\u00030\u0080\u00012\b\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020\u0015HÖ\u0001R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010!\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010$\"\u0004\b(\u0010&R\u001a\u0010\u0016\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010$\"\u0004\b*\u0010&R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u0010\u0019\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010$\"\u0004\b0\u0010&R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001a\u0010\u0011\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010>\"\u0004\bB\u0010@R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010:R\u0011\u0010\u0012\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010$R\u001a\u0010\u0013\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010$\"\u0004\bD\u0010&R\u001a\u0010 \u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010:\"\u0004\bF\u0010<R\u001a\u0010\u001b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010$\"\u0004\bH\u0010&R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010>\"\u0004\bJ\u0010@R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010>\"\u0004\bL\u0010@R\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010:\"\u0004\bN\u0010<R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010:\"\u0004\bP\u0010<R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001a\u0010\u001c\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010$\"\u0004\bV\u0010&R\u001a\u0010\u001f\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010$\"\u0004\bX\u0010&R\u001a\u0010\u001a\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010$\"\u0004\bZ\u0010&R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010>\"\u0004\b\\\u0010@R\u001a\u0010\f\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b]\u0010>\"\u0004\b^\u0010@¨\u0006\u0084\u0001"}, d2 = {"Ltech/ula/library/model/entities/Session;", "Landroid/os/Parcelable;", "id", "", "name", "", "filesystemId", "filesystemName", "active", "", "username", Constants.testpassword, "vncPassword", "serviceType", "Ltech/ula/library/model/entities/ServiceType;", "port", "pid", "geometry", "isAppsSession", "isProtected", "displayOrientation", "", "displayLocked", "displayScaling", "", "displayRemember", "soundSupport", "micSupport", "serviceTypeRemember", "executionType", "Ltech/ula/library/model/entities/ExecutionType;", "shareStorage", "memoryMb", "cpuAllCores", "(JLjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/ula/library/model/entities/ServiceType;JJLjava/lang/String;ZZIZFZZZZLtech/ula/library/model/entities/ExecutionType;ZJZ)V", "getActive", "()Z", "setActive", "(Z)V", "getCpuAllCores", "setCpuAllCores", "getDisplayLocked", "setDisplayLocked", "getDisplayOrientation", "()I", "setDisplayOrientation", "(I)V", "getDisplayRemember", "setDisplayRemember", "getDisplayScaling", "()F", "setDisplayScaling", "(F)V", "getExecutionType", "()Ltech/ula/library/model/entities/ExecutionType;", "setExecutionType", "(Ltech/ula/library/model/entities/ExecutionType;)V", "getFilesystemId", "()J", "setFilesystemId", "(J)V", "getFilesystemName", "()Ljava/lang/String;", "setFilesystemName", "(Ljava/lang/String;)V", "getGeometry", "setGeometry", "getId", "setProtected", "getMemoryMb", "setMemoryMb", "getMicSupport", "setMicSupport", "getName", "setName", RemoteClientLibConstants.GET_PASSWORD_ID, "setPassword", "getPid", "setPid", "getPort", "setPort", "getServiceType", "()Ltech/ula/library/model/entities/ServiceType;", "setServiceType", "(Ltech/ula/library/model/entities/ServiceType;)V", "getServiceTypeRemember", "setServiceTypeRemember", "getShareStorage", "setShareStorage", "getSoundSupport", "setSoundSupport", "getUsername", "setUsername", "getVncPassword", "setVncPassword", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Session implements Parcelable {
    public static final Parcelable.Creator<Session> CREATOR = new Creator();
    private boolean active;
    private boolean cpuAllCores;
    private boolean displayLocked;
    private int displayOrientation;
    private boolean displayRemember;
    private float displayScaling;
    private ExecutionType executionType;
    private long filesystemId;
    private String filesystemName;
    private String geometry;
    private final long id;
    private final boolean isAppsSession;
    private boolean isProtected;
    private long memoryMb;
    private boolean micSupport;
    private String name;
    private String password;
    private long pid;
    private long port;
    private ServiceType serviceType;
    private boolean serviceTypeRemember;
    private boolean shareStorage;
    private boolean soundSupport;
    private String username;
    private String vncPassword;

    /* JADX INFO: compiled from: Session.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Session> {
        @Override // android.os.Parcelable.Creator
        public final Session createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new Session(parcel.readLong(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readString(), (ServiceType) parcel.readParcelable(Session.class.getClassLoader()), parcel.readLong(), parcel.readLong(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt(), parcel.readInt() != 0, parcel.readFloat(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, ExecutionType.valueOf(parcel.readString()), parcel.readInt() != 0, parcel.readLong(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final Session[] newArray(int i) {
            return new Session[i];
        }
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final long getPort() {
        return this.port;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final long getPid() {
        return this.pid;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getGeometry() {
        return this.geometry;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final boolean getIsAppsSession() {
        return this.isAppsSession;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final boolean getIsProtected() {
        return this.isProtected;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final int getDisplayOrientation() {
        return this.displayOrientation;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final boolean getDisplayLocked() {
        return this.displayLocked;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final float getDisplayScaling() {
        return this.displayScaling;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final boolean getDisplayRemember() {
        return this.displayRemember;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final boolean getSoundSupport() {
        return this.soundSupport;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final boolean getMicSupport() {
        return this.micSupport;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final boolean getServiceTypeRemember() {
        return this.serviceTypeRemember;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final ExecutionType getExecutionType() {
        return this.executionType;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final boolean getShareStorage() {
        return this.shareStorage;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final long getMemoryMb() {
        return this.memoryMb;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final boolean getCpuAllCores() {
        return this.cpuAllCores;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getFilesystemId() {
        return this.filesystemId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getFilesystemName() {
        return this.filesystemName;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getActive() {
        return this.active;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getUsername() {
        return this.username;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getPassword() {
        return this.password;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getVncPassword() {
        return this.vncPassword;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final ServiceType getServiceType() {
        return this.serviceType;
    }

    public final Session copy(long id, String name, long filesystemId, String filesystemName, boolean active, String username, String password, String vncPassword, ServiceType serviceType, long port, long pid, String geometry, boolean isAppsSession, boolean isProtected, int displayOrientation, boolean displayLocked, float displayScaling, boolean displayRemember, boolean soundSupport, boolean micSupport, boolean serviceTypeRemember, ExecutionType executionType, boolean shareStorage, long memoryMb, boolean cpuAllCores) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(filesystemName, "filesystemName");
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(vncPassword, "vncPassword");
        Intrinsics.checkNotNullParameter(serviceType, "serviceType");
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        return new Session(id, name, filesystemId, filesystemName, active, username, password, vncPassword, serviceType, port, pid, geometry, isAppsSession, isProtected, displayOrientation, displayLocked, displayScaling, displayRemember, soundSupport, micSupport, serviceTypeRemember, executionType, shareStorage, memoryMb, cpuAllCores);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Session)) {
            return false;
        }
        Session session = (Session) other;
        return this.id == session.id && Intrinsics.areEqual(this.name, session.name) && this.filesystemId == session.filesystemId && Intrinsics.areEqual(this.filesystemName, session.filesystemName) && this.active == session.active && Intrinsics.areEqual(this.username, session.username) && Intrinsics.areEqual(this.password, session.password) && Intrinsics.areEqual(this.vncPassword, session.vncPassword) && Intrinsics.areEqual(this.serviceType, session.serviceType) && this.port == session.port && this.pid == session.pid && Intrinsics.areEqual(this.geometry, session.geometry) && this.isAppsSession == session.isAppsSession && this.isProtected == session.isProtected && this.displayOrientation == session.displayOrientation && this.displayLocked == session.displayLocked && Float.compare(this.displayScaling, session.displayScaling) == 0 && this.displayRemember == session.displayRemember && this.soundSupport == session.soundSupport && this.micSupport == session.micSupport && this.serviceTypeRemember == session.serviceTypeRemember && this.executionType == session.executionType && this.shareStorage == session.shareStorage && this.memoryMb == session.memoryMb && this.cpuAllCores == session.cpuAllCores;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((Long.hashCode(this.id) * 31) + this.name.hashCode()) * 31) + Long.hashCode(this.filesystemId)) * 31) + this.filesystemName.hashCode()) * 31) + Boolean.hashCode(this.active)) * 31) + this.username.hashCode()) * 31) + this.password.hashCode()) * 31) + this.vncPassword.hashCode()) * 31) + this.serviceType.hashCode()) * 31) + Long.hashCode(this.port)) * 31) + Long.hashCode(this.pid)) * 31) + this.geometry.hashCode()) * 31) + Boolean.hashCode(this.isAppsSession)) * 31) + Boolean.hashCode(this.isProtected)) * 31) + Integer.hashCode(this.displayOrientation)) * 31) + Boolean.hashCode(this.displayLocked)) * 31) + Float.hashCode(this.displayScaling)) * 31) + Boolean.hashCode(this.displayRemember)) * 31) + Boolean.hashCode(this.soundSupport)) * 31) + Boolean.hashCode(this.micSupport)) * 31) + Boolean.hashCode(this.serviceTypeRemember)) * 31) + this.executionType.hashCode()) * 31) + Boolean.hashCode(this.shareStorage)) * 31) + Long.hashCode(this.memoryMb)) * 31) + Boolean.hashCode(this.cpuAllCores);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkNotNullParameter(parcel, "out");
        parcel.writeLong(this.id);
        parcel.writeString(this.name);
        parcel.writeLong(this.filesystemId);
        parcel.writeString(this.filesystemName);
        parcel.writeInt(this.active ? 1 : 0);
        parcel.writeString(this.username);
        parcel.writeString(this.password);
        parcel.writeString(this.vncPassword);
        parcel.writeParcelable(this.serviceType, flags);
        parcel.writeLong(this.port);
        parcel.writeLong(this.pid);
        parcel.writeString(this.geometry);
        parcel.writeInt(this.isAppsSession ? 1 : 0);
        parcel.writeInt(this.isProtected ? 1 : 0);
        parcel.writeInt(this.displayOrientation);
        parcel.writeInt(this.displayLocked ? 1 : 0);
        parcel.writeFloat(this.displayScaling);
        parcel.writeInt(this.displayRemember ? 1 : 0);
        parcel.writeInt(this.soundSupport ? 1 : 0);
        parcel.writeInt(this.micSupport ? 1 : 0);
        parcel.writeInt(this.serviceTypeRemember ? 1 : 0);
        parcel.writeString(this.executionType.name());
        parcel.writeInt(this.shareStorage ? 1 : 0);
        parcel.writeLong(this.memoryMb);
        parcel.writeInt(this.cpuAllCores ? 1 : 0);
    }

    public Session(long j, String name, long j2, String filesystemName, boolean z, String username, String password, String vncPassword, ServiceType serviceType, long j3, long j4, String geometry, boolean z2, boolean z3, int i, boolean z4, float f, boolean z5, boolean z6, boolean z7, boolean z8, ExecutionType executionType, boolean z9, long j5, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(filesystemName, "filesystemName");
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(vncPassword, "vncPassword");
        Intrinsics.checkNotNullParameter(serviceType, "serviceType");
        Intrinsics.checkNotNullParameter(geometry, "geometry");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        this.id = j;
        this.name = name;
        this.filesystemId = j2;
        this.filesystemName = filesystemName;
        this.active = z;
        this.username = username;
        this.password = password;
        this.vncPassword = vncPassword;
        this.serviceType = serviceType;
        this.port = j3;
        this.pid = j4;
        this.geometry = geometry;
        this.isAppsSession = z2;
        this.isProtected = z3;
        this.displayOrientation = i;
        this.displayLocked = z4;
        this.displayScaling = f;
        this.displayRemember = z5;
        this.soundSupport = z6;
        this.micSupport = z7;
        this.serviceTypeRemember = z8;
        this.executionType = executionType;
        this.shareStorage = z9;
        this.memoryMb = j5;
        this.cpuAllCores = z10;
    }

    public /* synthetic */ Session(long j, String str, long j2, String str2, boolean z, String str3, String str4, String str5, ServiceType serviceType, long j3, long j4, String str6, boolean z2, boolean z3, int i, boolean z4, float f, boolean z5, boolean z6, boolean z7, boolean z8, ExecutionType executionType, boolean z9, long j5, boolean z10, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, (i2 & 2) != 0 ? "" : str, j2, (i2 & 8) != 0 ? "" : str2, (i2 & 16) != 0 ? false : z, (i2 & 32) != 0 ? "" : str3, (i2 & 64) != 0 ? "" : str4, (i2 & 128) != 0 ? "" : str5, (i2 & 256) != 0 ? ServiceType.Unselected.INSTANCE : serviceType, (i2 & 512) != 0 ? 2022L : j3, (i2 & 1024) != 0 ? 0L : j4, (i2 & 2048) != 0 ? "" : str6, (i2 & 4096) != 0 ? false : z2, (i2 & 8192) != 0 ? false : z3, (i2 & 16384) != 0 ? 2 : i, (32768 & i2) != 0 ? false : z4, (65536 & i2) != 0 ? 1.0f : f, (131072 & i2) != 0 ? false : z5, (262144 & i2) != 0 ? false : z6, (524288 & i2) != 0 ? false : z7, (1048576 & i2) != 0 ? false : z8, (2097152 & i2) != 0 ? ExecutionType.PROOT : executionType, (4194304 & i2) != 0 ? true : z9, (8388608 & i2) != 0 ? 0L : j5, (i2 & 16777216) != 0 ? false : z10);
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

    public final long getFilesystemId() {
        return this.filesystemId;
    }

    public final void setFilesystemId(long j) {
        this.filesystemId = j;
    }

    public final String getFilesystemName() {
        return this.filesystemName;
    }

    public final void setFilesystemName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filesystemName = str;
    }

    public final boolean getActive() {
        return this.active;
    }

    public final void setActive(boolean z) {
        this.active = z;
    }

    public final String getUsername() {
        return this.username;
    }

    public final void setUsername(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.username = str;
    }

    public final String getPassword() {
        return this.password;
    }

    public final void setPassword(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.password = str;
    }

    public final String getVncPassword() {
        return this.vncPassword;
    }

    public final void setVncPassword(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.vncPassword = str;
    }

    public final ServiceType getServiceType() {
        return this.serviceType;
    }

    public final void setServiceType(ServiceType serviceType) {
        Intrinsics.checkNotNullParameter(serviceType, "<set-?>");
        this.serviceType = serviceType;
    }

    public final long getPort() {
        return this.port;
    }

    public final void setPort(long j) {
        this.port = j;
    }

    public final long getPid() {
        return this.pid;
    }

    public final void setPid(long j) {
        this.pid = j;
    }

    public final String getGeometry() {
        return this.geometry;
    }

    public final void setGeometry(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.geometry = str;
    }

    public final boolean isAppsSession() {
        return this.isAppsSession;
    }

    public final boolean isProtected() {
        return this.isProtected;
    }

    public final void setProtected(boolean z) {
        this.isProtected = z;
    }

    public final int getDisplayOrientation() {
        return this.displayOrientation;
    }

    public final void setDisplayOrientation(int i) {
        this.displayOrientation = i;
    }

    public final boolean getDisplayLocked() {
        return this.displayLocked;
    }

    public final void setDisplayLocked(boolean z) {
        this.displayLocked = z;
    }

    public final float getDisplayScaling() {
        return this.displayScaling;
    }

    public final void setDisplayScaling(float f) {
        this.displayScaling = f;
    }

    public final boolean getDisplayRemember() {
        return this.displayRemember;
    }

    public final void setDisplayRemember(boolean z) {
        this.displayRemember = z;
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

    public final boolean getServiceTypeRemember() {
        return this.serviceTypeRemember;
    }

    public final void setServiceTypeRemember(boolean z) {
        this.serviceTypeRemember = z;
    }

    public final ExecutionType getExecutionType() {
        return this.executionType;
    }

    public final void setExecutionType(ExecutionType executionType) {
        Intrinsics.checkNotNullParameter(executionType, "<set-?>");
        this.executionType = executionType;
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

    public String toString() {
        return "Session(id=" + this.id + ", name=" + this.name + ", filesystemId=" + this.filesystemId + ", filesystemName=" + this.filesystemName + ", active=" + this.active + ", serviceType=" + this.serviceType + ", port=" + this.port + ", pid=" + this.pid + ", isAppsSession=" + this.isAppsSession + "), isProtected=" + this.isProtected;
    }
}
