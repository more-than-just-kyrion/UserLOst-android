package com.freerdp.freerdpcore.presentation;

import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.os.EnvironmentCompat;
import com.freerdp.freerdpcore.R;
import com.freerdp.freerdpcore.services.LibFreeRDP;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes.dex */
public class AboutActivity extends AppCompatActivity {
    private static final String TAG = AboutActivity.class.toString();
    private WebView mWebView;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_about);
        this.mWebView = (WebView) findViewById(R.id.activity_about_webview);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        populate();
        super.onResume();
    }

    private void populate() {
        String str;
        String str2;
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder();
        if ((getResources().getConfiguration().screenLayout & 15) < 3) {
            str = "about_phone.html";
        } else {
            str = "about.html";
        }
        Locale locale = Locale.getDefault();
        String str3 = locale.getLanguage().toLowerCase(locale) + "_about_page/";
        String strConcat = str3 + str;
        try {
            try {
                getAssets().open(strConcat).close();
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        sb.append(StringUtils.LF);
                    } catch (Throwable th) {
                        bufferedReader.close();
                        throw th;
                    }
                }
            } catch (IOException e) {
                Log.e(TAG, "Missing localized asset " + strConcat, e);
                str3 = "about_page/";
                strConcat = "about_page/".concat(str);
            }
            bufferedReader = new BufferedReader(new InputStreamReader(getAssets().open(strConcat)));
            bufferedReader.close();
        } catch (IOException e2) {
            Log.e(TAG, "Could not read about page " + strConcat, e2);
        }
        try {
            str2 = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        String str4 = str2 + " (" + LibFreeRDP.getVersion() + ")";
        WebSettings settings = this.mWebView.getSettings();
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportZoom(true);
        this.mWebView.loadDataWithBaseURL("file:///android_asset/" + str3, sb.toString().replaceAll("%AFREERDP_VERSION%", str4).replaceAll("%SYSTEM_VERSION%", Build.VERSION.RELEASE).replaceAll("%DEVICE_MODEL%", Build.MODEL), "text/html", null, "about:blank");
    }
}
