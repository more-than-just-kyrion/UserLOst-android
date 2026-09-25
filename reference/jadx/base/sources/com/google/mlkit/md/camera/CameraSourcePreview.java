package com.google.mlkit.md.camera;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.images.Size;
import com.google.mlkit.md.Utils;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;

/* JADX INFO: compiled from: CameraSourcePreview.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001e\u001fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0012\u001a\u00020\u0013H\u0014J0\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0017H\u0014J\u000e\u0010\u001b\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u001c\u001a\u00020\u0013H\u0002J\u0006\u0010\u001d\u001a\u00020\u0013R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/google/mlkit/md/camera/CameraSourcePreview;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "cameraPreviewSize", "Lcom/google/android/gms/common/images/Size;", "cameraSource", "Lcom/google/mlkit/md/camera/CameraSource;", "graphicOverlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "startRequested", "", "surfaceAvailable", "surfaceView", "Landroid/view/SurfaceView;", "onFinishInflate", "", "onLayout", "changed", "left", "", "top", "right", "bottom", "start", "startIfReady", "stop", "Companion", "SurfaceCallback", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CameraSourcePreview extends FrameLayout {
    private static final String TAG = "CameraSourcePreview";
    private Size cameraPreviewSize;
    private CameraSource cameraSource;
    private GraphicOverlay graphicOverlay;
    private boolean startRequested;
    private boolean surfaceAvailable;
    private final SurfaceView surfaceView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraSourcePreview(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        SurfaceView surfaceView = new SurfaceView(context);
        surfaceView.getHolder().addCallback(new SurfaceCallback());
        addView(surfaceView);
        this.surfaceView = surfaceView;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.graphicOverlay = (GraphicOverlay) findViewById(R.id.camera_preview_graphic_overlay);
    }

    public final void start(CameraSource cameraSource) throws IOException {
        Intrinsics.checkNotNullParameter(cameraSource, "cameraSource");
        this.cameraSource = cameraSource;
        this.startRequested = true;
        startIfReady();
    }

    public final void stop() {
        CameraSource cameraSource = this.cameraSource;
        if (cameraSource != null) {
            cameraSource.stop$UserLOstLibrary_UserLOstRelease();
            this.cameraSource = null;
            this.startRequested = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startIfReady() throws IOException {
        if (this.startRequested && this.surfaceAvailable) {
            CameraSource cameraSource = this.cameraSource;
            if (cameraSource != null) {
                SurfaceHolder holder = this.surfaceView.getHolder();
                Intrinsics.checkNotNullExpressionValue(holder, "getHolder(...)");
                cameraSource.start$UserLOstLibrary_UserLOstRelease(holder);
            }
            requestLayout();
            GraphicOverlay graphicOverlay = this.graphicOverlay;
            if (graphicOverlay != null) {
                CameraSource cameraSource2 = this.cameraSource;
                if (cameraSource2 != null) {
                    graphicOverlay.setCameraInfo(cameraSource2);
                }
                graphicOverlay.clear();
            }
            this.startRequested = false;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        float f;
        float width;
        int height;
        Size previewSize;
        int i = right - left;
        int i2 = bottom - top;
        CameraSource cameraSource = this.cameraSource;
        if (cameraSource != null && (previewSize = cameraSource.getPreviewSize()) != null) {
            this.cameraPreviewSize = previewSize;
        }
        Size size = this.cameraPreviewSize;
        if (size != null) {
            Utils utils = Utils.INSTANCE;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            if (utils.isPortraitMode(context)) {
                width = size.getHeight();
                height = size.getWidth();
            } else {
                width = size.getWidth();
                height = size.getHeight();
            }
            f = width / height;
        } else {
            f = i / i2;
        }
        int i3 = (int) (i / f);
        if (i3 <= i2) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                getChildAt(i4).layout(0, 0, i, i3);
            }
        } else {
            int i5 = (i3 - i2) / 2;
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt = getChildAt(i6);
                if (childAt.getId() == R.id.static_overlay_container) {
                    childAt.layout(0, 0, i, i2);
                } else {
                    childAt.layout(0, -i5, i, i2 + i5);
                }
            }
        }
        try {
            startIfReady();
        } catch (IOException e) {
            Log.e(TAG, "Could not start camera source.", e);
        }
    }

    /* JADX INFO: compiled from: CameraSourcePreview.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006H\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006H\u0016¨\u0006\u000e"}, d2 = {"Lcom/google/mlkit/md/camera/CameraSourcePreview$SurfaceCallback;", "Landroid/view/SurfaceHolder$Callback;", "(Lcom/google/mlkit/md/camera/CameraSourcePreview;)V", "surfaceChanged", "", "holder", "Landroid/view/SurfaceHolder;", "format", "", "width", "height", "surfaceCreated", "surface", "surfaceDestroyed", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class SurfaceCallback implements SurfaceHolder.Callback {
        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
            Intrinsics.checkNotNullParameter(holder, "holder");
        }

        public SurfaceCallback() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surface) {
            Intrinsics.checkNotNullParameter(surface, "surface");
            CameraSourcePreview.this.surfaceAvailable = true;
            try {
                CameraSourcePreview.this.startIfReady();
            } catch (IOException e) {
                Log.e(CameraSourcePreview.TAG, "Could not start camera source.", e);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surface) {
            Intrinsics.checkNotNullParameter(surface, "surface");
            CameraSourcePreview.this.surfaceAvailable = false;
        }
    }
}
