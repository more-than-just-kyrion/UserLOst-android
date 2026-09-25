package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class TopActionBarInLiveCameraBinding implements ViewBinding {
    public final ImageView closeButton;
    public final ImageView flashButton;
    private final RelativeLayout rootView;
    public final ImageView settingsButton;

    private TopActionBarInLiveCameraBinding(RelativeLayout rootView, ImageView closeButton, ImageView flashButton, ImageView settingsButton) {
        this.rootView = rootView;
        this.closeButton = closeButton;
        this.flashButton = flashButton;
        this.settingsButton = settingsButton;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static TopActionBarInLiveCameraBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static TopActionBarInLiveCameraBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.top_action_bar_in_live_camera, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static TopActionBarInLiveCameraBinding bind(View rootView) {
        int i = R.id.close_button;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = R.id.flash_button;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView2 != null) {
                i = R.id.settings_button;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView3 != null) {
                    return new TopActionBarInLiveCameraBinding((RelativeLayout) rootView, imageView, imageView2, imageView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
