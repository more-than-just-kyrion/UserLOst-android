package com.google.mlkit.md;

import android.graphics.Bitmap;
import com.google.mlkit.md.camera.FrameMetadata;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InputInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\bH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/google/mlkit/md/CameraInputInfo;", "Lcom/google/mlkit/md/InputInfo;", "frameByteBuffer", "Ljava/nio/ByteBuffer;", "frameMetadata", "Lcom/google/mlkit/md/camera/FrameMetadata;", "(Ljava/nio/ByteBuffer;Lcom/google/mlkit/md/camera/FrameMetadata;)V", "bitmap", "Landroid/graphics/Bitmap;", "getBitmap", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CameraInputInfo implements InputInfo {
    private Bitmap bitmap;
    private final ByteBuffer frameByteBuffer;
    private final FrameMetadata frameMetadata;

    public CameraInputInfo(ByteBuffer frameByteBuffer, FrameMetadata frameMetadata) {
        Intrinsics.checkNotNullParameter(frameByteBuffer, "frameByteBuffer");
        Intrinsics.checkNotNullParameter(frameMetadata, "frameMetadata");
        this.frameByteBuffer = frameByteBuffer;
        this.frameMetadata = frameMetadata;
    }

    @Override // com.google.mlkit.md.InputInfo
    public synchronized Bitmap getBitmap() {
        Bitmap bitmapConvertToBitmap;
        bitmapConvertToBitmap = this.bitmap;
        if (bitmapConvertToBitmap == null) {
            CameraInputInfo cameraInputInfo = this;
            bitmapConvertToBitmap = Utils.INSTANCE.convertToBitmap(this.frameByteBuffer, this.frameMetadata.getWidth(), this.frameMetadata.getHeight(), this.frameMetadata.getRotation());
            this.bitmap = bitmapConvertToBitmap;
            Intrinsics.checkNotNull(bitmapConvertToBitmap);
        }
        return bitmapConvertToBitmap;
    }
}
