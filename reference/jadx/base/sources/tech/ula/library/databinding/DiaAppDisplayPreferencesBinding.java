package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DiaAppDisplayPreferencesBinding implements ViewBinding {
    public final CheckBox checkboxLockOrientation;
    public final CheckBox checkboxRememberGraphicalPreferences;
    public final RadioButton landscapeRadioButton;
    public final RadioButton portraitRadioButton;
    public final RadioGroup radioOrientationPreference;
    private final ScrollView rootView;
    public final Spinner scalingFactorSpinner;
    public final TextView textGeometry;
    public final TextView textGeometryValue;
    public final TextView textTitleGraphicalPreferences;
    public final TextView textTitleOrientation;
    public final TextView textTitleScaling;

    private DiaAppDisplayPreferencesBinding(ScrollView rootView, CheckBox checkboxLockOrientation, CheckBox checkboxRememberGraphicalPreferences, RadioButton landscapeRadioButton, RadioButton portraitRadioButton, RadioGroup radioOrientationPreference, Spinner scalingFactorSpinner, TextView textGeometry, TextView textGeometryValue, TextView textTitleGraphicalPreferences, TextView textTitleOrientation, TextView textTitleScaling) {
        this.rootView = rootView;
        this.checkboxLockOrientation = checkboxLockOrientation;
        this.checkboxRememberGraphicalPreferences = checkboxRememberGraphicalPreferences;
        this.landscapeRadioButton = landscapeRadioButton;
        this.portraitRadioButton = portraitRadioButton;
        this.radioOrientationPreference = radioOrientationPreference;
        this.scalingFactorSpinner = scalingFactorSpinner;
        this.textGeometry = textGeometry;
        this.textGeometryValue = textGeometryValue;
        this.textTitleGraphicalPreferences = textTitleGraphicalPreferences;
        this.textTitleOrientation = textTitleOrientation;
        this.textTitleScaling = textTitleScaling;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static DiaAppDisplayPreferencesBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DiaAppDisplayPreferencesBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dia_app_display_preferences, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DiaAppDisplayPreferencesBinding bind(View rootView) {
        int i = R.id.checkbox_lock_orientation;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, i);
        if (checkBox != null) {
            i = R.id.checkbox_remember_graphical_preferences;
            CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(rootView, i);
            if (checkBox2 != null) {
                i = R.id.landscape_radio_button;
                RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                if (radioButton != null) {
                    i = R.id.portrait_radio_button;
                    RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                    if (radioButton2 != null) {
                        i = R.id.radio_orientation_preference;
                        RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, i);
                        if (radioGroup != null) {
                            i = R.id.scaling_factor_spinner;
                            Spinner spinner = (Spinner) ViewBindings.findChildViewById(rootView, i);
                            if (spinner != null) {
                                i = R.id.text_geometry;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                                if (textView != null) {
                                    i = R.id.text_geometry_value;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                    if (textView2 != null) {
                                        i = R.id.text_title_graphical_preferences;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                        if (textView3 != null) {
                                            i = R.id.text_title_orientation;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                            if (textView4 != null) {
                                                i = R.id.text_title_scaling;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                if (textView5 != null) {
                                                    return new DiaAppDisplayPreferencesBinding((ScrollView) rootView, checkBox, checkBox2, radioButton, radioButton2, radioGroup, spinner, textView, textView2, textView3, textView4, textView5);
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
