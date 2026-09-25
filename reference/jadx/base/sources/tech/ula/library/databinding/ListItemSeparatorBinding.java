package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ListItemSeparatorBinding implements ViewBinding {
    public final View listItemSeparatorLeft;
    public final View listItemSeparatorRight;
    public final TextView listItemSeparatorText;
    private final ConstraintLayout rootView;

    private ListItemSeparatorBinding(ConstraintLayout rootView, View listItemSeparatorLeft, View listItemSeparatorRight, TextView listItemSeparatorText) {
        this.rootView = rootView;
        this.listItemSeparatorLeft = listItemSeparatorLeft;
        this.listItemSeparatorRight = listItemSeparatorRight;
        this.listItemSeparatorText = listItemSeparatorText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ListItemSeparatorBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ListItemSeparatorBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.list_item_separator, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ListItemSeparatorBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = R.id.list_item_separator_left;
        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, i);
        if (viewFindChildViewById2 != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = R.id.list_item_separator_right))) != null) {
            i = R.id.list_item_separator_text;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                return new ListItemSeparatorBinding((ConstraintLayout) rootView, viewFindChildViewById2, viewFindChildViewById, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
