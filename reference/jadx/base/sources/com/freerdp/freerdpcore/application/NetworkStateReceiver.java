package com.freerdp.freerdpcore.application;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStateReceiver extends BroadcastReceiver {
    public static boolean isConnectedTo3G(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 6) ? false : true;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getExtras() != null) {
            NetworkInfo networkInfo = (NetworkInfo) intent.getExtras().get("networkInfo");
            if (networkInfo != null && networkInfo.isConnected()) {
                Log.d("app", "Connected via type " + networkInfo.getTypeName());
                GlobalApp.ConnectedTo3G = (networkInfo.getType() == 1 || networkInfo.getType() == 6) ? false : true;
            }
            Log.v("NetworkState", networkInfo.toString());
        }
    }
}
