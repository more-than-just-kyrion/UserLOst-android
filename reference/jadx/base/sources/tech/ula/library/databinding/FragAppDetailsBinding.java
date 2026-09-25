package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragAppDetailsBinding implements ViewBinding {
    public final TextView appsDescription;
    public final ImageView appsIcon;
    public final RadioGroup appsServiceTypePreferences;
    public final RadioButton appsSshPreference;
    public final TextView appsTitle;
    public final RadioButton appsVncPreference;
    public final RadioButton appsXsdlPreference;
    public final CheckBox checkboxAutoStart;
    private final ScrollView rootView;
    public final TextView textDescribeState;
    public final TextView textXsdlVersionSupportedDescription;

    private FragAppDetailsBinding(ScrollView rootView, TextView appsDescription, ImageView appsIcon, RadioGroup appsServiceTypePreferences, RadioButton appsSshPreference, TextView appsTitle, RadioButton appsVncPreference, RadioButton appsXsdlPreference, CheckBox checkboxAutoStart, TextView textDescribeState, TextView textXsdlVersionSupportedDescription) {
        this.rootView = rootView;
        this.appsDescription = appsDescription;
        this.appsIcon = appsIcon;
        this.appsServiceTypePreferences = appsServiceTypePreferences;
        this.appsSshPreference = appsSshPreference;
        this.appsTitle = appsTitle;
        this.appsVncPreference = appsVncPreference;
        this.appsXsdlPreference = appsXsdlPreference;
        this.checkboxAutoStart = checkboxAutoStart;
        this.textDescribeState = textDescribeState;
        this.textXsdlVersionSupportedDescription = textXsdlVersionSupportedDescription;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FragAppDetailsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragAppDetailsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.frag_app_details, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragAppDetailsBinding bind(View rootView) {
        int i = R.id.apps_description;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
        if (textView != null) {
            i = R.id.apps_icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView != null) {
                i = R.id.apps_service_type_preferences;
                RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, i);
                if (radioGroup != null) {
                    i = R.id.apps_ssh_preference;
                    RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                    if (radioButton != null) {
                        i = R.id.apps_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView2 != null) {
                            i = R.id.apps_vnc_preference;
                            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                            if (radioButton2 != null) {
                                i = R.id.apps_xsdl_preference;
                                RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                if (radioButton3 != null) {
                                    i = R.id.checkbox_auto_start;
                                    CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, i);
                                    if (checkBox != null) {
                                        i = R.id.text_describe_state;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                        if (textView3 != null) {
                                            i = R.id.text_xsdl_version_supported_description;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                            if (textView4 != null) {
                                                return new FragAppDetailsBinding((ScrollView) rootView, textView, imageView, radioGroup, radioButton, textView2, radioButton2, radioButton3, checkBox, textView3, textView4);
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
