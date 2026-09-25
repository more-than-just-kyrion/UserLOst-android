package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DiaPlaceHolderBinding implements ViewBinding {
    public final LinearLayout layoutUserPromptInsert;
    private final ScrollView rootView;

    private DiaPlaceHolderBinding(ScrollView rootView, LinearLayout layoutUserPromptInsert) {
        this.rootView = rootView;
        this.layoutUserPromptInsert = layoutUserPromptInsert;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static DiaPlaceHolderBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DiaPlaceHolderBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dia_place_holder, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DiaPlaceHolderBinding bind(View rootView) {
        int i = R.id.layout_user_prompt_insert;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
        if (linearLayout != null) {
            return new DiaPlaceHolderBinding((ScrollView) rootView, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
