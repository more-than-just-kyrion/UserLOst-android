package com.iiordanov.bVNC;

import android.app.ActionBar;
import android.os.Bundle;
import android.util.Log;
import com.iiordanov.util.CustomClientConfigFileReader;
import java.io.IOException;
import java.util.Map;
import org.spongycastle.i18n.MessageBundle;

/* JADX INFO: loaded from: classes2.dex */
public class CustomVnc extends bVNC {
    private static final String TAG = "CustomVnc";

    @Override // com.iiordanov.bVNC.bVNC, com.iiordanov.bVNC.MainConfiguration, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Map<String, Map> configData = new CustomClientConfigFileReader(getAssets().open(getPackageName() + ".yaml")).getConfigData();
            Map map = (Map) configData.get("mainConfiguration").get("visibility");
            for (String str : map.keySet()) {
                Log.d(TAG, str);
                findViewById(getResources().getIdentifier(str, "id", getPackageName())).setVisibility(((Integer) map.get(str)).intValue());
            }
            String language = getResources().getConfiguration().locale.getLanguage();
            configData.get("mainConfiguration");
            String str2 = (String) ((Map) configData.get("mainConfiguration").get(MessageBundle.TITLE_ENTRY)).get("default");
            String str3 = (String) ((Map) configData.get("mainConfiguration").get("subtitle")).get("default");
            String str4 = (String) ((Map) configData.get("mainConfiguration").get(MessageBundle.TITLE_ENTRY)).get(language);
            if (str4 != null) {
                str2 = str4;
            }
            String str5 = (String) ((Map) configData.get("mainConfiguration").get("subtitle")).get(language);
            if (str5 != null) {
                str3 = str5;
            }
            ActionBar actionBar = getActionBar();
            actionBar.setTitle(str2);
            actionBar.setSubtitle(str3);
        } catch (IOException e) {
            Log.e(TAG, "Error opening config file from assets.");
            e.printStackTrace();
        }
    }
}
