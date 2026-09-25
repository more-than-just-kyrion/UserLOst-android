package com.iiordanov.bVNC.dialogs;

import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.undatech.remoteClientUi.R;
import java.util.Iterator;
import org.spongycastle.i18n.MessageBundle;

/* JADX INFO: loaded from: classes2.dex */
public class GetTextFragment extends DialogFragment {
    public static final int Credentials = 4;
    public static final int CredentialsWithDomain = 5;
    public static final int CredentialsWithReadOnlyUser = 6;
    public static final String DIALOG_ID_GET_MASTER_PASSWORD = "DIALOG_ID_GET_MASTER_PASSWORD";
    public static final String DIALOG_ID_GET_MATCHING_MASTER_PASSWORDS = "DIALOG_ID_GET_MATCHING_MASTER_PASSWORDS";
    public static final String DIALOG_ID_GET_OPAQUE_CREDENTIALS = "DIALOG_ID_GET_OPAQUE_CREDENTIALS";
    public static final String DIALOG_ID_GET_OPAQUE_OTP_CODE = "DIALOG_ID_GET_OPAQUE_OTP_CODE";
    public static final String DIALOG_ID_GET_OPAQUE_PASSWORD = "DIALOG_ID_GET_OPAQUE_PASSWORD";
    public static final String DIALOG_ID_GET_PASSWORD = "DIALOG_ID_GET_PASSWORD";
    public static final String DIALOG_ID_GET_RDP_CREDENTIALS = "DIALOG_ID_GET_RDP_CREDENTIALS";
    public static final String DIALOG_ID_GET_SPICE_PASSWORD = "DIALOG_ID_GET_SPICE_PASSWORD";
    public static final String DIALOG_ID_GET_SSH_CREDENTIALS = "DIALOG_ID_GET_SSH_CREDENTIALS";
    public static final String DIALOG_ID_GET_SSH_PASSPHRASE = "DIALOG_ID_GET_SSH_PASSPHRASE";
    public static final String DIALOG_ID_GET_VERIFICATIONCODE = "DIALOG_ID_GET_VERIFICATIONCODE";
    public static final String DIALOG_ID_GET_VNC_CREDENTIALS = "DIALOG_ID_GET_VNC_CREDENTIALS";
    public static final String DIALOG_ID_GET_VNC_PASSWORD = "DIALOG_ID_GET_VNC_PASSWORD";
    public static final int MatchingPasswordTwice = 3;
    public static final int Password = 2;
    public static final int Plaintext = 1;
    public static String TAG = "GetTextFragment";
    private Button buttonCancel;
    private Button buttonConfirm;
    private CheckBox checkboxKeepPassword;
    private String dialogId;
    private OnFragmentDismissedListener dismissalListener;
    private TextView error;
    private boolean keepPassword;
    private TextView message;
    private String t1;
    private String t2;
    private String t3;
    private EditText textBox;
    private EditText textBox2;
    private EditText textBox3;
    private TextView textViewBox;
    private String title;
    private boolean wasCancelled = false;
    private int dialogType = 0;
    private int messageNum = 0;
    private int errorNum = 0;

    public interface OnFragmentDismissedListener {
        void onTextObtained(String str, String[] strArr, boolean z, boolean z2);
    }

