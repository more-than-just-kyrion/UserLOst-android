package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.mlkit.md.camera.CameraSourcePreview;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityLiveBarcodeBinding implements ViewBinding {
    public final CameraSourcePreview cameraPreview;
    private final CoordinatorLayout rootView;

    private ActivityLiveBarcodeBinding(CoordinatorLayout rootView, CameraSourcePreview cameraPreview) {
        this.rootView = rootView;
        this.cameraPreview = cameraPreview;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static ActivityLiveBarcodeBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityLiveBarcodeBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_live_barcode, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityLiveBarcodeBinding bind(View rootView) {
        int i = R.id.camera_preview;
        CameraSourcePreview cameraSourcePreview = (CameraSourcePreview) ViewBindings.findChildViewById(rootView, i);
        if (cameraSourcePreview != null) {
            return new ActivityLiveBarcodeBinding((CoordinatorLayout) rootView, cameraSourcePreview);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
