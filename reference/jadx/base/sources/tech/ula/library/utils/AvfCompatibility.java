package tech.ula.library.utils;

import android.content.Context;
import android.os.Build;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.model.entities.ExecutionType;

/* JADX INFO: compiled from: AvfCompatibility.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Ltech/ula/library/utils/AvfCompatibility;", "", "()V", "VIRTUALIZATION_FEATURE", "", "VMM_CLASS", "isDeviceCapable", "", "context", "Landroid/content/Context;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AvfCompatibility {
    public static final AvfCompatibility INSTANCE = new AvfCompatibility();
    private static final String VIRTUALIZATION_FEATURE = "android.software.virtualization_framework";
    private static final String VMM_CLASS = "android.system.virtualmachine.VirtualMachineManager";

    private AvfCompatibility() {
    }

    public final boolean isDeviceCapable(Context context) {
        Object objM341constructorimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        int i = Build.VERSION.SDK_INT;
        Integer minSupportedSdk = ExecutionType.AVF.getMinSupportedSdk();
        Intrinsics.checkNotNull(minSupportedSdk);
        if (i < minSupportedSdk.intValue()) {
            return false;
        }
        String[] SUPPORTED_64_BIT_ABIS = Build.SUPPORTED_64_BIT_ABIS;
        Intrinsics.checkNotNullExpressionValue(SUPPORTED_64_BIT_ABIS, "SUPPORTED_64_BIT_ABIS");
        if (!ArraysKt.contains(SUPPORTED_64_BIT_ABIS, "arm64-v8a") || !context.getPackageManager().hasSystemFeature(VIRTUALIZATION_FEATURE)) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            AvfCompatibility avfCompatibility = this;
            objM341constructorimpl = Result.m341constructorimpl(Boolean.valueOf(context.getSystemService(Class.forName(VMM_CLASS)) != null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM341constructorimpl = Result.m341constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m347isFailureimpl(objM341constructorimpl)) {
            objM341constructorimpl = false;
        }
        return ((Boolean) objM341constructorimpl).booleanValue();
    }
}
