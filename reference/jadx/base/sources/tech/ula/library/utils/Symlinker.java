package tech.ula.library.utils;

import android.system.Os;
import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UlaFiles.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\b"}, d2 = {"Ltech/ula/library/utils/Symlinker;", "", "()V", "createSymlink", "", "targetPath", "", "linkPath", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Symlinker {
    public final void createSymlink(String targetPath, String linkPath) {
        Intrinsics.checkNotNullParameter(targetPath, "targetPath");
        Intrinsics.checkNotNullParameter(linkPath, "linkPath");
        try {
            Os.symlink(targetPath, linkPath);
        } catch (Exception e) {
            Log.e("symlinker", "symlink failed e: " + e);
        }
    }
}
