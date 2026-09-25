package com.iiordanov.android.bc;

import android.app.ActivityManager;

/* JADX INFO: loaded from: classes2.dex */
public class BCActivityManagerV5 implements IBCActivityManager {
    @Override // com.iiordanov.android.bc.IBCActivityManager
    public int getMemoryClass(ActivityManager activityManager) {
        return activityManager.getMemoryClass();
    }
}
