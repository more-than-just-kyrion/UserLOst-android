package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DiaAppSelectFlavorBinding implements ViewBinding {
    public final RadioButton radioAvfPreference;
    public final RadioGroup radioExecutionTypePreference;
    public final RadioGroup radioFilesystemFlavorPreference;
    public final RadioButton radioProotPreference;
    public final RadioButton radioQemuPreference;
    private final ScrollView rootView;
    public final TextView textTitleExecutionType;
    public final TextView textTitleFlavorDescription;

    private DiaAppSelectFlavorBinding(ScrollView rootView, RadioButton radioAvfPreference, RadioGroup radioExecutionTypePreference, RadioGroup radioFilesystemFlavorPreference, RadioButton radioProotPreference, RadioButton radioQemuPreference, TextView textTitleExecutionType, TextView textTitleFlavorDescription) {
        this.rootView = rootView;
        this.radioAvfPreference = radioAvfPreference;
        this.radioExecutionTypePreference = radioExecutionTypePreference;
        this.radioFilesystemFlavorPreference = radioFilesystemFlavorPreference;
        this.radioProotPreference = radioProotPreference;
        this.radioQemuPreference = radioQemuPreference;
        this.textTitleExecutionType = textTitleExecutionType;
        this.textTitleFlavorDescription = textTitleFlavorDescription;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static DiaAppSelectFlavorBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DiaAppSelectFlavorBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dia_app_select_flavor, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DiaAppSelectFlavorBinding bind(View rootView) {
        int i = R.id.radio_avf_preference;
        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, i);
        if (radioButton != null) {
            i = R.id.radio_execution_type_preference;
            RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, i);
            if (radioGroup != null) {
                i = R.id.radio_filesystem_flavor_preference;
                RadioGroup radioGroup2 = (RadioGroup) ViewBindings.findChildViewById(rootView, i);
                if (radioGroup2 != null) {
                    i = R.id.radio_proot_preference;
                    RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                    if (radioButton2 != null) {
                        i = R.id.radio_qemu_preference;
                        RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                        if (radioButton3 != null) {
                            i = R.id.text_title_execution_type;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                            if (textView != null) {
                                i = R.id.text_title_flavor_description;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                if (textView2 != null) {
                                    return new DiaAppSelectFlavorBinding((ScrollView) rootView, radioButton, radioGroup, radioGroup2, radioButton2, radioButton3, textView, textView2);
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
