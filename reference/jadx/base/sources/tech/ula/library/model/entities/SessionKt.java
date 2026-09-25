package tech.ula.library.model.entities;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.customlibrary.BuildConfig;

/* JADX INFO: compiled from: Session.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toServiceType", "Ltech/ula/library/model/entities/ServiceType;", "", "UserLOstLibrary_UserLOstRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class SessionKt {
    public static final ServiceType toServiceType(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int iHashCode = str.hashCode();
        if (iHashCode != 114184) {
            if (iHashCode != 116907) {
                if (iHashCode == 3688643 && str.equals("xsdl")) {
                    return ServiceType.Xsdl.INSTANCE;
                }
            } else if (str.equals(BuildConfig.DEFAULT_LAUNCH_TYPE)) {
                return ServiceType.Vnc.INSTANCE;
            }
        } else if (str.equals("ssh")) {
            return ServiceType.Ssh.INSTANCE;
        }
        return ServiceType.Unselected.INSTANCE;
    }
}
