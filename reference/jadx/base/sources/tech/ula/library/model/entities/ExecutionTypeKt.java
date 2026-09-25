package tech.ula.library.model.entities;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.ui.InstallTarget;

/* JADX INFO: compiled from: ExecutionType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toExecutionType", "Ltech/ula/library/model/entities/ExecutionType;", "", "UserLOstLibrary_UserLOstRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ExecutionTypeKt {
    public static final ExecutionType toExecutionType(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, "qemu")) {
            return ExecutionType.QEMU;
        }
        return Intrinsics.areEqual(lowerCase, InstallTarget.AVF_ARG) ? ExecutionType.AVF : ExecutionType.PROOT;
    }
}
