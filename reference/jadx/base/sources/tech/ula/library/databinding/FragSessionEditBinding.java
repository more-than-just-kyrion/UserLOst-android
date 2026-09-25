package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragSessionEditBinding implements ViewBinding {
    private final ScrollView rootView;
    public final CheckBox sessionProtected;
    public final Spinner spinnerFilesystemList;
    public final Spinner spinnerSessionServiceType;
    public final TextView textFilesystem;
    public final TextInputLayout textInputLayoutSessionName;
    public final TextInputLayout textInputLayoutUsername;
    public final TextInputEditText textInputSessionName;
    public final TextInputEditText textInputUsername;
    public final TextView textSessionServiceType;

    private FragSessionEditBinding(ScrollView rootView, CheckBox sessionProtected, Spinner spinnerFilesystemList, Spinner spinnerSessionServiceType, TextView textFilesystem, TextInputLayout textInputLayoutSessionName, TextInputLayout textInputLayoutUsername, TextInputEditText textInputSessionName, TextInputEditText textInputUsername, TextView textSessionServiceType) {
        this.rootView = rootView;
        this.sessionProtected = sessionProtected;
        this.spinnerFilesystemList = spinnerFilesystemList;
        this.spinnerSessionServiceType = spinnerSessionServiceType;
        this.textFilesystem = textFilesystem;
        this.textInputLayoutSessionName = textInputLayoutSessionName;
        this.textInputLayoutUsername = textInputLayoutUsername;
        this.textInputSessionName = textInputSessionName;
        this.textInputUsername = textInputUsername;
        this.textSessionServiceType = textSessionServiceType;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FragSessionEditBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragSessionEditBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.frag_session_edit, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragSessionEditBinding bind(View rootView) {
        int i = R.id.session_protected;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, i);
        if (checkBox != null) {
            i = R.id.spinner_filesystem_list;
            Spinner spinner = (Spinner) ViewBindings.findChildViewById(rootView, i);
            if (spinner != null) {
                i = R.id.spinner_session_service_type;
                Spinner spinner2 = (Spinner) ViewBindings.findChildViewById(rootView, i);
                if (spinner2 != null) {
                    i = R.id.text_filesystem;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView != null) {
                        i = R.id.text_input_layout_session_name;
                        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(rootView, i);
                        if (textInputLayout != null) {
                            i = R.id.text_input_layout_username;
                            TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(rootView, i);
                            if (textInputLayout2 != null) {
                                i = R.id.text_input_session_name;
                                TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                                if (textInputEditText != null) {
                                    i = R.id.text_input_username;
                                    TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                                    if (textInputEditText2 != null) {
                                        i = R.id.text_session_service_type;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                        if (textView2 != null) {
                                            return new FragSessionEditBinding((ScrollView) rootView, checkBox, spinner, spinner2, textView, textInputLayout, textInputLayout2, textInputEditText, textInputEditText2, textView2);
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
