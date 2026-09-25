package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragInstallWizardBinding implements ViewBinding {
    public final Button btnAboutPhone;
    public final Button btnConsentCancel;
    public final Button btnConsentContinue;
    public final Button btnDone;
    public final Button btnOpenDevOptions;
    public final Button btnOpenWd;
    public final ProgressBar progressInstall;
    private final ScrollView rootView;
    public final LinearLayout sectionConsent;
    public final LinearLayout sectionDevOptions;
    public final LinearLayout sectionDone;
    public final LinearLayout sectionInstall;
    public final LinearLayout sectionPair;
    public final LinearLayout sectionWirelessDebug;
    public final TextView tvConsentBody;
    public final TextView tvConsentTitle;
    public final TextView tvDoneMessage;
    public final TextView tvInstallStatus;
    public final TextView tvPairStatus;
    public final TextView tvStep4Title;
    public final TextView tvWizardSubtitle;
    public final TextView tvWizardTitle;

    private FragInstallWizardBinding(ScrollView rootView, Button btnAboutPhone, Button btnConsentCancel, Button btnConsentContinue, Button btnDone, Button btnOpenDevOptions, Button btnOpenWd, ProgressBar progressInstall, LinearLayout sectionConsent, LinearLayout sectionDevOptions, LinearLayout sectionDone, LinearLayout sectionInstall, LinearLayout sectionPair, LinearLayout sectionWirelessDebug, TextView tvConsentBody, TextView tvConsentTitle, TextView tvDoneMessage, TextView tvInstallStatus, TextView tvPairStatus, TextView tvStep4Title, TextView tvWizardSubtitle, TextView tvWizardTitle) {
        this.rootView = rootView;
        this.btnAboutPhone = btnAboutPhone;
        this.btnConsentCancel = btnConsentCancel;
        this.btnConsentContinue = btnConsentContinue;
        this.btnDone = btnDone;
        this.btnOpenDevOptions = btnOpenDevOptions;
        this.btnOpenWd = btnOpenWd;
        this.progressInstall = progressInstall;
        this.sectionConsent = sectionConsent;
        this.sectionDevOptions = sectionDevOptions;
        this.sectionDone = sectionDone;
        this.sectionInstall = sectionInstall;
        this.sectionPair = sectionPair;
        this.sectionWirelessDebug = sectionWirelessDebug;
        this.tvConsentBody = tvConsentBody;
        this.tvConsentTitle = tvConsentTitle;
        this.tvDoneMessage = tvDoneMessage;
        this.tvInstallStatus = tvInstallStatus;
        this.tvPairStatus = tvPairStatus;
        this.tvStep4Title = tvStep4Title;
        this.tvWizardSubtitle = tvWizardSubtitle;
        this.tvWizardTitle = tvWizardTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FragInstallWizardBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragInstallWizardBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.frag_install_wizard, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragInstallWizardBinding bind(View rootView) {
        int i = R.id.btn_about_phone;
        Button button = (Button) ViewBindings.findChildViewById(rootView, i);
        if (button != null) {
            i = R.id.btn_consent_cancel;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, i);
            if (button2 != null) {
                i = R.id.btn_consent_continue;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, i);
                if (button3 != null) {
                    i = R.id.btn_done;
                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, i);
                    if (button4 != null) {
                        i = R.id.btn_open_dev_options;
                        Button button5 = (Button) ViewBindings.findChildViewById(rootView, i);
                        if (button5 != null) {
                            i = R.id.btn_open_wd;
                            Button button6 = (Button) ViewBindings.findChildViewById(rootView, i);
                            if (button6 != null) {
                                i = R.id.progress_install;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                if (progressBar != null) {
                                    i = R.id.section_consent;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                    if (linearLayout != null) {
                                        i = R.id.section_dev_options;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                        if (linearLayout2 != null) {
                                            i = R.id.section_done;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                            if (linearLayout3 != null) {
                                                i = R.id.section_install;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                if (linearLayout4 != null) {
                                                    i = R.id.section_pair;
                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                    if (linearLayout5 != null) {
                                                        i = R.id.section_wireless_debug;
                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                        if (linearLayout6 != null) {
                                                            i = R.id.tv_consent_body;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                            if (textView != null) {
                                                                i = R.id.tv_consent_title;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                if (textView2 != null) {
                                                                    i = R.id.tv_done_message;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                    if (textView3 != null) {
                                                                        i = R.id.tv_install_status;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                        if (textView4 != null) {
                                                                            i = R.id.tv_pair_status;
                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                            if (textView5 != null) {
                                                                                i = R.id.tv_step4_title;
                                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                if (textView6 != null) {
                                                                                    i = R.id.tv_wizard_subtitle;
                                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                    if (textView7 != null) {
                                                                                        i = R.id.tv_wizard_title;
                                                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                        if (textView8 != null) {
                                                                                            return new FragInstallWizardBinding((ScrollView) rootView, button, button2, button3, button4, button5, button6, progressBar, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
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
