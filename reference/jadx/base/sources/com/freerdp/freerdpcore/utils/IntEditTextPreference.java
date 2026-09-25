package com.freerdp.freerdpcore.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.EditTextPreference;
import android.util.AttributeSet;
import com.freerdp.freerdpcore.R;

/* JADX INFO: loaded from: classes.dex */
public class IntEditTextPreference extends EditTextPreference {
    private int bounds_default;
    private int bounds_max;
    private int bounds_min;

    public IntEditTextPreference(Context context) {
        super(context);
        init(context, null);
    }

    public IntEditTextPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public IntEditTextPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.IntEditTextPreference, 0, 0);
            this.bounds_min = typedArrayObtainStyledAttributes.getInt(R.styleable.IntEditTextPreference_bounds_min, Integer.MIN_VALUE);
            this.bounds_max = typedArrayObtainStyledAttributes.getInt(R.styleable.IntEditTextPreference_bounds_max, Integer.MAX_VALUE);
            this.bounds_default = typedArrayObtainStyledAttributes.getInt(R.styleable.IntEditTextPreference_bounds_default, 0);
            typedArrayObtainStyledAttributes.recycle();
            return;
        }
        this.bounds_min = Integer.MIN_VALUE;
        this.bounds_max = Integer.MAX_VALUE;
        this.bounds_default = 0;
    }

    public void setBounds(int i, int i2, int i3) {
        this.bounds_min = i;
        this.bounds_max = i2;
        this.bounds_default = i3;
    }

    @Override // android.preference.Preference
    protected String getPersistedString(String str) {
        int persistedInt = getPersistedInt(-1);
        if (persistedInt > this.bounds_max || persistedInt < this.bounds_min) {
            persistedInt = this.bounds_default;
        }
        return String.valueOf(persistedInt);
    }

    @Override // android.preference.Preference
    protected boolean persistString(String str) {
        return persistInt(Integer.valueOf(str).intValue());
    }

    @Override // android.preference.EditTextPreference, android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        if (z) {
            if (getEditText().getText().length() == 0) {
                getEditText().setText("0");
            }
            int iIntValue = Integer.valueOf(getEditText().getText().toString()).intValue();
            if (iIntValue > this.bounds_max || iIntValue < this.bounds_min) {
                iIntValue = this.bounds_default;
            }
            getEditText().setText(String.valueOf(iIntValue));
        }
        super.onDialogClosed(z);
    }
}
