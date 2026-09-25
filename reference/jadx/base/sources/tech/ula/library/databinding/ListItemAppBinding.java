package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ListItemAppBinding implements ViewBinding {
    public final ListItemSeparatorBinding appListSeparator;
    public final ImageView appsIcon;
    public final TextView appsName;
    public final ConstraintLayout layoutAppDetails;
    private final ConstraintLayout rootView;

    private ListItemAppBinding(ConstraintLayout rootView, ListItemSeparatorBinding appListSeparator, ImageView appsIcon, TextView appsName, ConstraintLayout layoutAppDetails) {
        this.rootView = rootView;
        this.appListSeparator = appListSeparator;
        this.appsIcon = appsIcon;
        this.appsName = appsName;
        this.layoutAppDetails = layoutAppDetails;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ListItemAppBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ListItemAppBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.list_item_app, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ListItemAppBinding bind(View rootView) {
        int i = R.id.app_list_separator;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, i);
        if (viewFindChildViewById != null) {
            ListItemSeparatorBinding listItemSeparatorBindingBind = ListItemSeparatorBinding.bind(viewFindChildViewById);
            i = R.id.apps_icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView != null) {
                i = R.id.apps_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView != null) {
                    i = R.id.layout_app_details;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                    if (constraintLayout != null) {
                        return new ListItemAppBinding((ConstraintLayout) rootView, listItemSeparatorBindingBind, imageView, textView, constraintLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
