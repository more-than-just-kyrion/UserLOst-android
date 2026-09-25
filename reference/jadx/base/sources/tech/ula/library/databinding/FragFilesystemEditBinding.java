package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragFilesystemEditBinding implements ViewBinding {
    public final LinearLayout advancedOptions;
    public final ToggleButton btnShowAdvancedOptions;
    public final RadioGroup executionTypeGroup;
    public final CheckBox filesystemProtected;
    public final Button importButton;
    public final TextInputEditText inputFilesystemName;
    public final TextInputEditText inputFilesystemPassword;
    public final TextInputEditText inputFilesystemUsername;
    public final TextInputEditText inputFilesystemVncpassword;
    public final RadioButton radioAvf;
    public final RadioButton radioProot;
    public final RadioButton radioQemu;
    private final ScrollView rootView;
    public final Spinner spinnerFilesystemType;
    public final TextView textBackupFilename;
    public final TextView textFilesystemType;
    public final TextInputLayout textInputLayout;
    public final TextInputLayout textInputLayoutFilesystemPassword;
    public final TextInputLayout textInputLayoutFilesystemUsername;
    public final TextInputLayout textInputLayoutFilesystemVncpasswd;
    public final TextView textUseSameSettings;

    private FragFilesystemEditBinding(ScrollView rootView, LinearLayout advancedOptions, ToggleButton btnShowAdvancedOptions, RadioGroup executionTypeGroup, CheckBox filesystemProtected, Button importButton, TextInputEditText inputFilesystemName, TextInputEditText inputFilesystemPassword, TextInputEditText inputFilesystemUsername, TextInputEditText inputFilesystemVncpassword, RadioButton radioAvf, RadioButton radioProot, RadioButton radioQemu, Spinner spinnerFilesystemType, TextView textBackupFilename, TextView textFilesystemType, TextInputLayout textInputLayout, TextInputLayout textInputLayoutFilesystemPassword, TextInputLayout textInputLayoutFilesystemUsername, TextInputLayout textInputLayoutFilesystemVncpasswd, TextView textUseSameSettings) {
        this.rootView = rootView;
        this.advancedOptions = advancedOptions;
        this.btnShowAdvancedOptions = btnShowAdvancedOptions;
        this.executionTypeGroup = executionTypeGroup;
        this.filesystemProtected = filesystemProtected;
        this.importButton = importButton;
        this.inputFilesystemName = inputFilesystemName;
        this.inputFilesystemPassword = inputFilesystemPassword;
        this.inputFilesystemUsername = inputFilesystemUsername;
        this.inputFilesystemVncpassword = inputFilesystemVncpassword;
        this.radioAvf = radioAvf;
        this.radioProot = radioProot;
        this.radioQemu = radioQemu;
        this.spinnerFilesystemType = spinnerFilesystemType;
        this.textBackupFilename = textBackupFilename;
        this.textFilesystemType = textFilesystemType;
        this.textInputLayout = textInputLayout;
        this.textInputLayoutFilesystemPassword = textInputLayoutFilesystemPassword;
        this.textInputLayoutFilesystemUsername = textInputLayoutFilesystemUsername;
        this.textInputLayoutFilesystemVncpasswd = textInputLayoutFilesystemVncpasswd;
        this.textUseSameSettings = textUseSameSettings;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FragFilesystemEditBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragFilesystemEditBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.frag_filesystem_edit, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragFilesystemEditBinding bind(View rootView) {
        int i = R.id.advanced_options;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
        if (linearLayout != null) {
            i = R.id.btn_show_advanced_options;
            ToggleButton toggleButton = (ToggleButton) ViewBindings.findChildViewById(rootView, i);
            if (toggleButton != null) {
                i = R.id.execution_type_group;
                RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, i);
                if (radioGroup != null) {
                    i = R.id.filesystem_protected;
                    CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, i);
                    if (checkBox != null) {
                        i = R.id.import_button;
                        Button button = (Button) ViewBindings.findChildViewById(rootView, i);
                        if (button != null) {
                            i = R.id.input_filesystem_name;
                            TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                            if (textInputEditText != null) {
                                i = R.id.input_filesystem_password;
                                TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                                if (textInputEditText2 != null) {
                                    i = R.id.input_filesystem_username;
                                    TextInputEditText textInputEditText3 = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                                    if (textInputEditText3 != null) {
                                        i = R.id.input_filesystem_vncpassword;
                                        TextInputEditText textInputEditText4 = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                                        if (textInputEditText4 != null) {
                                            i = R.id.radio_avf;
                                            RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                            if (radioButton != null) {
                                                i = R.id.radio_proot;
                                                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                                if (radioButton2 != null) {
                                                    i = R.id.radio_qemu;
                                                    RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                                    if (radioButton3 != null) {
                                                        i = R.id.spinner_filesystem_type;
                                                        Spinner spinner = (Spinner) ViewBindings.findChildViewById(rootView, i);
                                                        if (spinner != null) {
                                                            i = R.id.text_backup_filename;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                            if (textView != null) {
                                                                i = R.id.text_filesystem_type;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                if (textView2 != null) {
                                                                    i = R.id.text_input_layout;
                                                                    TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(rootView, i);
                                                                    if (textInputLayout != null) {
                                                                        i = R.id.text_input_layout_filesystem_password;
                                                                        TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(rootView, i);
                                                                        if (textInputLayout2 != null) {
                                                                            i = R.id.text_input_layout_filesystem_username;
                                                                            TextInputLayout textInputLayout3 = (TextInputLayout) ViewBindings.findChildViewById(rootView, i);
                                                                            if (textInputLayout3 != null) {
                                                                                i = R.id.text_input_layout_filesystem_vncpasswd;
                                                                                TextInputLayout textInputLayout4 = (TextInputLayout) ViewBindings.findChildViewById(rootView, i);
                                                                                if (textInputLayout4 != null) {
                                                                                    i = R.id.text_use_same_settings;
                                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                    if (textView3 != null) {
                                                                                        return new FragFilesystemEditBinding((ScrollView) rootView, linearLayout, toggleButton, radioGroup, checkBox, button, textInputEditText, textInputEditText2, textInputEditText3, textInputEditText4, radioButton, radioButton2, radioButton3, spinner, textView, textView2, textInputLayout, textInputLayout2, textInputLayout3, textInputLayout4, textView3);
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