    private class TextMatcher implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        private TextMatcher() {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            GetTextFragment.this.error.setVisibility(8);
        }
    }

    public static GetTextFragment newInstance(String str, String str2, OnFragmentDismissedListener onFragmentDismissedListener, int i, int i2, int i3, String str3, String str4, String str5, boolean z) {
        Log.i(TAG, "newInstance called");
        GetTextFragment getTextFragment = new GetTextFragment();
        getTextFragment.setDismissalListener(onFragmentDismissedListener);
        Bundle bundle = new Bundle();
        bundle.putString("dialogId", str);
        bundle.putString(MessageBundle.TITLE_ENTRY, str2);
        bundle.putInt("dialogType", i);
        bundle.putInt("messageNum", i2);
        bundle.putInt("errorNum", i3);
        bundle.putString("t1", str3);
        bundle.putString("t2", str4);
        bundle.putString("t3", str5);
        bundle.putBoolean("keepPassword", z);
        getTextFragment.setArguments(bundle);
        getTextFragment.setRetainInstance(false);
        return getTextFragment;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.i(TAG, "onCreate called");
        this.dialogId = getArguments().getString("dialogId");
        this.title = getArguments().getString(MessageBundle.TITLE_ENTRY);
        this.dialogType = getArguments().getInt("dialogType");
        this.messageNum = getArguments().getInt("messageNum");
        this.errorNum = getArguments().getInt("errorNum");
        this.t1 = getArguments().getString("t1");
        this.t2 = getArguments().getString("t2");
        this.t3 = getArguments().getString("t3");
        this.keepPassword = getArguments().getBoolean("keepPassword");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate;
        String str;
        String str2;
        String str3;
        Log.i(TAG, "onCreateView called");
        this.wasCancelled = false;
        getDialog().getWindow().setSoftInputMode(36);
        getDialog().setTitle(this.title);
        switch (this.dialogType) {
            case 1:
                viewInflate = layoutInflater.inflate(R.layout.get_text, viewGroup, false);
                this.textBox = (EditText) viewInflate.findViewById(R.id.textBox);
                this.checkboxKeepPassword = (CheckBox) viewInflate.findViewById(R.id.checkboxKeepPassword);
                if (this.dialogId == DIALOG_ID_GET_OPAQUE_OTP_CODE) {
                    this.textBox.setHint("");
                    this.checkboxKeepPassword.setVisibility(4);
                }
                this.buttonConfirm = (Button) viewInflate.findViewById(R.id.buttonConfirm);
                Button button = (Button) viewInflate.findViewById(R.id.buttonCancel);
                this.buttonCancel = button;
                dismissOnCancel(button);
                dismissOnConfirm(this.buttonConfirm);
                break;
            case 2:
                viewInflate = layoutInflater.inflate(R.layout.get_text, viewGroup, false);
                EditText editText = (EditText) viewInflate.findViewById(R.id.textBox);
                this.textBox = editText;
                hideText(editText);
                this.checkboxKeepPassword = (CheckBox) viewInflate.findViewById(R.id.checkboxKeepPassword);
                this.buttonConfirm = (Button) viewInflate.findViewById(R.id.buttonConfirm);
                Button button2 = (Button) viewInflate.findViewById(R.id.buttonCancel);
                this.buttonCancel = button2;
                dismissOnCancel(button2);
                dismissOnConfirm(this.buttonConfirm);
                break;
            case 3:
                viewInflate = layoutInflater.inflate(R.layout.get_text_twice, viewGroup, false);
                this.error = (TextView) viewInflate.findViewById(R.id.error);
                this.textBox = (EditText) viewInflate.findViewById(R.id.textBox);
                this.textBox2 = (EditText) viewInflate.findViewById(R.id.textBox2);
                hideText(this.textBox);
                hideText(this.textBox2);
                this.buttonConfirm = (Button) viewInflate.findViewById(R.id.buttonConfirm);
                Button button3 = (Button) viewInflate.findViewById(R.id.buttonCancel);
                this.buttonCancel = button3;
                dismissOnCancel(button3);
                ensureMatchingDismissOnConfirm(this.buttonConfirm, this.textBox, this.textBox2, this.error);
                break;
            case 4:
                viewInflate = layoutInflater.inflate(R.layout.get_credentials, viewGroup, false);
                this.error = (TextView) viewInflate.findViewById(R.id.error);
                this.textBox = (EditText) viewInflate.findViewById(R.id.textBox);
                EditText editText2 = (EditText) viewInflate.findViewById(R.id.textBox2);
                this.textBox2 = editText2;
                hideText(editText2);
                this.textBox2.requestFocus();
                this.checkboxKeepPassword = (CheckBox) viewInflate.findViewById(R.id.checkboxKeepPassword);
                this.buttonConfirm = (Button) viewInflate.findViewById(R.id.buttonConfirm);
                Button button4 = (Button) viewInflate.findViewById(R.id.buttonCancel);
                this.buttonCancel = button4;
                dismissOnCancel(button4);
                dismissOnConfirm(this.buttonConfirm);
                break;
            case 5:
                viewInflate = layoutInflater.inflate(R.layout.get_credentials_with_domain, viewGroup, false);
                this.error = (TextView) viewInflate.findViewById(R.id.error);
                this.textBox = (EditText) viewInflate.findViewById(R.id.textBox);
                this.textBox2 = (EditText) viewInflate.findViewById(R.id.textBox2);
                EditText editText3 = (EditText) viewInflate.findViewById(R.id.textBox3);
                this.textBox3 = editText3;
                hideText(editText3);
                this.textBox3.requestFocus();
                this.checkboxKeepPassword = (CheckBox) viewInflate.findViewById(R.id.checkboxKeepPassword);
                this.buttonConfirm = (Button) viewInflate.findViewById(R.id.buttonConfirm);
                Button button5 = (Button) viewInflate.findViewById(R.id.buttonCancel);
                this.buttonCancel = button5;
                dismissOnCancel(button5);
                dismissOnConfirm(this.buttonConfirm);
                break;
            case 6:
                viewInflate = layoutInflater.inflate(R.layout.get_credentials_with_read_only_user, viewGroup, false);
                this.error = (TextView) viewInflate.findViewById(R.id.error);
                this.textViewBox = (TextView) viewInflate.findViewById(R.id.textViewBox);
                EditText editText4 = (EditText) viewInflate.findViewById(R.id.textBox2);
                this.textBox2 = editText4;
                hideText(editText4);
                this.textBox2.requestFocus();
                this.checkboxKeepPassword = (CheckBox) viewInflate.findViewById(R.id.checkboxKeepPassword);
                this.buttonConfirm = (Button) viewInflate.findViewById(R.id.buttonConfirm);
                Button button6 = (Button) viewInflate.findViewById(R.id.buttonCancel);
                this.buttonCancel = button6;
                dismissOnCancel(button6);
                dismissOnConfirm(this.buttonConfirm);
                break;
            default:
                getDialog().dismiss();
                viewInflate = null;
                break;
        }
        TextView textView = this.textViewBox;
        if (textView != null) {
            textView.setText(this.t1);
        }
        EditText editText5 = this.textBox;
        if (editText5 != null && (str3 = this.t1) != null) {
            editText5.setText(str3);
        }
        EditText editText6 = this.textBox2;
        if (editText6 != null && (str2 = this.t2) != null) {
            editText6.setText(str2);
        }
        EditText editText7 = this.textBox3;
        if (editText7 != null && (str = this.t3) != null) {
            editText7.setText(str);
        }
        CheckBox checkBox = this.checkboxKeepPassword;
        if (checkBox != null) {
            checkBox.setChecked(this.keepPassword);
        }
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.message);
        this.message = textView2;
        textView2.setText(this.messageNum);
        setRetainInstance(true);
        return viewInflate;
    }

    public void setDismissalListener(OnFragmentDismissedListener onFragmentDismissedListener) {
        this.dismissalListener = onFragmentDismissedListener;
    }

    private void hideText(EditText editText) {
        editText.setTransformationMethod(new PasswordTransformationMethod());
    }

    private void dismissOnCancel(Button button) {
        button.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.GetTextFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GetTextFragment.this.wasCancelled = true;
                GetTextFragment.this.getDialog().dismiss();
            }
        });
    }

    private void dismissOnConfirm(Button button) {
        button.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.GetTextFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GetTextFragment.this.getDialog().dismiss();
            }
        });
    }

    private void ensureMatchingDismissOnConfirm(Button button, final EditText editText, final EditText editText2, final TextView textView) {
        button.setOnClickListener(new View.OnClickListener() { // from class: com.iiordanov.bVNC.dialogs.GetTextFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (editText.getText().toString().equals(editText2.getText().toString())) {
                    GetTextFragment.this.getDialog().dismiss();
                    return;
                }
                textView.setText(GetTextFragment.this.errorNum);
                textView.setVisibility(0);
                textView.invalidate();
            }
        });
        editText.addTextChangedListener(new TextMatcher());
        editText2.addTextChangedListener(new TextMatcher());
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Log.i(TAG, "onDismiss called: Sending data back to Activity");
        String[] strArr = new String[3];
        TextView textView = this.textViewBox;
        if (textView != null) {
            strArr[0] = textView.getText().toString();
            this.textViewBox.setText("");
        }
        EditText editText = this.textBox;
        if (editText != null) {
            strArr[0] = editText.getText().toString();
            this.textBox.setText("");
        }
        EditText editText2 = this.textBox2;
        if (editText2 != null) {
            strArr[1] = editText2.getText().toString();
            this.textBox2.setText("");
        }
        EditText editText3 = this.textBox3;
        if (editText3 != null) {
            strArr[2] = editText3.getText().toString();
            this.textBox3.setText("");
        }
        CheckBox checkBox = this.checkboxKeepPassword;
        if (checkBox != null) {
            this.keepPassword = checkBox.isChecked();
        }
        OnFragmentDismissedListener onFragmentDismissedListener = this.dismissalListener;
        if (onFragmentDismissedListener != null) {
            onFragmentDismissedListener.onTextObtained(this.dialogId, strArr, this.wasCancelled, this.keepPassword);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setOnDismissListener(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        try {
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            Iterator<Fragment> it = fragmentManager.getFragments().iterator();
            while (it.hasNext()) {
                fragmentManager.beginTransaction().remove(it.next()).commit();
            }
            fragmentTransactionBeginTransaction.add(this, str);
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        } catch (IllegalStateException e) {
            Log.e("IllegalStateException", "Exception", e);
            e.printStackTrace();
        }
    }
}
