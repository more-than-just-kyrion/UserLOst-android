package com.freerdp.freerdpcore.presentation;

import android.os.Bundle;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.appcompat.app.AppCompatActivity;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class HelpActivity extends AppCompatActivity {
    private static final String TAG = HelpActivity.class.toString();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        WebView webView = new WebView(this);
        setContentView(webView);
        if ((getResources().getConfiguration().screenLayout & 15) >= 3) {
            str = "gestures.html";
        } else {
            str = "gestures_phone.html";
        }
        WebSettings settings = webView.getSettings();
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportZoom(true);
        settings.setJavaScriptEnabled(true);
        settings.setAllowContentAccess(true);
        settings.setAllowFileAccess(true);
        Locale locale = Locale.getDefault();
        String strConcat = (locale.getLanguage().toLowerCase(locale) + "_help_page/") + str;
        try {
            getAssets().open(strConcat).close();
        } catch (IOException e) {
            Log.e(TAG, "Missing localized asset " + strConcat, e);
            strConcat = "help_page/".concat(str);
        }
        webView.loadUrl("file:///android_asset/" + strConcat);
    }
}
