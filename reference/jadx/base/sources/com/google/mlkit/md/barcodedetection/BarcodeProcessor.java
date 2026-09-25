package com.google.mlkit.md.barcodedetection;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.md.InputInfo;
import com.google.mlkit.md.camera.CameraReticleAnimator;
import com.google.mlkit.md.camera.FrameProcessorBase;
import com.google.mlkit.md.camera.GraphicOverlay;
import com.google.mlkit.md.camera.WorkflowModel;
import com.google.mlkit.md.settings.PreferenceUtils;
import com.google.mlkit.vision.barcode.BarcodeScanner;
import com.google.mlkit.vision.barcode.BarcodeScanning;
import com.google.mlkit.vision.barcode.common.Barcode;
import com.google.mlkit.vision.common.InputImage;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BarcodeProcessor.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001e2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J\u001c\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\u0014\u0010\u0014\u001a\u00020\u00152\n\u0010\u0016\u001a\u00060\u0017j\u0002`\u0018H\u0014J&\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0015J\b\u0010\u001d\u001a\u00020\u0015H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/google/mlkit/md/barcodedetection/BarcodeProcessor;", "Lcom/google/mlkit/md/camera/FrameProcessorBase;", "", "Lcom/google/mlkit/vision/barcode/common/Barcode;", "graphicOverlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "workflowModel", "Lcom/google/mlkit/md/camera/WorkflowModel;", "(Lcom/google/mlkit/md/camera/GraphicOverlay;Lcom/google/mlkit/md/camera/WorkflowModel;)V", "cameraReticleAnimator", "Lcom/google/mlkit/md/camera/CameraReticleAnimator;", "scanner", "Lcom/google/mlkit/vision/barcode/BarcodeScanner;", "createLoadingAnimator", "Landroid/animation/ValueAnimator;", OptionalModuleUtils.BARCODE, "detectInImage", "Lcom/google/android/gms/tasks/Task;", "image", "Lcom/google/mlkit/vision/common/InputImage;", "onFailure", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "inputInfo", "Lcom/google/mlkit/md/InputInfo;", "results", "stop", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BarcodeProcessor extends FrameProcessorBase<List<? extends Barcode>> {
    private static final String TAG = "BarcodeProcessor";
    private final CameraReticleAnimator cameraReticleAnimator;
    private final BarcodeScanner scanner;
    private final WorkflowModel workflowModel;

    public BarcodeProcessor(GraphicOverlay graphicOverlay, WorkflowModel workflowModel) {
        Intrinsics.checkNotNullParameter(graphicOverlay, "graphicOverlay");
        Intrinsics.checkNotNullParameter(workflowModel, "workflowModel");
        this.workflowModel = workflowModel;
        BarcodeScanner client = BarcodeScanning.getClient();
        Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
        this.scanner = client;
        this.cameraReticleAnimator = new CameraReticleAnimator(graphicOverlay);
    }

    @Override // com.google.mlkit.md.camera.FrameProcessorBase
    protected Task<List<? extends Barcode>> detectInImage(InputImage image) {
        Intrinsics.checkNotNullParameter(image, "image");
        Task<List<Barcode>> taskProcess = this.scanner.process(image);
        Intrinsics.checkNotNullExpressionValue(taskProcess, "process(...)");
        return taskProcess;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.mlkit.md.camera.FrameProcessorBase
    public void onSuccess(InputInfo inputInfo, List<? extends Barcode> results, GraphicOverlay graphicOverlay) {
        Object next;
        boolean zContains;
        Intrinsics.checkNotNullParameter(inputInfo, "inputInfo");
        Intrinsics.checkNotNullParameter(results, "results");
        Intrinsics.checkNotNullParameter(graphicOverlay, "graphicOverlay");
        if (this.workflowModel.getIsCameraLive()) {
            Log.d(TAG, "Barcode result size: " + results.size());
            Iterator<T> it = results.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Rect boundingBox = ((Barcode) next).getBoundingBox();
                if (boundingBox == null) {
                    zContains = false;
                } else {
                    Intrinsics.checkNotNull(boundingBox);
                    zContains = graphicOverlay.translateRect(boundingBox).contains(graphicOverlay.getWidth() / 2.0f, graphicOverlay.getHeight() / 2.0f);
                }
            } while (!zContains);
            Barcode barcode = (Barcode) next;
            graphicOverlay.clear();
            if (barcode == null) {
                this.cameraReticleAnimator.start();
                graphicOverlay.add(new BarcodeReticleGraphic(graphicOverlay, this.cameraReticleAnimator));
                this.workflowModel.setWorkflowState(WorkflowModel.WorkflowState.DETECTING);
            } else {
                this.cameraReticleAnimator.cancel();
                if (PreferenceUtils.INSTANCE.getProgressToMeetBarcodeSizeRequirement(graphicOverlay, barcode) < 1.0f) {
                    graphicOverlay.add(new BarcodeConfirmingGraphic(graphicOverlay, barcode));
                    this.workflowModel.setWorkflowState(WorkflowModel.WorkflowState.CONFIRMING);
                } else {
                    PreferenceUtils preferenceUtils = PreferenceUtils.INSTANCE;
                    Context context = graphicOverlay.getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                    if (preferenceUtils.shouldDelayLoadingBarcodeResult(context)) {
                        ValueAnimator valueAnimatorCreateLoadingAnimator = createLoadingAnimator(graphicOverlay, barcode);
                        valueAnimatorCreateLoadingAnimator.start();
                        graphicOverlay.add(new BarcodeLoadingGraphic(graphicOverlay, valueAnimatorCreateLoadingAnimator));
                        this.workflowModel.setWorkflowState(WorkflowModel.WorkflowState.SEARCHING);
                    } else {
                        this.workflowModel.setWorkflowState(WorkflowModel.WorkflowState.DETECTED);
                        this.workflowModel.getDetectedBarcode().setValue(barcode);
                    }
                }
            }
            graphicOverlay.invalidate();
        }
    }

    private final ValueAnimator createLoadingAnimator(final GraphicOverlay graphicOverlay, final Barcode barcode) {
        final ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.1f);
        valueAnimatorOfFloat.setDuration(2000L);
        final float f = 1.1f;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.mlkit.md.barcodedetection.BarcodeProcessor$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BarcodeProcessor.createLoadingAnimator$lambda$2$lambda$1(valueAnimatorOfFloat, f, graphicOverlay, this, barcode, valueAnimator);
            }
        });
        Intrinsics.checkNotNullExpressionValue(valueAnimatorOfFloat, "apply(...)");
        return valueAnimatorOfFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createLoadingAnimator$lambda$2$lambda$1(ValueAnimator valueAnimator, float f, GraphicOverlay graphicOverlay, BarcodeProcessor this$0, Barcode barcode, ValueAnimator it) {
        Intrinsics.checkNotNullParameter(graphicOverlay, "$graphicOverlay");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(barcode, "$barcode");
        Intrinsics.checkNotNullParameter(it, "it");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        if (Float.compare(((Float) animatedValue).floatValue(), f) >= 0) {
            graphicOverlay.clear();
            this$0.workflowModel.setWorkflowState(WorkflowModel.WorkflowState.SEARCHED);
            this$0.workflowModel.getDetectedBarcode().setValue(barcode);
            return;
        }
        graphicOverlay.invalidate();
    }

    @Override // com.google.mlkit.md.camera.FrameProcessorBase
    protected void onFailure(Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        Log.e(TAG, "Barcode detection failed!", e);
    }

    @Override // com.google.mlkit.md.camera.FrameProcessorBase, com.google.mlkit.md.camera.FrameProcessor
    public void stop() {
        super.stop();
        try {
            this.scanner.close();
        } catch (IOException e) {
            Log.e(TAG, "Failed to close barcode detector!", e);
        }
    }
}
