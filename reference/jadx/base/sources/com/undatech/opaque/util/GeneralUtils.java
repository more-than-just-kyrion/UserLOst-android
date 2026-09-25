package com.undatech.opaque.util;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class GeneralUtils {
    public static Class<?> getClassByName(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void debugLog(boolean z, String str, String str2) {
        if (z) {
            Log.d(str, str2);
        }
    }
}
