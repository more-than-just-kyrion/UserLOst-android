package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DiaAppSelectClientBinding implements ViewBinding {
    public final CheckBox checkboxMicSupport;
    public final CheckBox checkboxRememberServiceTypePreferences;
    public final CheckBox checkboxShareStorage;
    public final CheckBox checkboxSoundSupport;
    public final CheckBox checkboxUseAllCores;
    public final RadioGroup radioAppsServiceTypePreference;
    private final ScrollView rootView;
    public final SeekBar seekbarVmMemory;
    public final RadioButton sshRadioButton;
    public final TextView textTitleClientDescription;
    public final TextView textVmMemoryLabel;
    public final RadioButton vncRadioButton;

    private DiaAppSelectClientBinding(ScrollView rootView, CheckBox checkboxMicSupport, CheckBox checkboxRememberServiceTypePreferences, CheckBox checkboxShareStorage, CheckBox checkboxSoundSupport, CheckBox checkboxUseAllCores, RadioGroup radioAppsServiceTypePreference, SeekBar seekbarVmMemory, RadioButton sshRadioButton, TextView textTitleClientDescription, TextView textVmMemoryLabel, RadioButton vncRadioButton) {
        this.rootView = rootView;
        this.checkboxMicSupport = checkboxMicSupport;
        this.checkboxRememberServiceTypePreferences = checkboxRememberServiceTypePreferences;
        this.checkboxShareStorage = checkboxShareStorage;
        this.checkboxSoundSupport = checkboxSoundSupport;
        this.checkboxUseAllCores = checkboxUseAllCores;
        this.radioAppsServiceTypePreference = radioAppsServiceTypePreference;
        this.seekbarVmMemory = seekbarVmMemory;
        this.sshRadioButton = sshRadioButton;
        this.textTitleClientDescription = textTitleClientDescription;
        this.textVmMemoryLabel = textVmMemoryLabel;
        this.vncRadioButton = vncRadioButton;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static DiaAppSelectClientBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DiaAppSelectClientBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dia_app_select_client, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DiaAppSelectClientBinding bind(View rootView) {
        int i = R.id.checkbox_mic_support;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, i);
        if (checkBox != null) {
            i = R.id.checkbox_remember_service_type_preferences;
            CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(rootView, i);
            if (checkBox2 != null) {
                i = R.id.checkbox_share_storage;
                CheckBox checkBox3 = (CheckBox) ViewBindings.findChildViewById(rootView, i);
                if (checkBox3 != null) {
                    i = R.id.checkbox_sound_support;
                    CheckBox checkBox4 = (CheckBox) ViewBindings.findChildViewById(rootView, i);
                    if (checkBox4 != null) {
                        i = R.id.checkbox_use_all_cores;
                        CheckBox checkBox5 = (CheckBox) ViewBindings.findChildViewById(rootView, i);
                        if (checkBox5 != null) {
                            i = R.id.radio_apps_service_type_preference;
                            RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, i);
                            if (radioGroup != null) {
                                i = R.id.seekbar_vm_memory;
                                SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(rootView, i);
                                if (seekBar != null) {
                                    i = R.id.ssh_radio_button;
                                    RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                    if (radioButton != null) {
                                        i = R.id.text_title_client_description;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                                        if (textView != null) {
                                            i = R.id.text_vm_memory_label;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                            if (textView2 != null) {
                                                i = R.id.vnc_radio_button;
                                                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                                if (radioButton2 != null) {
                                                    return new DiaAppSelectClientBinding((ScrollView) rootView, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, radioGroup, seekBar, radioButton, textView, textView2, radioButton2);
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
