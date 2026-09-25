package com.termux.app;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import net.sqlcipher.database.SQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public final class TermuxHelpActivity extends Activity {
    WebView mWebView;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final RelativeLayout relativeLayout = new RelativeLayout(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        ProgressBar progressBar = new ProgressBar(this);
        progressBar.setIndeterminate(true);
        progressBar.setLayoutParams(layoutParams);
        relativeLayout.addView(progressBar);
        WebView webView = new WebView(this);
        this.mWebView = webView;
        webView.getSettings().setCacheMode(2);
        setContentView(relativeLayout);
        this.mWebView.clearCache(true);
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.termux.app.TermuxHelpActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                if (str.startsWith("https://wiki.termux.com")) {
                    TermuxHelpActivity.this.setContentView(relativeLayout);
                    return false;
                }
                try {
                    TermuxHelpActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(SQLiteDatabase.CREATE_IF_NECESSARY));
                    return true;
                } catch (ActivityNotFoundException unused) {
                    TermuxHelpActivity.this.setContentView(relativeLayout);
                    return false;
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                TermuxHelpActivity termuxHelpActivity = TermuxHelpActivity.this;
                termuxHelpActivity.setContentView(termuxHelpActivity.mWebView);
            }
        });
        this.mWebView.loadUrl("https://wiki.termux.com/wiki/Main_Page");
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mWebView.canGoBack()) {
            this.mWebView.goBack();
        } else {
            super.onBackPressed();
        }
    }
}
