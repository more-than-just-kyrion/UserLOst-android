package com.iiordanov.bVNC;

import android.R;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

/* JADX INFO: loaded from: classes2.dex */
public class GlobalPreferencesActivity extends AppCompatActivity {
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getSupportFragmentManager().beginTransaction().replace(R.id.content, new GlobalPreferencesFragment()).commit();
    }
}
