package com.google.mlkit.md.camera;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.common.images.Size;
import com.google.mlkit.md.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GraphicOverlay.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001$B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\tJ\u0006\u0010\u0015\u001a\u00020\u0013J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0014J\u000e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000bJ\u000e\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u000bR\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/google/mlkit/md/camera/GraphicOverlay;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "graphics", "Ljava/util/ArrayList;", "Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;", "heightScaleFactor", "", "lock", "", "previewHeight", "", "previewWidth", "widthScaleFactor", "add", "", "graphic", "clear", "onDraw", "canvas", "Landroid/graphics/Canvas;", "setCameraInfo", "cameraSource", "Lcom/google/mlkit/md/camera/CameraSource;", "translateRect", "Landroid/graphics/RectF;", "rect", "Landroid/graphics/Rect;", "translateX", "x", "translateY", "y", "Graphic", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GraphicOverlay extends View {
    private final ArrayList<Graphic> graphics;
    private float heightScaleFactor;
    private final Object lock;
    private int previewHeight;
    private int previewWidth;
    private float widthScaleFactor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphicOverlay(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.lock = new Object();
        this.widthScaleFactor = 1.0f;
        this.heightScaleFactor = 1.0f;
        this.graphics = new ArrayList<>();
    }

    /* JADX INFO: compiled from: GraphicOverlay.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH&R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/google/mlkit/md/camera/GraphicOverlay$Graphic;", "", "overlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "(Lcom/google/mlkit/md/camera/GraphicOverlay;)V", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "getOverlay", "()Lcom/google/mlkit/md/camera/GraphicOverlay;", "draw", "", "canvas", "Landroid/graphics/Canvas;", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class Graphic {
        private final Context context;
        private final GraphicOverlay overlay;

        public abstract void draw(Canvas canvas);

        protected Graphic(GraphicOverlay overlay) {
            Intrinsics.checkNotNullParameter(overlay, "overlay");
            this.overlay = overlay;
            Context context = overlay.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            this.context = context;
        }

        protected final GraphicOverlay getOverlay() {
            return this.overlay;
        }

        protected final Context getContext() {
            return this.context;
        }
    }

    public final void clear() {
        synchronized (this.lock) {
            this.graphics.clear();
            Unit unit = Unit.INSTANCE;
        }
        postInvalidate();
    }

    public final void add(Graphic graphic) {
        Intrinsics.checkNotNullParameter(graphic, "graphic");
        synchronized (this.lock) {
            this.graphics.add(graphic);
        }
    }

    public final void setCameraInfo(CameraSource cameraSource) {
        Intrinsics.checkNotNullParameter(cameraSource, "cameraSource");
        Size previewSize = cameraSource.getPreviewSize();
        if (previewSize == null) {
            return;
        }
        Utils utils = Utils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        if (utils.isPortraitMode(context)) {
            this.previewWidth = previewSize.getHeight();
            this.previewHeight = previewSize.getWidth();
        } else {
            this.previewWidth = previewSize.getWidth();
            this.previewHeight = previewSize.getHeight();
        }
    }

    public final float translateX(float x) {
        return x * this.widthScaleFactor;
    }

    public final float translateY(float y) {
        return y * this.heightScaleFactor;
    }

    public final RectF translateRect(Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        return new RectF(translateX(rect.left), translateY(rect.top), translateX(rect.right), translateY(rect.bottom));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (this.previewWidth > 0 && this.previewHeight > 0) {
            this.widthScaleFactor = getWidth() / this.previewWidth;
            this.heightScaleFactor = getHeight() / this.previewHeight;
        }
        synchronized (this.lock) {
            Iterator<T> it = this.graphics.iterator();
            while (it.hasNext()) {
                ((Graphic) it.next()).draw(canvas);
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
