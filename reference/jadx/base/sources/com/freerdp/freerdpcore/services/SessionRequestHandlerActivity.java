package com.freerdp.freerdpcore.services;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.freerdp.freerdpcore.domain.ConnectionReference;
import com.freerdp.freerdpcore.presentation.BookmarkActivity;
import com.freerdp.freerdpcore.presentation.SessionActivity;
import com.google.android.gms.actions.SearchIntents;

/* JADX INFO: loaded from: classes.dex */
public class SessionRequestHandlerActivity extends AppCompatActivity {
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        handleIntent(getIntent());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        setIntent(intent);
        handleIntent(intent);
    }

    private void startSessionWithConnectionReference(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("conRef", str);
        Intent intent = new Intent(this, (Class<?>) SessionActivity.class);
        intent.putExtras(bundle);
        startActivityForResult(intent, 0);
    }

    private void editBookmarkWithConnectionReference(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("conRef", str);
        Intent intent = new Intent(getApplicationContext(), (Class<?>) BookmarkActivity.class);
        intent.putExtras(bundle);
        startActivityForResult(intent, 0);
    }

    private void handleIntent(Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.SEARCH".equals(action)) {
            startSessionWithConnectionReference(ConnectionReference.getHostnameReference(intent.getStringExtra(SearchIntents.EXTRA_QUERY)));
        } else if ("android.intent.action.VIEW".equals(action)) {
            startSessionWithConnectionReference(intent.getDataString());
        } else if ("android.intent.action.EDIT".equals(action)) {
            editBookmarkWithConnectionReference(intent.getDataString());
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        setResult(i2);
        finish();
    }
}
