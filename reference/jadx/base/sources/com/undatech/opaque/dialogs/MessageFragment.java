package com.undatech.opaque.dialogs;

import android.R;
import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import org.spongycastle.i18n.MessageBundle;

/* JADX INFO: loaded from: classes2.dex */
public class MessageFragment extends DialogFragment {
    public static String TAG = "MessageFragment";
    private OnFragmentDismissedListener dismissalListener;
    private TextView message;
    private String messageText;
    private Button okButton;
    private String okButtonText;
    private String title;

    public interface OnFragmentDismissedListener {
        void onDialogDismissed();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        TextView textView = (TextView) getDialog().findViewById(R.id.message);
        if (textView != null) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    public void setOnFragmentDismissedListener(OnFragmentDismissedListener onFragmentDismissedListener) {
        this.dismissalListener = onFragmentDismissedListener;
    }

    public static MessageFragment newInstance(String str, String str2, String str3, OnFragmentDismissedListener onFragmentDismissedListener) {
        Log.e(TAG, "newInstance called");
        MessageFragment messageFragment = new MessageFragment();
        messageFragment.setOnFragmentDismissedListener(onFragmentDismissedListener);
        Bundle bundle = new Bundle();
        bundle.putString(MessageBundle.TITLE_ENTRY, str);
        bundle.putString("messageText", str2);
        bundle.putString("okButtonText", str3);
        messageFragment.setArguments(bundle);
        messageFragment.setRetainInstance(true);
        return messageFragment;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.e(TAG, "onCreate called");
        this.title = getArguments().getString(MessageBundle.TITLE_ENTRY);
        this.messageText = getArguments().getString("messageText");
        this.okButtonText = getArguments().getString("okButtonText");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.e(TAG, "onCreateView called");
        getDialog().setTitle(this.title);
        View viewInflate = layoutInflater.inflate(com.undatech.remoteClientUi.R.layout.message, viewGroup, false);
        this.message = (TextView) viewInflate.findViewById(com.undatech.remoteClientUi.R.id.message);
        this.message.setText(Html.fromHtml(this.messageText));
        this.message.setMovementMethod(LinkMovementMethod.getInstance());
        Button button = (Button) viewInflate.findViewById(com.undatech.remoteClientUi.R.id.okButton);
        this.okButton = button;
        button.setText(this.okButtonText);
        this.okButton.setOnClickListener(new View.OnClickListener() { // from class: com.undatech.opaque.dialogs.MessageFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MessageFragment.this.dismiss();
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Log.i(TAG, "dismiss: sending back data to listener");
        OnFragmentDismissedListener onFragmentDismissedListener = this.dismissalListener;
        if (onFragmentDismissedListener != null) {
            onFragmentDismissedListener.onDialogDismissed();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setOnDismissListener(null);
        }
        super.onDestroyView();
    }
}
