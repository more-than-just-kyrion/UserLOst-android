package com.google.mlkit.md.camera;

import android.content.Context;
import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import com.google.android.gms.common.images.Size;
import com.google.mlkit.md.Utils;
import com.google.mlkit.md.settings.PreferenceUtils;
import com.iiordanov.pubkeygenerator.PreferenceConstants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.spongycastle.crypto.tls.CipherSuite;
import tech.ula.library.R;

/* JADX INFO: compiled from: CameraSource.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 /2\u00020\u0001:\u0002/0B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u001c\u001a\u00020\nH\u0002J\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u000eJ\u001c\u0010\"\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\n2\n\u0010#\u001a\u00060$R\u00020\nH\u0002J\u001c\u0010%\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\n2\n\u0010#\u001a\u00060$R\u00020\nH\u0002J\u0015\u0010&\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020(H\u0000¢\u0006\u0002\b)J\r\u0010*\u001a\u00020\u001fH\u0000¢\u0006\u0002\b+J\u000e\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00060\u0015R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/google/mlkit/md/camera/CameraSource;", "", "graphicOverlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "(Lcom/google/mlkit/md/camera/GraphicOverlay;)V", "bytesToByteBuffer", "Ljava/util/IdentityHashMap;", "", "Ljava/nio/ByteBuffer;", PreferenceConstants.CAMERA, "Landroid/hardware/Camera;", "context", "Landroid/content/Context;", "frameProcessor", "Lcom/google/mlkit/md/camera/FrameProcessor;", "<set-?>", "Lcom/google/android/gms/common/images/Size;", "previewSize", "getPreviewSize$UserLOstLibrary_UserLOstRelease", "()Lcom/google/android/gms/common/images/Size;", "processingRunnable", "Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;", "processingThread", "Ljava/lang/Thread;", "processorLock", "Ljava/lang/Object;", "rotationDegrees", "", "createCamera", "createPreviewBuffer", "release", "", "setFrameProcessor", "processor", "setPreviewAndPictureSize", "parameters", "Landroid/hardware/Camera$Parameters;", "setRotation", "start", "surfaceHolder", "Landroid/view/SurfaceHolder;", "start$UserLOstLibrary_UserLOstRelease", "stop", "stop$UserLOstLibrary_UserLOstRelease", "updateFlashMode", "flashMode", "", "Companion", "FrameProcessingRunnable", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CameraSource {
    public static final int CAMERA_FACING_BACK = 0;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int DEFAULT_REQUESTED_CAMERA_PREVIEW_HEIGHT = 360;
    private static final int DEFAULT_REQUESTED_CAMERA_PREVIEW_WIDTH = 640;
    private static final int IMAGE_FORMAT = 17;
    private static final int MAX_CAMERA_PREVIEW_WIDTH = 1300;
    private static final int MIN_CAMERA_PREVIEW_WIDTH = 400;
    private static final float REQUESTED_CAMERA_FPS = 30.0f;
    private static final String TAG = "CameraSource";
    private final IdentityHashMap<byte[], ByteBuffer> bytesToByteBuffer;
    private Camera camera;
    private final Context context;
    private FrameProcessor frameProcessor;
    private final GraphicOverlay graphicOverlay;
    private Size previewSize;
    private final FrameProcessingRunnable processingRunnable;
    private Thread processingThread;
    private final Object processorLock;
    private int rotationDegrees;

    public CameraSource(GraphicOverlay graphicOverlay) {
        Intrinsics.checkNotNullParameter(graphicOverlay, "graphicOverlay");
        this.graphicOverlay = graphicOverlay;
        this.processingRunnable = new FrameProcessingRunnable();
        this.processorLock = new Object();
        this.bytesToByteBuffer = new IdentityHashMap<>();
        Context context = graphicOverlay.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        this.context = context;
    }

    /* JADX INFO: renamed from: getPreviewSize$UserLOstLibrary_UserLOstRelease, reason: from getter */
    public final Size getPreviewSize() {
        return this.previewSize;
    }

    public final synchronized void start$UserLOstLibrary_UserLOstRelease(SurfaceHolder surfaceHolder) throws IOException {
        Intrinsics.checkNotNullParameter(surfaceHolder, "surfaceHolder");
        if (this.camera != null) {
            return;
        }
        Camera cameraCreateCamera = createCamera();
        cameraCreateCamera.setPreviewDisplay(surfaceHolder);
        cameraCreateCamera.startPreview();
        this.camera = cameraCreateCamera;
        Thread thread = new Thread(this.processingRunnable);
        this.processingRunnable.setActive$UserLOstLibrary_UserLOstRelease(true);
        thread.start();
        this.processingThread = thread;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001f A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0003, B:7:0x000e, B:10:0x0019, B:11:0x001b, B:13:0x001f, B:14:0x0025, B:18:0x003c, B:17:0x002a, B:19:0x0041, B:9:0x0012), top: B:29:0x0003, inners: #0, #1 }] */
    public final synchronized void stop$UserLOstLibrary_UserLOstRelease() {
        Camera camera;
        this.processingRunnable.setActive$UserLOstLibrary_UserLOstRelease(false);
        Thread thread = this.processingThread;
        if (thread != null) {
            try {
                thread.join();
            } catch (InterruptedException unused) {
                Log.e(TAG, "Frame processing thread interrupted on stop.");
            }
            this.processingThread = null;
            camera = this.camera;
            if (camera != null) {
                camera.stopPreview();
                camera.setPreviewCallbackWithBuffer(null);
                try {
                    camera.setPreviewDisplay(null);
                } catch (Exception e) {
                    Log.e(TAG, "Failed to clear camera preview: " + e);
                }
                camera.release();
                this.camera = null;
            }
            this.bytesToByteBuffer.clear();
        } else {
            camera = this.camera;
            if (camera != null) {
                camera.stopPreview();
                camera.setPreviewCallbackWithBuffer(null);
                camera.setPreviewDisplay(null);
                camera.release();
                this.camera = null;
            }
            this.bytesToByteBuffer.clear();
        }
        throw th;
    }

    public final void release() {
        this.graphicOverlay.clear();
        synchronized (this.processorLock) {
            stop$UserLOstLibrary_UserLOstRelease();
            FrameProcessor frameProcessor = this.frameProcessor;
            if (frameProcessor != null) {
                frameProcessor.stop();
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public final void setFrameProcessor(FrameProcessor processor) {
        Intrinsics.checkNotNullParameter(processor, "processor");
        this.graphicOverlay.clear();
        synchronized (this.processorLock) {
            FrameProcessor frameProcessor = this.frameProcessor;
            if (frameProcessor != null) {
                frameProcessor.stop();
            }
            this.frameProcessor = processor;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void updateFlashMode(String flashMode) {
        Intrinsics.checkNotNullParameter(flashMode, "flashMode");
        Camera camera = this.camera;
        Camera.Parameters parameters = camera != null ? camera.getParameters() : null;
        if (parameters != null) {
            parameters.setFlashMode(flashMode);
        }
        Camera camera2 = this.camera;
        if (camera2 == null) {
            return;
        }
        camera2.setParameters(parameters);
    }

    private final Camera createCamera() throws IOException {
        Camera cameraOpen = Camera.open();
        if (cameraOpen == null) {
            throw new IOException("There is no back-facing camera.");
        }
        Camera.Parameters parameters = cameraOpen.getParameters();
        Intrinsics.checkNotNull(parameters);
        setPreviewAndPictureSize(cameraOpen, parameters);
        setRotation(cameraOpen, parameters);
        int[] iArrSelectPreviewFpsRange = INSTANCE.selectPreviewFpsRange(cameraOpen);
        if (iArrSelectPreviewFpsRange == null) {
            throw new IOException("Could not find suitable preview frames per second range.");
        }
        parameters.setPreviewFpsRange(iArrSelectPreviewFpsRange[0], iArrSelectPreviewFpsRange[1]);
        parameters.setPreviewFormat(17);
        if (parameters.getSupportedFocusModes().contains("continuous-video")) {
            parameters.setFocusMode("continuous-video");
        } else {
            Log.i(TAG, "Camera auto focus is not supported on this device.");
        }
        cameraOpen.setParameters(parameters);
        final FrameProcessingRunnable frameProcessingRunnable = this.processingRunnable;
        cameraOpen.setPreviewCallbackWithBuffer(new Camera.PreviewCallback() { // from class: com.google.mlkit.md.camera.CameraSource$$ExternalSyntheticLambda0
            @Override // android.hardware.Camera.PreviewCallback
            public final void onPreviewFrame(byte[] bArr, Camera camera) {
                frameProcessingRunnable.setNextFrame$UserLOstLibrary_UserLOstRelease(bArr, camera);
            }
        });
        Size size = this.previewSize;
        if (size != null) {
            cameraOpen.addCallbackBuffer(createPreviewBuffer(size));
            cameraOpen.addCallbackBuffer(createPreviewBuffer(size));
            cameraOpen.addCallbackBuffer(createPreviewBuffer(size));
            cameraOpen.addCallbackBuffer(createPreviewBuffer(size));
        }
        return cameraOpen;
    }

    private final void setPreviewAndPictureSize(Camera camera, Camera.Parameters parameters) throws IOException {
        float width;
        int height;
        CameraSizePair userSpecifiedPreviewSize = PreferenceUtils.INSTANCE.getUserSpecifiedPreviewSize(this.context);
        if (userSpecifiedPreviewSize == null) {
            Utils utils = Utils.INSTANCE;
            Context context = this.graphicOverlay.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            if (utils.isPortraitMode(context)) {
                width = this.graphicOverlay.getHeight();
                height = this.graphicOverlay.getWidth();
            } else {
                width = this.graphicOverlay.getWidth();
                height = this.graphicOverlay.getHeight();
            }
            userSpecifiedPreviewSize = INSTANCE.selectSizePair(camera, width / height);
            if (userSpecifiedPreviewSize == null) {
                throw new IOException("Could not find suitable preview size.");
            }
        }
        Size preview = userSpecifiedPreviewSize.getPreview();
        Log.v(TAG, "Camera preview size: " + preview);
        parameters.setPreviewSize(preview.getWidth(), preview.getHeight());
        PreferenceUtils.INSTANCE.saveStringPreference(this.context, R.string.pref_key_rear_camera_preview_size, preview.toString());
        this.previewSize = preview;
        Size picture = userSpecifiedPreviewSize.getPicture();
        if (picture != null) {
            Log.v(TAG, "Camera picture size: " + picture);
            parameters.setPictureSize(picture.getWidth(), picture.getHeight());
            PreferenceUtils.INSTANCE.saveStringPreference(this.context, R.string.pref_key_rear_camera_picture_size, picture.toString());
        }
    }

    private final void setRotation(Camera camera, Camera.Parameters parameters) {
        int i;
        Object systemService = this.context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        int rotation = ((WindowManager) systemService).getDefaultDisplay().getRotation();
        if (rotation == 0) {
            i = 0;
        } else if (rotation == 1) {
            i = 90;
        } else if (rotation == 2) {
            i = CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256;
        } else if (rotation != 3) {
            Log.e(TAG, "Bad device rotation value: " + rotation);
            i = 0;
        } else {
            i = 270;
        }
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(0, cameraInfo);
        int i2 = ((cameraInfo.orientation - i) + 360) % 360;
        this.rotationDegrees = i2;
        camera.setDisplayOrientation(i2);
        parameters.setRotation(i2);
    }

    private final byte[] createPreviewBuffer(Size previewSize) {
        byte[] bArr = new byte[((int) Math.ceil(((((long) previewSize.getHeight()) * ((long) previewSize.getWidth())) * ((long) ImageFormat.getBitsPerPixel(17))) / 8.0d)) + 1];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        if (byteBufferWrap.hasArray()) {
            byte[] bArrArray = byteBufferWrap.array();
            Intrinsics.checkNotNull(bArrArray);
            if (Arrays.equals(bArrArray, bArr)) {
                this.bytesToByteBuffer.put(bArr, byteBufferWrap);
                return bArr;
            }
        }
        throw new IllegalStateException("Failed to create valid buffer for camera source.".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: CameraSource.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\fJ\u001d\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/google/mlkit/md/camera/CameraSource$FrameProcessingRunnable;", "Ljava/lang/Runnable;", "(Lcom/google/mlkit/md/camera/CameraSource;)V", "active", "", "lock", "Ljava/lang/Object;", "pendingFrameData", "Ljava/nio/ByteBuffer;", "run", "", "setActive", "setActive$UserLOstLibrary_UserLOstRelease", "setNextFrame", "data", "", PreferenceConstants.CAMERA, "Landroid/hardware/Camera;", "setNextFrame$UserLOstLibrary_UserLOstRelease", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    final class FrameProcessingRunnable implements Runnable {
        private ByteBuffer pendingFrameData;
        private final Object lock = new Object();
        private boolean active = true;

        public FrameProcessingRunnable() {
        }

        public final void setActive$UserLOstLibrary_UserLOstRelease(boolean active) {
            synchronized (this.lock) {
                this.active = active;
                this.lock.notifyAll();
                Unit unit = Unit.INSTANCE;
            }
        }

        public final void setNextFrame$UserLOstLibrary_UserLOstRelease(byte[] data, Camera camera) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(camera, "camera");
            Object obj = this.lock;
            CameraSource cameraSource = CameraSource.this;
            synchronized (obj) {
                ByteBuffer byteBuffer = this.pendingFrameData;
                if (byteBuffer != null) {
                    camera.addCallbackBuffer(byteBuffer.array());
                    this.pendingFrameData = null;
                }
                if (cameraSource.bytesToByteBuffer.containsKey(data)) {
                    this.pendingFrameData = (ByteBuffer) cameraSource.bytesToByteBuffer.get(data);
                    this.lock.notifyAll();
                    Unit unit = Unit.INSTANCE;
                    return;
                }
                Log.d(CameraSource.TAG, "Skipping frame. Could not find ByteBuffer associated with the image data from the camera.");
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            ByteBuffer byteBuffer;
            Camera camera;
            Camera camera2;
            Camera camera3;
            FrameProcessor frameProcessor;
            while (true) {
                synchronized (this.lock) {
                    while (true) {
                        z = this.active;
                        if (!z || this.pendingFrameData != null) {
                            break;
                        }
                        try {
                            this.lock.wait();
                        } catch (InterruptedException e) {
                            Log.e(CameraSource.TAG, "Frame processing loop terminated.", e);
                            return;
                        }
                    }
                    if (!z) {
                        return;
                    }
                    byteBuffer = this.pendingFrameData;
                    this.pendingFrameData = null;
                    Unit unit = Unit.INSTANCE;
                }
                try {
                    try {
                        Object obj = CameraSource.this.processorLock;
                        CameraSource cameraSource = CameraSource.this;
                        synchronized (obj) {
                            try {
                                Size previewSize = cameraSource.getPreviewSize();
                                Intrinsics.checkNotNull(previewSize);
                                int width = previewSize.getWidth();
                                Size previewSize2 = cameraSource.getPreviewSize();
                                Intrinsics.checkNotNull(previewSize2);
                                FrameMetadata frameMetadata = new FrameMetadata(width, previewSize2.getHeight(), cameraSource.rotationDegrees);
                                if (byteBuffer != null && (frameProcessor = cameraSource.frameProcessor) != null) {
                                    frameProcessor.process(byteBuffer, frameMetadata, cameraSource.graphicOverlay);
                                    Unit unit2 = Unit.INSTANCE;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (byteBuffer != null && (camera3 = CameraSource.this.camera) != null) {
                            camera3.addCallbackBuffer(byteBuffer.array());
                        }
                    } catch (Exception e2) {
                        Log.e(CameraSource.TAG, "Exception thrown from receiver.", e2);
                        if (byteBuffer != null && (camera2 = CameraSource.this.camera) != null) {
                            camera2.addCallbackBuffer(byteBuffer.array());
                        }
                    }
                } catch (Throwable th2) {
                    if (byteBuffer != null && (camera = CameraSource.this.camera) != null) {
                        camera.addCallbackBuffer(byteBuffer.array());
                    }
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: compiled from: CameraSource.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/google/mlkit/md/camera/CameraSource$Companion;", "", "()V", "CAMERA_FACING_BACK", "", "DEFAULT_REQUESTED_CAMERA_PREVIEW_HEIGHT", "DEFAULT_REQUESTED_CAMERA_PREVIEW_WIDTH", "IMAGE_FORMAT", "MAX_CAMERA_PREVIEW_WIDTH", "MIN_CAMERA_PREVIEW_WIDTH", "REQUESTED_CAMERA_FPS", "", "TAG", "", "selectPreviewFpsRange", "", PreferenceConstants.CAMERA, "Landroid/hardware/Camera;", "selectSizePair", "Lcom/google/mlkit/md/camera/CameraSizePair;", "displayAspectRatioInLandscape", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CameraSizePair selectSizePair(Camera camera, float displayAspectRatioInLandscape) {
            List<CameraSizePair> listGenerateValidPreviewSizeList = Utils.INSTANCE.generateValidPreviewSizeList(camera);
            CameraSizePair cameraSizePair = null;
            float f = Float.MAX_VALUE;
            for (CameraSizePair cameraSizePair2 : listGenerateValidPreviewSizeList) {
                Size preview = cameraSizePair2.getPreview();
                if (preview.getWidth() >= 400 && preview.getWidth() <= CameraSource.MAX_CAMERA_PREVIEW_WIDTH) {
                    float fAbs = Math.abs(displayAspectRatioInLandscape - (preview.getWidth() / preview.getHeight()));
                    if (Math.abs(fAbs - f) < 0.01f) {
                        if (cameraSizePair == null || cameraSizePair.getPreview().getWidth() < cameraSizePair2.getPreview().getWidth()) {
                            cameraSizePair = cameraSizePair2;
                        }
                    } else if (fAbs < f) {
                        cameraSizePair = cameraSizePair2;
                        f = fAbs;
                    }
                }
            }
            if (cameraSizePair == null) {
                int i = Integer.MAX_VALUE;
                for (CameraSizePair cameraSizePair3 : listGenerateValidPreviewSizeList) {
                    Size preview2 = cameraSizePair3.getPreview();
                    int iAbs = Math.abs(preview2.getHeight() - 360) + Math.abs(preview2.getWidth() - 640);
                    if (iAbs < i) {
                        cameraSizePair = cameraSizePair3;
                        i = iAbs;
                    }
                }
            }
            return cameraSizePair;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int[] selectPreviewFpsRange(Camera camera) {
            int[] iArr = null;
            int i = Integer.MAX_VALUE;
            for (int[] iArr2 : camera.getParameters().getSupportedPreviewFpsRange()) {
                int iAbs = Math.abs(30000 - iArr2[0]) + Math.abs(30000 - iArr2[1]);
                if (iAbs < i) {
                    iArr = iArr2;
                    i = iAbs;
                }
            }
            return iArr;
        }
    }
}
