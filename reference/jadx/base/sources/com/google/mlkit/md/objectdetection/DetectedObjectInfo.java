package com.google.mlkit.md.objectdetection;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.Log;
import com.google.mlkit.md.InputInfo;
import com.google.mlkit.vision.objects.DetectedObject;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DetectedObjectInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000  2\u00020\u0001:\u0001 B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\u001f\u001a\u00020\nR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\u0019\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo;", "", "detectedObject", "Lcom/google/mlkit/vision/objects/DetectedObject;", "objectIndex", "", "inputInfo", "Lcom/google/mlkit/md/InputInfo;", "(Lcom/google/mlkit/vision/objects/DetectedObject;ILcom/google/mlkit/md/InputInfo;)V", "bitmap", "Landroid/graphics/Bitmap;", "boundingBox", "Landroid/graphics/Rect;", "getBoundingBox", "()Landroid/graphics/Rect;", "imageData", "", "getImageData", "()[B", "jpegBytes", "labels", "", "Lcom/google/mlkit/vision/objects/DetectedObject$Label;", "getLabels", "()Ljava/util/List;", "objectId", "getObjectId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getObjectIndex", "()I", "getBitmap", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DetectedObjectInfo {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String INVALID_LABEL = "N/A";
    private static final int MAX_IMAGE_WIDTH = 640;
    private static final String TAG = "DetectedObject";
    private Bitmap bitmap;
    private final Rect boundingBox;
    private final DetectedObject detectedObject;
    private final InputInfo inputInfo;
    private byte[] jpegBytes;
    private final List<DetectedObject.Label> labels;
    private final Integer objectId;
    private final int objectIndex;

    public DetectedObjectInfo(DetectedObject detectedObject, int i, InputInfo inputInfo) {
        Intrinsics.checkNotNullParameter(detectedObject, "detectedObject");
        Intrinsics.checkNotNullParameter(inputInfo, "inputInfo");
        this.detectedObject = detectedObject;
        this.objectIndex = i;
        this.inputInfo = inputInfo;
        this.objectId = detectedObject.getTrackingId();
        Rect boundingBox = detectedObject.getBoundingBox();
        Intrinsics.checkNotNullExpressionValue(boundingBox, "getBoundingBox(...)");
        this.boundingBox = boundingBox;
        List<DetectedObject.Label> labels = detectedObject.getLabels();
        Intrinsics.checkNotNullExpressionValue(labels, "getLabels(...)");
        this.labels = labels;
    }

    public final int getObjectIndex() {
        return this.objectIndex;
    }

    public final Integer getObjectId() {
        return this.objectId;
    }

    public final Rect getBoundingBox() {
        return this.boundingBox;
    }

    public final List<DetectedObject.Label> getLabels() {
        return this.labels;
    }

    public final synchronized byte[] getImageData() {
        if (this.jpegBytes == null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
                    getBitmap().compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream2);
                    this.jpegBytes = byteArrayOutputStream2.toByteArray();
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(byteArrayOutputStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(byteArrayOutputStream, th);
                        throw th2;
                    }
                }
            } catch (IOException unused) {
                Log.e(TAG, "Error getting object image data!");
            }
        }
        return this.jpegBytes;
    }

    public final synchronized Bitmap getBitmap() {
        Bitmap bitmapCreateBitmap;
        bitmapCreateBitmap = this.bitmap;
        if (bitmapCreateBitmap == null) {
            DetectedObjectInfo detectedObjectInfo = this;
            Rect boundingBox = this.detectedObject.getBoundingBox();
            Intrinsics.checkNotNullExpressionValue(boundingBox, "getBoundingBox(...)");
            bitmapCreateBitmap = Bitmap.createBitmap(this.inputInfo.getBitmap(), boundingBox.left, boundingBox.top, boundingBox.width(), boundingBox.height());
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
            if (bitmapCreateBitmap.getWidth() > MAX_IMAGE_WIDTH) {
                this.bitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, MAX_IMAGE_WIDTH, (int) ((640.0f / bitmapCreateBitmap.getWidth()) * bitmapCreateBitmap.getHeight()), false);
            }
        }
        return bitmapCreateBitmap;
    }

    /* JADX INFO: compiled from: DetectedObjectInfo.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/google/mlkit/md/objectdetection/DetectedObjectInfo$Companion;", "", "()V", "INVALID_LABEL", "", "MAX_IMAGE_WIDTH", "", "TAG", "hasValidLabels", "", "detectedObject", "Lcom/google/mlkit/vision/objects/DetectedObject;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean hasValidLabels(DetectedObject detectedObject) {
            Intrinsics.checkNotNullParameter(detectedObject, "detectedObject");
            List<DetectedObject.Label> labels = detectedObject.getLabels();
            Intrinsics.checkNotNullExpressionValue(labels, "getLabels(...)");
            if (!labels.isEmpty()) {
                List<DetectedObject.Label> labels2 = detectedObject.getLabels();
                Intrinsics.checkNotNullExpressionValue(labels2, "getLabels(...)");
                List<DetectedObject.Label> list = labels2;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.areEqual(((DetectedObject.Label) it.next()).getText(), DetectedObjectInfo.INVALID_LABEL)) {
                        }
                    }
                }
                return true;
            }
            return false;
        }
    }
}
