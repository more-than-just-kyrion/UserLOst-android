package tech.ula.library.utils;

import android.os.StatFs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StorageCalculator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Ltech/ula/library/utils/StorageCalculator;", "", "statFs", "Landroid/os/StatFs;", "(Landroid/os/StatFs;)V", "getAvailableStorageInMB", "", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StorageCalculator {
    private final StatFs statFs;

    public StorageCalculator(StatFs statFs) {
        Intrinsics.checkNotNullParameter(statFs, "statFs");
        this.statFs = statFs;
    }

    public final long getAvailableStorageInMB() {
        return (this.statFs.getBlockSizeLong() * this.statFs.getAvailableBlocksLong()) / ((long) 1048576);
    }
}
