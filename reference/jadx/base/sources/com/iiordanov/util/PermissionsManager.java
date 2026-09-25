package com.iiordanov.util;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.iiordanov.bVNC.Constants;
import com.iiordanov.bVNC.Utils;
import com.undatech.remoteClientUi.R;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionsManager {
    public static String TAG = "PermissionsManager";

    private static String[] retrievePermissions(Context context) {
        Log.i(TAG, "Retrieving permissions.");
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            Log.d(TAG, Arrays.toString(strArr));
            return strArr;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("This should have never happened.", e);
        }
    }

    public void requestPermissions(Activity activity, boolean z) {
        Log.i(TAG, "Requesting permissions.");
        String[] strArrRetrievePermissions = retrievePermissions(activity);
        for (String str : strArrRetrievePermissions) {
            if (ContextCompat.checkSelfPermission(activity, str) != 0) {
                if (!Utils.querySharedPreferenceBoolean(activity, Constants.permissionsRequested)) {
                    Utils.setSharedPreferenceBoolean(activity, Constants.permissionsRequested, true);
                    ActivityCompat.requestPermissions(activity, strArrRetrievePermissions, 0);
                } else if (z) {
                    Toast.makeText(activity, R.string.please_grant_permission_from_prefs, 0).show();
                }
            }
        }
    }
}
