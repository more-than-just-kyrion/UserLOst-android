package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DiaAppCredentialsBinding implements ViewBinding {
    private final ScrollView rootView;
    public final TextView textFilesystemCredentialsReasoning;
    public final TextInputLayout textInputLayoutPassword;
    public final TextInputLayout textInputLayoutUsername;
    public final TextInputLayout textInputLayoutVncPassword;
    public final TextInputEditText textInputPassword;
    public final TextInputEditText textInputUsername;
    public final TextInputEditText textInputVncPassword;

    private DiaAppCredentialsBinding(ScrollView rootView, TextView textFilesystemCredentialsReasoning, TextInputLayout textInputLayoutPassword, TextInputLayout textInputLayoutUsername, TextInputLayout textInputLayoutVncPassword, TextInputEditText textInputPassword, TextInputEditText textInputUsername, TextInputEditText textInputVncPassword) {
        this.rootView = rootView;
        this.textFilesystemCredentialsReasoning = textFilesystemCredentialsReasoning;
        this.textInputLayoutPassword = textInputLayoutPassword;
        this.textInputLayoutUsername = textInputLayoutUsername;
        this.textInputLayoutVncPassword = textInputLayoutVncPassword;
        this.textInputPassword = textInputPassword;
        this.textInputUsername = textInputUsername;
        this.textInputVncPassword = textInputVncPassword;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static DiaAppCredentialsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DiaAppCredentialsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dia_app_credentials, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DiaAppCredentialsBinding bind(View rootView) {
        int i = R.id.text_filesystem_credentials_reasoning;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
        if (textView != null) {
            i = R.id.text_input_layout_password;
            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(rootView, i);
            if (textInputLayout != null) {
                i = R.id.text_input_layout_username;
                TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(rootView, i);
                if (textInputLayout2 != null) {
                    i = R.id.text_input_layout_vnc_password;
                    TextInputLayout textInputLayout3 = (TextInputLayout) ViewBindings.findChildViewById(rootView, i);
                    if (textInputLayout3 != null) {
                        i = R.id.text_input_password;
                        TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                        if (textInputEditText != null) {
                            i = R.id.text_input_username;
                            TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                            if (textInputEditText2 != null) {
                                i = R.id.text_input_vnc_password;
                                TextInputEditText textInputEditText3 = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                                if (textInputEditText3 != null) {
                                    return new DiaAppCredentialsBinding((ScrollView) rootView, textView, textInputLayout, textInputLayout2, textInputLayout3, textInputEditText, textInputEditText2, textInputEditText3);
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
