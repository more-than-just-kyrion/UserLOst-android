package com.freerdp.freerdpcore.utils;

import android.content.Context;
import android.preference.ListPreference;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class IntListPreference extends ListPreference {
    public IntListPreference(Context context) {
        super(context);
    }

    public IntListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.preference.Preference
    protected String getPersistedString(String str) {
        return String.valueOf(getPersistedInt(-1));
    }

    @Override // android.preference.Preference
    protected boolean persistString(String str) {
        return persistInt(Integer.valueOf(str).intValue());
    }
}
