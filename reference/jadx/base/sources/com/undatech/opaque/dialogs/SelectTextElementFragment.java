package com.undatech.opaque.dialogs;

import android.content.DialogInterface;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.undatech.remoteClientUi.R;
import java.util.ArrayList;
import java.util.ListIterator;
import org.spongycastle.i18n.MessageBundle;

/* JADX INFO: loaded from: classes2.dex */
public class SelectTextElementFragment extends DialogFragment {
    public static String TAG = "SelectVmFragment";
    private OnFragmentDismissedListener dismissalListener;
    String selected = "";
    private ArrayList<String> strings;
    private String title;
    LinearLayout verticalLayout;

    public interface OnFragmentDismissedListener {
        void onTextSelected(String str);
    }

    public void setOnFragmentDismissedListener(OnFragmentDismissedListener onFragmentDismissedListener) {
        this.dismissalListener = onFragmentDismissedListener;
    }

    public static SelectTextElementFragment newInstance(String str, ArrayList<String> arrayList, OnFragmentDismissedListener onFragmentDismissedListener) {
        Log.e(TAG, "newInstance called");
        SelectTextElementFragment selectTextElementFragment = new SelectTextElementFragment();
        selectTextElementFragment.setOnFragmentDismissedListener(onFragmentDismissedListener);
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("strings", arrayList);
        bundle.putString(MessageBundle.TITLE_ENTRY, str);
        selectTextElementFragment.setArguments(bundle);
        selectTextElementFragment.setRetainInstance(true);
        return selectTextElementFragment;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.e(TAG, "onCreate called");
        this.strings = getArguments().getStringArrayList("strings");
        this.title = getArguments().getString(MessageBundle.TITLE_ENTRY);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.e(TAG, "onCreateView called");
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(getResources().getLayout(R.layout.textelement));
        getDialog().setTitle(this.title);
        View viewInflate = layoutInflater.inflate(R.layout.select_text, viewGroup, false);
        this.verticalLayout = (LinearLayout) viewInflate.findViewById(R.id.verticalLayout);
        ListIterator<String> listIterator = this.strings.listIterator();
        while (listIterator.hasNext()) {
            Log.e(TAG, "Adding element to dialog");
            String next = listIterator.next();
            TextView textView = new TextView(viewInflate.getContext(), attributeSetAsAttributeSet);
            textView.setText(next);
            textView.setTextSize(1, 25.0f);
            textView.setPadding(40, 20, 40, 20);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.undatech.opaque.dialogs.SelectTextElementFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SelectTextElementFragment.this.selected = ((TextView) view).getText().toString();
                    SelectTextElementFragment.this.dismiss();
                }
            });
            this.verticalLayout.addView(textView);
        }
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Log.e(TAG, "dismiss: sending back data to Activity");
        this.dismissalListener.onTextSelected(this.selected);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setOnDismissListener(null);
        }
        super.onDestroyView();
    }
}
