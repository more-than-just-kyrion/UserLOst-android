package tech.ula.library.model.entities;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.customlibrary.BuildConfig;

/* JADX INFO: compiled from: Session.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Ltech/ula/library/model/entities/ServiceType;", "Landroid/os/Parcelable;", "()V", "Ssh", "Unselected", "Vnc", "Xsdl", "Ltech/ula/library/model/entities/ServiceType$Ssh;", "Ltech/ula/library/model/entities/ServiceType$Unselected;", "Ltech/ula/library/model/entities/ServiceType$Vnc;", "Ltech/ula/library/model/entities/ServiceType$Xsdl;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ServiceType implements Parcelable {
    public /* synthetic */ ServiceType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private ServiceType() {
    }

    /* JADX INFO: compiled from: Session.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0019\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004HÖ\u0001¨\u0006\f"}, d2 = {"Ltech/ula/library/model/entities/ServiceType$Unselected;", "Ltech/ula/library/model/entities/ServiceType;", "()V", "describeContents", "", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Unselected extends ServiceType {
        public static final Unselected INSTANCE = new Unselected();
        public static final Parcelable.Creator<Unselected> CREATOR = new Creator();

        /* JADX INFO: compiled from: Session.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Unselected> {
            @Override // android.os.Parcelable.Creator
            public final Unselected createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return Unselected.INSTANCE;
            }

            @Override // android.os.Parcelable.Creator
            public final Unselected[] newArray(int i) {
                return new Unselected[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private Unselected() {
            super(null);
        }

        public String toString() {
            return "unselected";
        }
    }

    /* JADX INFO: compiled from: Session.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0019\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004HÖ\u0001¨\u0006\f"}, d2 = {"Ltech/ula/library/model/entities/ServiceType$Ssh;", "Ltech/ula/library/model/entities/ServiceType;", "()V", "describeContents", "", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Ssh extends ServiceType {
        public static final Ssh INSTANCE = new Ssh();
        public static final Parcelable.Creator<Ssh> CREATOR = new Creator();

        /* JADX INFO: compiled from: Session.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Ssh> {
            @Override // android.os.Parcelable.Creator
            public final Ssh createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return Ssh.INSTANCE;
            }

            @Override // android.os.Parcelable.Creator
            public final Ssh[] newArray(int i) {
                return new Ssh[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private Ssh() {
            super(null);
        }

        public String toString() {
            return "ssh";
        }
    }

    /* JADX INFO: compiled from: Session.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0019\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004HÖ\u0001¨\u0006\f"}, d2 = {"Ltech/ula/library/model/entities/ServiceType$Vnc;", "Ltech/ula/library/model/entities/ServiceType;", "()V", "describeContents", "", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Vnc extends ServiceType {
        public static final Vnc INSTANCE = new Vnc();
        public static final Parcelable.Creator<Vnc> CREATOR = new Creator();

        /* JADX INFO: compiled from: Session.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Vnc> {
            @Override // android.os.Parcelable.Creator
            public final Vnc createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return Vnc.INSTANCE;
            }

            @Override // android.os.Parcelable.Creator
            public final Vnc[] newArray(int i) {
                return new Vnc[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private Vnc() {
            super(null);
        }

        public String toString() {
            return BuildConfig.DEFAULT_LAUNCH_TYPE;
        }
    }

    /* JADX INFO: compiled from: Session.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004HÖ\u0001J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0019\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004HÖ\u0001¨\u0006\f"}, d2 = {"Ltech/ula/library/model/entities/ServiceType$Xsdl;", "Ltech/ula/library/model/entities/ServiceType;", "()V", "describeContents", "", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Xsdl extends ServiceType {
        public static final Xsdl INSTANCE = new Xsdl();
        public static final Parcelable.Creator<Xsdl> CREATOR = new Creator();

        /* JADX INFO: compiled from: Session.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Xsdl> {
            @Override // android.os.Parcelable.Creator
            public final Xsdl createFromParcel(Parcel parcel) {
                Intrinsics.checkNotNullParameter(parcel, "parcel");
                parcel.readInt();
                return Xsdl.INSTANCE;
            }

            @Override // android.os.Parcelable.Creator
            public final Xsdl[] newArray(int i) {
                return new Xsdl[i];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.checkNotNullParameter(parcel, "out");
            parcel.writeInt(1);
        }

        private Xsdl() {
            super(null);
        }

        public String toString() {
            return "xsdl";
        }
    }
}
