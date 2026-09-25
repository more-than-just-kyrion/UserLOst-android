package com.freerdp.freerdpcore.utils;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.freerdp.freerdpcore.R;

/* JADX INFO: loaded from: classes.dex */
public class ButtonPreference extends Preference {
    private Button button;
    private View.OnClickListener buttonOnClickListener;
    private String buttonText;

    public ButtonPreference(Context context) {
        super(context);
        init();
    }

    public ButtonPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ButtonPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        setLayoutResource(R.layout.button_preference);
        this.button = null;
        this.buttonText = null;
        this.buttonOnClickListener = null;
    }

    @Override // android.preference.Preference
    public View getView(View view, ViewGroup viewGroup) {
        View view2 = super.getView(view, viewGroup);
        Button button = (Button) view2.findViewById(R.id.preference_button);
        this.button = button;
        String str = this.buttonText;
        if (str != null) {
            button.setText(str);
        }
        View.OnClickListener onClickListener = this.buttonOnClickListener;
        if (onClickListener != null) {
            this.button.setOnClickListener(onClickListener);
        }
        ((LinearLayout) view2.findViewById(android.R.id.widget_frame)).setVisibility(0);
        return view2;
    }

    public void setButtonText(int i) {
        String string = getContext().getResources().getString(i);
        this.buttonText = string;
        Button button = this.button;
        if (button != null) {
            button.setText(string);
        }
    }

    public void setButtonText(String str) {
        this.buttonText = str;
        Button button = this.button;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setButtonOnClickListener(View.OnClickListener onClickListener) {
        Button button = this.button;
        if (button != null) {
            button.setOnClickListener(onClickListener);
        } else {
            this.buttonOnClickListener = onClickListener;
        }
    }
}
