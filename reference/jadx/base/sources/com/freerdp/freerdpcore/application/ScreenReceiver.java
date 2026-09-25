package com.freerdp.freerdpcore.application;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class ScreenReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        GlobalApp globalApp = (GlobalApp) context.getApplicationContext();
        Log.v("ScreenReceiver", "Received action: " + intent.getAction());
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            globalApp.startDisconnectTimer();
        } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
            GlobalApp.cancelDisconnectTimer();
        }
    }
}
