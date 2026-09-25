package tech.ula.library.model.entities;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExecutionType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\b"}, d2 = {"Ltech/ula/library/model/entities/ExecutionTypeConverter;", "", "()V", "fromExecutionType", "", "value", "Ltech/ula/library/model/entities/ExecutionType;", "fromString", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ExecutionTypeConverter {
    public final ExecutionType fromString(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return ExecutionTypeKt.toExecutionType(value);
    }

    public final String fromExecutionType(ExecutionType value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.toString();
    }
}
