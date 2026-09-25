package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityMainBinding implements ViewBinding {
    public final BottomNavigationView bottomNavView;
    public final ConstraintLayout layoutProgress;
    public final ProgressBar progressBarSessionList;
    private final ConstraintLayout rootView;
    public final TextView textSessionListProgressDetails;
    public final TextView textSessionListProgressStep;
    public final Toolbar toolbar;

    private ActivityMainBinding(ConstraintLayout rootView, BottomNavigationView bottomNavView, ConstraintLayout layoutProgress, ProgressBar progressBarSessionList, TextView textSessionListProgressDetails, TextView textSessionListProgressStep, Toolbar toolbar) {
        this.rootView = rootView;
        this.bottomNavView = bottomNavView;
        this.layoutProgress = layoutProgress;
        this.progressBarSessionList = progressBarSessionList;
        this.textSessionListProgressDetails = textSessionListProgressDetails;
        this.textSessionListProgressStep = textSessionListProgressStep;
        this.toolbar = toolbar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMainBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityMainBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_main, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityMainBinding bind(View rootView) {
        int i = R.id.bottom_nav_view;
        BottomNavigationView bottomNavigationView = (BottomNavigationView) ViewBindings.findChildViewById(rootView, i);
        if (bottomNavigationView != null) {
            i = R.id.layout_progress;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null) {
                i = R.id.progress_bar_session_list;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                if (progressBar != null) {
                    i = R.id.text_session_list_progress_details;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView != null) {
                        i = R.id.text_session_list_progress_step;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView2 != null) {
                            i = R.id.toolbar;
                            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(rootView, i);
                            if (toolbar != null) {
                                return new ActivityMainBinding((ConstraintLayout) rootView, bottomNavigationView, constraintLayout, progressBar, textView, textView2, toolbar);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
