package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraActivityBinding implements ViewBinding {
    private final RelativeLayout rootView;

    private CameraActivityBinding(RelativeLayout rootView) {
        this.rootView = rootView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static CameraActivityBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static CameraActivityBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.camera_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CameraActivityBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new CameraActivityBinding((RelativeLayout) rootView);
    }
}
