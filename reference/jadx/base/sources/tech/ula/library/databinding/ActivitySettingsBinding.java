package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivitySettingsBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final LinearLayout settingsContainer;

    private ActivitySettingsBinding(LinearLayout rootView, LinearLayout settingsContainer) {
        this.rootView = rootView;
        this.settingsContainer = settingsContainer;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivitySettingsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivitySettingsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_settings, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivitySettingsBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        LinearLayout linearLayout = (LinearLayout) rootView;
        return new ActivitySettingsBinding(linearLayout, linearLayout);
    }
}
