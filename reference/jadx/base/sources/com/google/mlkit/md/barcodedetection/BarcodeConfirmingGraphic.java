package com.google.mlkit.md.barcodedetection;

import android.graphics.Canvas;
import android.graphics.Path;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.md.camera.GraphicOverlay;
import com.google.mlkit.md.settings.PreferenceUtils;
import com.google.mlkit.vision.barcode.common.Barcode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BarcodeConfirmingGraphic.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/google/mlkit/md/barcodedetection/BarcodeConfirmingGraphic;", "Lcom/google/mlkit/md/barcodedetection/BarcodeGraphicBase;", "overlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", OptionalModuleUtils.BARCODE, "Lcom/google/mlkit/vision/barcode/common/Barcode;", "(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/vision/barcode/common/Barcode;)V", "draw", "", "canvas", "Landroid/graphics/Canvas;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BarcodeConfirmingGraphic extends BarcodeGraphicBase {
    private final Barcode barcode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BarcodeConfirmingGraphic(GraphicOverlay overlay, Barcode barcode) {
        super(overlay);
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        Intrinsics.checkNotNullParameter(barcode, "barcode");
        this.barcode = barcode;
    }

    @Override // com.google.mlkit.md.barcodedetection.BarcodeGraphicBase, com.google.mlkit.md.camera.GraphicOverlay.Graphic
    public void draw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.draw(canvas);
        float progressToMeetBarcodeSizeRequirement = PreferenceUtils.INSTANCE.getProgressToMeetBarcodeSizeRequirement(getOverlay(), this.barcode);
        Path path = new Path();
        if (progressToMeetBarcodeSizeRequirement > 0.95f) {
            path.moveTo(getBoxRect().left, getBoxRect().top);
            path.lineTo(getBoxRect().right, getBoxRect().top);
            path.lineTo(getBoxRect().right, getBoxRect().bottom);
            path.lineTo(getBoxRect().left, getBoxRect().bottom);
            path.close();
        } else {
            path.moveTo(getBoxRect().left, getBoxRect().top + (getBoxRect().height() * progressToMeetBarcodeSizeRequirement));
            path.lineTo(getBoxRect().left, getBoxRect().top);
            path.lineTo(getBoxRect().left + (getBoxRect().width() * progressToMeetBarcodeSizeRequirement), getBoxRect().top);
            path.moveTo(getBoxRect().right, getBoxRect().bottom - (getBoxRect().height() * progressToMeetBarcodeSizeRequirement));
            path.lineTo(getBoxRect().right, getBoxRect().bottom);
            path.lineTo(getBoxRect().right - (getBoxRect().width() * progressToMeetBarcodeSizeRequirement), getBoxRect().bottom);
        }
        canvas.drawPath(path, getPathPaint());
    }
}
