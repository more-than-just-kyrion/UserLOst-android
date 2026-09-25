package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.chip.Chip;
import com.google.mlkit.md.camera.GraphicOverlay;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraPreviewOverlayBinding implements ViewBinding {
    public final Chip bottomPromptChip;
    public final GraphicOverlay cameraPreviewGraphicOverlay;
    private final View rootView;
    public final ProgressBar searchProgressBar;
    public final FrameLayout staticOverlayContainer;

    private CameraPreviewOverlayBinding(View rootView, Chip bottomPromptChip, GraphicOverlay cameraPreviewGraphicOverlay, ProgressBar searchProgressBar, FrameLayout staticOverlayContainer) {
        this.rootView = rootView;
        this.bottomPromptChip = bottomPromptChip;
        this.cameraPreviewGraphicOverlay = cameraPreviewGraphicOverlay;
        this.searchProgressBar = searchProgressBar;
        this.staticOverlayContainer = staticOverlayContainer;
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    public static CameraPreviewOverlayBinding inflate(LayoutInflater inflater, ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.camera_preview_overlay, parent);
        return bind(parent);
    }

    public static CameraPreviewOverlayBinding bind(View rootView) {
        int i = R.id.bottom_prompt_chip;
        Chip chip = (Chip) ViewBindings.findChildViewById(rootView, i);
        if (chip != null) {
            i = R.id.camera_preview_graphic_overlay;
            GraphicOverlay graphicOverlay = (GraphicOverlay) ViewBindings.findChildViewById(rootView, i);
            if (graphicOverlay != null) {
                i = R.id.search_progress_bar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                if (progressBar != null) {
                    i = R.id.static_overlay_container;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, i);
                    if (frameLayout != null) {
                        return new CameraPreviewOverlayBinding(rootView, chip, graphicOverlay, progressBar, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
