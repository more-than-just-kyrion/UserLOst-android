package com.google.mlkit.md.camera;

import android.hardware.Camera;
import com.google.android.gms.common.images.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CameraSizePair.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B!\b\u0016\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0018\u00010\u0003R\u00020\u0004¢\u0006\u0002\u0010\u0006B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0007\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/google/mlkit/md/camera/CameraSizePair;", "", "previewSize", "Landroid/hardware/Camera$Size;", "Landroid/hardware/Camera;", "pictureSize", "(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V", "Lcom/google/android/gms/common/images/Size;", "(Lcom/google/android/gms/common/images/Size;Lcom/google/android/gms/common/images/Size;)V", "picture", "getPicture", "()Lcom/google/android/gms/common/images/Size;", "preview", "getPreview", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CameraSizePair {
    private final Size picture;
    private final Size preview;

    public final Size getPreview() {
        return this.preview;
    }

    public final Size getPicture() {
        return this.picture;
    }

    public CameraSizePair(Camera.Size previewSize, Camera.Size size) {
        Intrinsics.checkNotNullParameter(previewSize, "previewSize");
        this.preview = new Size(previewSize.width, previewSize.height);
        this.picture = size != null ? new Size(size.width, size.height) : null;
    }

    public CameraSizePair(Size previewSize, Size size) {
        Intrinsics.checkNotNullParameter(previewSize, "previewSize");
        this.preview = previewSize;
        this.picture = size;
    }
}
