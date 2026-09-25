package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragHelpBinding implements ViewBinding {
    public final FloatingActionButton githubLogo;
    public final TextView githubMessage;
    public final LinearLayout layoutTerminology;
    public final LinearLayout listSupportedServices;
    private final ScrollView rootView;
    public final TextView textSupportedServices;
    public final FloatingActionButton userlandLogo;
    public final TextView welcomeText;

    private FragHelpBinding(ScrollView rootView, FloatingActionButton githubLogo, TextView githubMessage, LinearLayout layoutTerminology, LinearLayout listSupportedServices, TextView textSupportedServices, FloatingActionButton userlandLogo, TextView welcomeText) {
        this.rootView = rootView;
        this.githubLogo = githubLogo;
        this.githubMessage = githubMessage;
        this.layoutTerminology = layoutTerminology;
        this.listSupportedServices = listSupportedServices;
        this.textSupportedServices = textSupportedServices;
        this.userlandLogo = userlandLogo;
        this.welcomeText = welcomeText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FragHelpBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragHelpBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.frag_help, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragHelpBinding bind(View rootView) {
        int i = R.id.github_logo;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(rootView, i);
        if (floatingActionButton != null) {
            i = R.id.github_message;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                i = R.id.layout_terminology;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                if (linearLayout != null) {
                    i = R.id.list_supported_services;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                    if (linearLayout2 != null) {
                        i = R.id.text_supported_services;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView2 != null) {
                            i = R.id.userland_logo;
                            FloatingActionButton floatingActionButton2 = (FloatingActionButton) ViewBindings.findChildViewById(rootView, i);
                            if (floatingActionButton2 != null) {
                                i = R.id.welcome_text;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                if (textView3 != null) {
                                    return new FragHelpBinding((ScrollView) rootView, floatingActionButton, textView, linearLayout, linearLayout2, textView2, floatingActionButton2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
