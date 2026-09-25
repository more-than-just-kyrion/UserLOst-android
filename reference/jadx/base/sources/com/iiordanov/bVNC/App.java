package com.iiordanov.bVNC;

import android.content.Context;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.multidex.MultiDex;
import androidx.multidex.MultiDexApplication;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class App extends MultiDexApplication {
    private static WeakReference<Context> context = null;
    public static boolean debugLog = false;
    private Database database;

    @Override // androidx.multidex.MultiDexApplication, android.content.ContextWrapper
    protected void attachBaseContext(Context context2) {
        super.attachBaseContext(context2);
        MultiDex.install(getBaseContext());
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
        Constants.DEFAULT_PROTOCOL_PORT = Utils.getDefaultPort(this);
        this.database = new Database(this);
        context = new WeakReference<>(this);
        debugLog = Utils.querySharedPreferenceBoolean(getApplicationContext(), "moreDebugLoggingTag");
    }

    public Database getDatabase() {
        return this.database;
    }

    public static Context getContext() {
        return context.get();
    }
}
