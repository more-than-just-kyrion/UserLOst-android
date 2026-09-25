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
public final class ListItemSessionBinding implements ViewBinding {
    public final ImageView imageListItemArrow;
    public final ImageView imageListItemFilesystemIcon;
    public final ConstraintLayout layoutServiceType;
    private final ConstraintLayout rootView;
    public final TextView textListItemFilesystemName;
    public final TextView textListItemServiceType;
    public final TextView textListItemSessionName;

    private ListItemSessionBinding(ConstraintLayout rootView, ImageView imageListItemArrow, ImageView imageListItemFilesystemIcon, ConstraintLayout layoutServiceType, TextView textListItemFilesystemName, TextView textListItemServiceType, TextView textListItemSessionName) {
        this.rootView = rootView;
        this.imageListItemArrow = imageListItemArrow;
        this.imageListItemFilesystemIcon = imageListItemFilesystemIcon;
        this.layoutServiceType = layoutServiceType;
        this.textListItemFilesystemName = textListItemFilesystemName;
        this.textListItemServiceType = textListItemServiceType;
        this.textListItemSessionName = textListItemSessionName;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ListItemSessionBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ListItemSessionBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.list_item_session, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ListItemSessionBinding bind(View rootView) {
        int i = R.id.image_list_item_arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = R.id.image_list_item_filesystem_icon;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView2 != null) {
                i = R.id.layout_service_type;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                if (constraintLayout != null) {
                    i = R.id.text_list_item_filesystem_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView != null) {
                        i = R.id.text_list_item_service_type;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView2 != null) {
                            i = R.id.text_list_item_session_name;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                            if (textView3 != null) {
                                return new ListItemSessionBinding((ConstraintLayout) rootView, imageView, imageView2, constraintLayout, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
