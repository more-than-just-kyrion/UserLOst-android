package com.undatech.opaque.dialogs;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.undatech.remoteClientUi.R;
import org.spongycastle.i18n.MessageBundle;

/* JADX INFO: loaded from: classes2.dex */
public class ChoiceFragment extends DialogFragment {
    public static String TAG = "ChoiceFragment";
    private OnFragmentDismissedListener dismissalListener;
    private TextView message;
    private String messageText;
    private String negativeButtonText;
    private Button noButton;
    private String positiveButtonText;
    private boolean result;
    private String title;
    private Button yesButton;

    public interface OnFragmentDismissedListener {
        void onResponseObtained(boolean z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (this.dismissalListener == null) {
            dismiss();
        }
    }

    public void setOnFragmentDismissedListener(OnFragmentDismissedListener onFragmentDismissedListener) {
        this.dismissalListener = onFragmentDismissedListener;
    }

    public static ChoiceFragment newInstance(String str, String str2, String str3, String str4, OnFragmentDismissedListener onFragmentDismissedListener) {
        Log.e(TAG, "newInstance called");
        ChoiceFragment choiceFragment = new ChoiceFragment();
        choiceFragment.setOnFragmentDismissedListener(onFragmentDismissedListener);
        Bundle bundle = new Bundle();
        bundle.putString(MessageBundle.TITLE_ENTRY, str);
        bundle.putString("messageText", str2);
        bundle.putString("positiveButtonText", str3);
        bundle.putString("negativeButtonText", str4);
        choiceFragment.setArguments(bundle);
        choiceFragment.setRetainInstance(true);
        return choiceFragment;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.e(TAG, "onCreate called");
        this.title = getArguments().getString(MessageBundle.TITLE_ENTRY);
        this.messageText = getArguments().getString("messageText");
        this.positiveButtonText = getArguments().getString("positiveButtonText");
        this.negativeButtonText = getArguments().getString("negativeButtonText");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.e(TAG, "onCreateView called");
        getDialog().setTitle(this.title);
        View viewInflate = layoutInflater.inflate(R.layout.choice, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.message);
        this.message = textView;
        textView.setText(this.messageText);
        Button button = (Button) viewInflate.findViewById(R.id.yesButton);
        this.yesButton = button;
        button.setText(this.positiveButtonText);
        this.yesButton.setOnClickListener(new View.OnClickListener() { // from class: com.undatech.opaque.dialogs.ChoiceFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChoiceFragment.this.result = true;
                ChoiceFragment.this.dismiss();
            }
        });
        Button button2 = (Button) viewInflate.findViewById(R.id.noButton);
        this.noButton = button2;
        button2.setText(this.negativeButtonText);
        this.noButton.setOnClickListener(new View.OnClickListener() { // from class: com.undatech.opaque.dialogs.ChoiceFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChoiceFragment.this.result = false;
                ChoiceFragment.this.dismiss();
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Log.e(TAG, "dismiss: sending back data to Activity");
        OnFragmentDismissedListener onFragmentDismissedListener = this.dismissalListener;
        if (onFragmentDismissedListener != null) {
            onFragmentDismissedListener.onResponseObtained(this.result);
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
