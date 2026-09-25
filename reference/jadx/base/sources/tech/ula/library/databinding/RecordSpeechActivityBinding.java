package tech.ula.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import tech.ula.library.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RecordSpeechActivityBinding implements ViewBinding {
    private final RelativeLayout rootView;

    private RecordSpeechActivityBinding(RelativeLayout rootView) {
        this.rootView = rootView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static RecordSpeechActivityBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static RecordSpeechActivityBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.record_speech_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RecordSpeechActivityBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new RecordSpeechActivityBinding((RelativeLayout) rootView);
    }
}
