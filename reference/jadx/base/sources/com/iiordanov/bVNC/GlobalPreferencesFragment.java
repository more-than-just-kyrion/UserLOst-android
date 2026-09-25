package com.iiordanov.bVNC;

import android.os.Bundle;
import androidx.preference.PreferenceFragmentCompat;
import com.undatech.remoteClientUi.R;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalPreferencesFragment extends PreferenceFragmentCompat {
    @Override // androidx.preference.PreferenceFragmentCompat
    public void onCreatePreferences(Bundle bundle, String str) {
        getPreferenceManager().setSharedPreferencesName(Constants.generalSettingsTag);
        setPreferencesFromResource(R.xml.global_preferences, str);
    }
}
