package com.google.mlkit.md;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Intent;
import android.content.SharedPreferences;
import android.hardware.Camera;
import android.media.ToneGenerator;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import com.google.android.material.chip.Chip;
import com.google.common.base.Objects;
import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import com.google.mlkit.md.barcodedetection.BarcodeProcessor;
import com.google.mlkit.md.camera.CameraSource;
import com.google.mlkit.md.camera.CameraSourcePreview;
import com.google.mlkit.md.camera.GraphicOverlay;
import com.google.mlkit.md.camera.WorkflowModel;
import com.google.mlkit.md.settings.SettingsActivity;
import com.google.mlkit.vision.barcode.common.Barcode;
import java.io.File;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tech.ula.library.R;

/* JADX INFO: compiled from: LiveBarcodeScanningActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\tH\u0016J\u0012\u0010\u001d\u001a\u00020\u001a2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\b\u0010 \u001a\u00020\u001aH\u0014J\u0012\u0010!\u001a\u00020\u001a2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\b\u0010$\u001a\u00020\u001aH\u0014J\b\u0010%\u001a\u00020\u001aH\u0014J\u000e\u0010&\u001a\u00020\u001a2\u0006\u0010'\u001a\u00020(J\u000e\u0010)\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#J\b\u0010*\u001a\u00020\u001aH\u0002J\b\u0010+\u001a\u00020\u001aH\u0002J\b\u0010,\u001a\u00020\u001aH\u0002J\u000e\u0010-\u001a\u00020\u001a2\u0006\u0010.\u001a\u00020/R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/google/mlkit/md/LiveBarcodeScanningActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Landroid/view/View$OnClickListener;", "()V", "cameraSource", "Lcom/google/mlkit/md/camera/CameraSource;", "currentWorkflowState", "Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;", "flashButton", "Landroid/view/View;", "graphicOverlay", "Lcom/google/mlkit/md/camera/GraphicOverlay;", "preview", "Lcom/google/mlkit/md/camera/CameraSourcePreview;", "promptChip", "Lcom/google/android/material/chip/Chip;", "promptChipAnimator", "Landroid/animation/AnimatorSet;", "settingsButton", "workflowModel", "Lcom/google/mlkit/md/camera/WorkflowModel;", "getCameraInstance", "Landroid/hardware/Camera;", "hasFlash", "", "onBackPressed", "", "onClick", "view", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onNewIntent", "intent", "Landroid/content/Intent;", "onPause", "onResume", "sendResult", "code", "", "setPending", "setUpWorkflowModel", "startCameraPreview", "stopCameraPreview", "writeBarcode", OptionalModuleUtils.BARCODE, "", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LiveBarcodeScanningActivity extends AppCompatActivity implements View.OnClickListener {
    private static final String TAG = "LiveBarcodeActivity";
    private CameraSource cameraSource;
    private WorkflowModel.WorkflowState currentWorkflowState;
    private View flashButton;
    private GraphicOverlay graphicOverlay;
    private CameraSourcePreview preview;
    private Chip promptChip;
    private AnimatorSet promptChipAnimator;
    private View settingsButton;
    private WorkflowModel workflowModel;

    /* JADX INFO: compiled from: LiveBarcodeScanningActivity.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkflowModel.WorkflowState.values().length];
            try {
                iArr[WorkflowModel.WorkflowState.DETECTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkflowModel.WorkflowState.CONFIRMING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkflowModel.WorkflowState.SEARCHING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkflowModel.WorkflowState.DETECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkflowModel.WorkflowState.SEARCHED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            setPending(intent);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_live_barcode);
        this.preview = (CameraSourcePreview) findViewById(R.id.camera_preview);
        GraphicOverlay graphicOverlay = (GraphicOverlay) findViewById(R.id.camera_preview_graphic_overlay);
        LiveBarcodeScanningActivity liveBarcodeScanningActivity = this;
        graphicOverlay.setOnClickListener(liveBarcodeScanningActivity);
        Intrinsics.checkNotNull(graphicOverlay);
        this.cameraSource = new CameraSource(graphicOverlay);
        this.graphicOverlay = graphicOverlay;
        this.promptChip = (Chip) findViewById(R.id.bottom_prompt_chip);
        Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(this, R.animator.bottom_prompt_chip_enter);
        Intrinsics.checkNotNull(animatorLoadAnimator, "null cannot be cast to non-null type android.animation.AnimatorSet");
        AnimatorSet animatorSet = (AnimatorSet) animatorLoadAnimator;
        animatorSet.setTarget(this.promptChip);
        this.promptChipAnimator = animatorSet;
        findViewById(R.id.close_button).setOnClickListener(liveBarcodeScanningActivity);
        View viewFindViewById = findViewById(R.id.flash_button);
        viewFindViewById.setOnClickListener(liveBarcodeScanningActivity);
        this.flashButton = viewFindViewById;
        if (!hasFlash()) {
            findViewById(R.id.flash_button).setVisibility(4);
        }
        View viewFindViewById2 = findViewById(R.id.settings_button);
        viewFindViewById2.setOnClickListener(liveBarcodeScanningActivity);
        this.settingsButton = viewFindViewById2;
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
        setPending(intent);
        setUpWorkflowModel();
    }

    public final Camera getCameraInstance() {
        try {
            return Camera.open();
        } catch (Exception unused) {
            return null;
        }
    }

    public final boolean hasFlash() {
        Camera cameraInstance = getCameraInstance();
        if (cameraInstance == null) {
            return false;
        }
        try {
            Camera.Parameters parameters = cameraInstance.getParameters();
            Intrinsics.checkNotNull(parameters);
            if (parameters.getFlashMode() == null) {
                cameraInstance.release();
                return false;
            }
            List<String> supportedFlashModes = parameters.getSupportedFlashModes();
            if (supportedFlashModes == null || supportedFlashModes.isEmpty() || (supportedFlashModes.size() == 1 && Intrinsics.areEqual(supportedFlashModes.get(0), "off"))) {
                cameraInstance.release();
                return false;
            }
            cameraInstance.release();
            return true;
        } catch (RuntimeException unused) {
            cameraInstance.release();
            return false;
        }
    }

    public final void setPending(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        LiveBarcodeScanningActivity liveBarcodeScanningActivity = this;
        SharedPreferences sharedPreferences = liveBarcodeScanningActivity.getSharedPreferences(liveBarcodeScanningActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean("photo_pending", true);
        editorEdit.apply();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        WorkflowModel workflowModel = this.workflowModel;
        if (workflowModel != null) {
            workflowModel.markCameraFrozen();
        }
        View view = this.settingsButton;
        if (view != null) {
            view.setEnabled(true);
        }
        this.currentWorkflowState = WorkflowModel.WorkflowState.NOT_STARTED;
        CameraSource cameraSource = this.cameraSource;
        if (cameraSource != null) {
            GraphicOverlay graphicOverlay = this.graphicOverlay;
            Intrinsics.checkNotNull(graphicOverlay);
            WorkflowModel workflowModel2 = this.workflowModel;
            Intrinsics.checkNotNull(workflowModel2);
            cameraSource.setFrameProcessor(new BarcodeProcessor(graphicOverlay, workflowModel2));
        }
        WorkflowModel workflowModel3 = this.workflowModel;
        if (workflowModel3 != null) {
            workflowModel3.setWorkflowState(WorkflowModel.WorkflowState.DETECTING);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.currentWorkflowState = WorkflowModel.WorkflowState.NOT_STARTED;
        stopCameraPreview();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        CameraSource cameraSource = this.cameraSource;
        if (cameraSource != null) {
            cameraSource.release();
        }
        this.cameraSource = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        sendResult(1);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        int id = view.getId();
        if (id == R.id.close_button) {
            onBackPressed();
            return;
        }
        if (id == R.id.flash_button) {
            View view2 = this.flashButton;
            if (view2 != null) {
                if (view2.isSelected()) {
                    view2.setSelected(false);
                    CameraSource cameraSource = this.cameraSource;
                    if (cameraSource != null) {
                        cameraSource.updateFlashMode("off");
                        return;
                    }
                    return;
                }
                view2.setSelected(true);
                CameraSource cameraSource2 = this.cameraSource;
                Intrinsics.checkNotNull(cameraSource2);
                cameraSource2.updateFlashMode("torch");
                return;
            }
            return;
        }
        if (id == R.id.settings_button) {
            View view3 = this.settingsButton;
            if (view3 != null) {
                view3.setEnabled(false);
            }
            startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
        }
    }

    private final void startCameraPreview() {
        CameraSource cameraSource;
        WorkflowModel workflowModel = this.workflowModel;
        if (workflowModel == null || (cameraSource = this.cameraSource) == null || workflowModel.getIsCameraLive()) {
            return;
        }
        try {
            workflowModel.markCameraLive();
            CameraSourcePreview cameraSourcePreview = this.preview;
            if (cameraSourcePreview != null) {
                cameraSourcePreview.start(cameraSource);
            }
        } catch (IOException e) {
            Log.e(TAG, "Failed to start camera preview!", e);
            cameraSource.release();
            this.cameraSource = null;
        }
    }

    private final void stopCameraPreview() {
        WorkflowModel workflowModel = this.workflowModel;
        if (workflowModel != null && workflowModel.getIsCameraLive()) {
            workflowModel.markCameraFrozen();
            View view = this.flashButton;
            if (view != null) {
                view.setSelected(false);
            }
            CameraSourcePreview cameraSourcePreview = this.preview;
            if (cameraSourcePreview != null) {
                cameraSourcePreview.stop();
            }
        }
    }

    private final void setUpWorkflowModel() {
        MutableLiveData<Barcode> detectedBarcode;
        WorkflowModel workflowModel = (WorkflowModel) ViewModelProviders.of(this).get(WorkflowModel.class);
        this.workflowModel = workflowModel;
        Intrinsics.checkNotNull(workflowModel);
        LiveBarcodeScanningActivity liveBarcodeScanningActivity = this;
        workflowModel.getWorkflowState().observe(liveBarcodeScanningActivity, new Observer() { // from class: com.google.mlkit.md.LiveBarcodeScanningActivity$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiveBarcodeScanningActivity.setUpWorkflowModel$lambda$7(this.f$0, (WorkflowModel.WorkflowState) obj);
            }
        });
        WorkflowModel workflowModel2 = this.workflowModel;
        if (workflowModel2 == null || (detectedBarcode = workflowModel2.getDetectedBarcode()) == null) {
            return;
        }
        detectedBarcode.observe(liveBarcodeScanningActivity, new Observer() { // from class: com.google.mlkit.md.LiveBarcodeScanningActivity$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiveBarcodeScanningActivity.setUpWorkflowModel$lambda$8(this.f$0, (Barcode) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setUpWorkflowModel$lambda$7(LiveBarcodeScanningActivity this$0, WorkflowModel.WorkflowState workflowState) {
        Chip chip;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (workflowState == null || Objects.equal(this$0.currentWorkflowState, workflowState)) {
            return;
        }
        this$0.currentWorkflowState = workflowState;
        Intrinsics.checkNotNull(workflowState);
        Log.d(TAG, "Current workflow state: " + workflowState.name());
        Chip chip2 = this$0.promptChip;
        boolean z = chip2 != null && chip2.getVisibility() == 8;
        int i = WhenMappings.$EnumSwitchMapping$0[workflowState.ordinal()];
        if (i == 1) {
            Chip chip3 = this$0.promptChip;
            if (chip3 != null) {
                chip3.setVisibility(0);
            }
            Chip chip4 = this$0.promptChip;
            if (chip4 != null) {
                chip4.setText(R.string.prompt_point_at_a_barcode);
            }
            this$0.startCameraPreview();
        } else if (i == 2) {
            Chip chip5 = this$0.promptChip;
            if (chip5 != null) {
                chip5.setVisibility(0);
            }
            Chip chip6 = this$0.promptChip;
            if (chip6 != null) {
                chip6.setText(R.string.prompt_move_camera_closer);
            }
            this$0.startCameraPreview();
        } else if (i == 3) {
            Chip chip7 = this$0.promptChip;
            if (chip7 != null) {
                chip7.setVisibility(0);
            }
            Chip chip8 = this$0.promptChip;
            if (chip8 != null) {
                chip8.setText(R.string.prompt_searching);
            }
            this$0.stopCameraPreview();
        } else if (i == 4 || i == 5) {
            Chip chip9 = this$0.promptChip;
            if (chip9 != null) {
                chip9.setVisibility(8);
            }
            this$0.stopCameraPreview();
        } else {
            Chip chip10 = this$0.promptChip;
            if (chip10 != null) {
                chip10.setVisibility(8);
            }
        }
        boolean z2 = z && (chip = this$0.promptChip) != null && chip.getVisibility() == 0;
        AnimatorSet animatorSet = this$0.promptChipAnimator;
        if (animatorSet == null || !z2 || animatorSet.isRunning()) {
            return;
        }
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setUpWorkflowModel$lambda$8(LiveBarcodeScanningActivity this$0, Barcode barcode) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (barcode != null) {
            new ToneGenerator(4, 100).startTone(93, 200);
            String rawValue = barcode.getRawValue();
            if (rawValue == null) {
                this$0.sendResult(1);
                return;
            }
            if (barcode.getFormat() == 1) {
                rawValue = StringsKt.replace$default(rawValue, "]C1", "", false, 4, (Object) null);
            }
            this$0.writeBarcode(rawValue);
            this$0.sendResult(0);
        }
    }

    public final void writeBarcode(String barcode) {
        Intrinsics.checkNotNullParameter(barcode, "barcode");
        FilesKt.writeText$default(new File(new File(getExternalFilesDir(null), "Intents"), "barcode.txt"), String.valueOf(barcode), null, 2, null);
    }

    public final void sendResult(int code) {
        File file = new File(getExternalFilesDir(null), "Intents");
        File file2 = new File(file, ".cameraResponse.txt");
        File file3 = new File(file, "cameraResponse.txt");
        FilesKt.writeText$default(file2, String.valueOf(code), null, 2, null);
        file2.renameTo(file3);
        LiveBarcodeScanningActivity liveBarcodeScanningActivity = this;
        SharedPreferences sharedPreferences = liveBarcodeScanningActivity.getSharedPreferences(liveBarcodeScanningActivity.getPackageName() + "_preferences", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean("photo_pending", false);
        editorEdit.apply();
        finish();
    }
}
