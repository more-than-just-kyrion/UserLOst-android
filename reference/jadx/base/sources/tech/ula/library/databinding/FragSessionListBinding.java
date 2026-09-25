package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragSessionListBinding implements ViewBinding {
    public final ListView listSessions;
    private final ConstraintLayout rootView;

    private FragSessionListBinding(ConstraintLayout rootView, ListView listSessions) {
        this.rootView = rootView;
        this.listSessions = listSessions;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragSessionListBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragSessionListBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.frag_session_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragSessionListBinding bind(View rootView) {
        int i = R.id.list_sessions;
        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, i);
        if (listView != null) {
            return new FragSessionListBinding((ConstraintLayout) rootView, listView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
