package com.iiordanov.android.bc;

import android.app.ActivityManager;

/* JADX INFO: loaded from: classes2.dex */
class BCActivityManagerDefault implements IBCActivityManager {
    @Override // com.iiordanov.android.bc.IBCActivityManager
    public int getMemoryClass(ActivityManager activityManager) {
        return 16;
    }

    BCActivityManagerDefault() {
    }
}
