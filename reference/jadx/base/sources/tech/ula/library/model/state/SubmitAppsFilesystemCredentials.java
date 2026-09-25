package tech.ula.library.model.state;

import com.iiordanov.bVNC.Constants;
import com.undatech.opaque.RemoteClientLibConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.Filesystem;

/* JADX INFO: compiled from: AppsStartupFsm.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u001b"}, d2 = {"Ltech/ula/library/model/state/SubmitAppsFilesystemCredentials;", "Ltech/ula/library/model/state/AppsStartupEvent;", "filesystem", "Ltech/ula/library/model/entities/Filesystem;", "username", "", Constants.testpassword, "vncPassword", "(Ltech/ula/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getFilesystem", "()Ltech/ula/library/model/entities/Filesystem;", RemoteClientLibConstants.GET_PASSWORD_ID, "()Ljava/lang/String;", "getUsername", "getVncPassword", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SubmitAppsFilesystemCredentials extends AppsStartupEvent {
    private final Filesystem filesystem;
    private final String password;
    private final String username;
    private final String vncPassword;

    public static /* synthetic */ SubmitAppsFilesystemCredentials copy$default(SubmitAppsFilesystemCredentials submitAppsFilesystemCredentials, Filesystem filesystem, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            filesystem = submitAppsFilesystemCredentials.filesystem;
        }
        if ((i & 2) != 0) {
            str = submitAppsFilesystemCredentials.username;
        }
        if ((i & 4) != 0) {
            str2 = submitAppsFilesystemCredentials.password;
        }
        if ((i & 8) != 0) {
            str3 = submitAppsFilesystemCredentials.vncPassword;
        }
        return submitAppsFilesystemCredentials.copy(filesystem, str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUsername() {
        return this.username;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPassword() {
        return this.password;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getVncPassword() {
        return this.vncPassword;
    }

    public final SubmitAppsFilesystemCredentials copy(Filesystem filesystem, String username, String password, String vncPassword) {
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(vncPassword, "vncPassword");
        return new SubmitAppsFilesystemCredentials(filesystem, username, password, vncPassword);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubmitAppsFilesystemCredentials)) {
            return false;
        }
        SubmitAppsFilesystemCredentials submitAppsFilesystemCredentials = (SubmitAppsFilesystemCredentials) other;
        return Intrinsics.areEqual(this.filesystem, submitAppsFilesystemCredentials.filesystem) && Intrinsics.areEqual(this.username, submitAppsFilesystemCredentials.username) && Intrinsics.areEqual(this.password, submitAppsFilesystemCredentials.password) && Intrinsics.areEqual(this.vncPassword, submitAppsFilesystemCredentials.vncPassword);
    }

    public int hashCode() {
        return (((((this.filesystem.hashCode() * 31) + this.username.hashCode()) * 31) + this.password.hashCode()) * 31) + this.vncPassword.hashCode();
    }

    public String toString() {
        return "SubmitAppsFilesystemCredentials(filesystem=" + this.filesystem + ", username=" + this.username + ", password=" + this.password + ", vncPassword=" + this.vncPassword + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubmitAppsFilesystemCredentials(Filesystem filesystem, String username, String password, String vncPassword) {
        super(null);
        Intrinsics.checkNotNullParameter(filesystem, "filesystem");
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(vncPassword, "vncPassword");
        this.filesystem = filesystem;
        this.username = username;
        this.password = password;
        this.vncPassword = vncPassword;
    }

    public final Filesystem getFilesystem() {
        return this.filesystem;
    }

    public final String getPassword() {
        return this.password;
    }

    public final String getUsername() {
        return this.username;
    }

    public final String getVncPassword() {
        return this.vncPassword;
    }
}
