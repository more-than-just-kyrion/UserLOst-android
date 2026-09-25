package io.sentry.android.event.helper;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import io.sentry.event.EventBuilder;
import io.sentry.event.helper.EventBuilderHelper;
import io.sentry.event.interfaces.DebugMetaInterface;
import io.sentry.event.interfaces.UserInterface;
import io.sentry.marshaller.json.JsonMarshaller;
import io.sentry.util.Util;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.lang3.SystemProperties;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidEventBuilderHelper implements EventBuilderHelper {
    public static final String TAG = "io.sentry.android.event.helper.AndroidEventBuilderHelper";
    private Context ctx;
    private static final Boolean IS_EMULATOR = isEmulator();
    private static final String KERNEL_VERSION = getKernelVersion();
    private static String[] cachedProGuardUuids = null;

    public AndroidEventBuilderHelper(Context context) {
        this.ctx = context;
    }

    @Override // io.sentry.event.helper.EventBuilderHelper
    public void helpBuildingEvent(EventBuilder eventBuilder) {
        eventBuilder.withSdkIntegration("android");
        PackageInfo packageInfo = getPackageInfo(this.ctx);
        if (packageInfo != null) {
            if (eventBuilder.getEvent().getRelease() == null) {
                eventBuilder.withRelease(packageInfo.packageName + "-" + packageInfo.versionName);
            }
            if (eventBuilder.getEvent().getDist() == null) {
                eventBuilder.withDist(Integer.toString(packageInfo.versionCode));
            }
        }
        String string = Settings.Secure.getString(this.ctx.getContentResolver(), "android_id");
        if (string != null && !string.trim().equals("")) {
            eventBuilder.withSentryInterface(new UserInterface("android:" + string, null, null, null), false);
        }
        String[] proGuardUuids = getProGuardUuids(this.ctx);
        if (proGuardUuids != null && proGuardUuids.length > 0) {
            DebugMetaInterface debugMetaInterface = new DebugMetaInterface();
            for (String str : proGuardUuids) {
                debugMetaInterface.addDebugImage(new DebugMetaInterface.DebugImage(str));
            }
            eventBuilder.withSentryInterface(debugMetaInterface);
        }
        eventBuilder.withContexts(getContexts());
    }

    protected Map<String, Map<String, Object>> getContexts() {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        map.put("os", map3);
        map.put("device", map2);
        map.put("app", map4);
        map2.put("manufacturer", Build.MANUFACTURER);
        map2.put("brand", Build.BRAND);
        map2.put("model", Build.MODEL);
        map2.put("family", getFamily());
        map2.put("model_id", Build.ID);
        map2.put("battery_level", getBatteryLevel(this.ctx));
        map2.put("orientation", getOrientation(this.ctx));
        map2.put("simulator", IS_EMULATOR);
        map2.put("arch", Build.CPU_ABI);
        map2.put("storage_size", getTotalInternalStorage());
        map2.put("free_storage", getUnusedInternalStorage());
        map2.put("external_storage_size", getTotalExternalStorage());
        map2.put("external_free_storage", getUnusedExternalStorage());
        map2.put("charging", isCharging(this.ctx));
        map2.put("online", Boolean.valueOf(isConnected(this.ctx)));
        DisplayMetrics displayMetrics = getDisplayMetrics(this.ctx);
        if (displayMetrics != null) {
            map2.put("screen_resolution", Integer.toString(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels)) + "x" + Integer.toString(Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels)));
            map2.put("screen_density", Float.valueOf(displayMetrics.density));
            map2.put("screen_dpi", Integer.valueOf(displayMetrics.densityDpi));
        }
        ActivityManager.MemoryInfo memInfo = getMemInfo(this.ctx);
        if (memInfo != null) {
            map2.put("free_memory", Long.valueOf(memInfo.availMem));
            map2.put("memory_size", Long.valueOf(memInfo.totalMem));
            map2.put("low_memory", Boolean.valueOf(memInfo.lowMemory));
        }
        map3.put("name", "Android");
        map3.put("version", Build.VERSION.RELEASE);
        map3.put("build", Build.DISPLAY);
        map3.put("kernel_version", KERNEL_VERSION);
        map3.put("rooted", isRooted());
        PackageInfo packageInfo = getPackageInfo(this.ctx);
        if (packageInfo != null) {
            map4.put("app_version", packageInfo.versionName);
            map4.put("app_build", Integer.valueOf(packageInfo.versionCode));
            map4.put("app_identifier", packageInfo.packageName);
        }
        map4.put("app_name", getApplicationName(this.ctx));
        map4.put("app_start_time", stringifyDate(new Date()));
        return map;
    }

    protected static String[] getProGuardUuids(Context context) {
        String[] strArr = cachedProGuardUuids;
        if (strArr != null) {
            return strArr;
        }
        String[] strArrSplit = new String[0];
        try {
            InputStream inputStreamOpen = context.getAssets().open("sentry-debug-meta.properties");
            Properties properties = new Properties();
            properties.load(inputStreamOpen);
            inputStreamOpen.close();
            String property = properties.getProperty("io.sentry.ProguardUuids");
            if (!Util.isNullOrEmpty(property)) {
                strArrSplit = property.split("\\|");
            }
        } catch (FileNotFoundException unused) {
            Log.d(TAG, "Proguard UUIDs file not found.");
        } catch (Exception e) {
            Log.e(TAG, "Error getting Proguard UUIDs.", e);
        }
        cachedProGuardUuids = strArrSplit;
        return strArrSplit;
    }

    protected static PackageInfo getPackageInfo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Error getting package info.", e);
            return null;
        }
    }

    protected static String getFamily() {
        try {
            return Build.MODEL.split(" ")[0];
        } catch (Exception e) {
            Log.e(TAG, "Error getting device family.", e);
            return null;
        }
    }

    protected static Boolean isEmulator() {
        try {
            return Boolean.valueOf(Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith(EnvironmentCompat.MEDIA_UNKNOWN) || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion") || (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT));
        } catch (Exception e) {
            Log.e(TAG, "Error checking whether application is running in an emulator.", e);
            return null;
        }
    }

    protected static ActivityManager.MemoryInfo getMemInfo(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo;
        } catch (Exception e) {
            Log.e(TAG, "Error getting MemoryInfo.", e);
            return null;
        }
    }

    protected static String getOrientation(Context context) {
        try {
            int i = context.getResources().getConfiguration().orientation;
            if (i == 1) {
                return "portrait";
            }
            if (i != 2) {
                return null;
            }
            return "landscape";
        } catch (Exception e) {
            Log.e(TAG, "Error getting device orientation.", e);
            return null;
        }
    }

    protected static Float getBatteryLevel(Context context) {
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver == null) {
                return null;
            }
            int intExtra = intentRegisterReceiver.getIntExtra(JsonMarshaller.LEVEL, -1);
            int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
            if (intExtra != -1 && intExtra2 != -1) {
                return Float.valueOf((intExtra / intExtra2) * 100.0f);
            }
            return null;
        } catch (Exception e) {
            Log.e(TAG, "Error getting device battery level.", e);
            return null;
        }
    }

    protected static Boolean isCharging(Context context) {
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver == null) {
                return null;
            }
            int intExtra = intentRegisterReceiver.getIntExtra("plugged", -1);
            boolean z = true;
            if (intExtra != 1 && intExtra != 2) {
                z = false;
            }
            return Boolean.valueOf(z);
        } catch (Exception e) {
            Log.e(TAG, "Error getting device charging state.", e);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    protected static String getKernelVersion() throws Throwable {
        BufferedReader bufferedReader;
        Exception e;
        String property = System.getProperty(SystemProperties.OS_VERSION);
        BufferedReader bufferedReader2 = null;
        try {
            File file = new File("/proc/version");
            if (!file.canRead()) {
                return property;
            }
            bufferedReader = new BufferedReader(new FileReader(file));
            try {
                try {
                    String line = bufferedReader.readLine();
                    try {
                        bufferedReader.close();
                    } catch (IOException e2) {
                        Log.e(TAG, "Exception while attempting to read kernel information", e2);
                    }
                    return line;
                } catch (Exception e3) {
                    e = e3;
                    Log.e(TAG, "Exception while attempting to read kernel information", e);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e4) {
                            Log.e(TAG, "Exception while attempting to read kernel information", e4);
                        }
                    }
                    return property;
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e5) {
                        Log.e(TAG, "Exception while attempting to read kernel information", e5);
                    }
                }
                throw th;
            }
        } catch (Exception e6) {
            bufferedReader = null;
            e = e6;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            throw th;
        }
        Log.e(TAG, "Exception while attempting to read kernel information", e);
        if (bufferedReader != null) {
            bufferedReader.close();
        }
        return property;
    }

    protected static Boolean isRooted() {
        if (Build.TAGS != null && Build.TAGS.contains("test-keys")) {
            return true;
        }
        String[] strArr = {"/data/local/bin/su", "/data/local/su", "/data/local/xbin/su", "/sbin/su", "/su/bin", "/su/bin/su", "/system/app/SuperSU", "/system/app/SuperSU.apk", "/system/app/Superuser", "/system/app/Superuser.apk", "/system/bin/failsafe/su", "/system/bin/su", "/system/sd/xbin/su", "/system/xbin/daemonsu", "/system/xbin/su"};
        for (int i = 0; i < 15; i++) {
            try {
                if (new File(strArr[i]).exists()) {
                    return true;
                }
            } catch (Exception e) {
                Log.e(TAG, "Exception while attempting to detect whether the device is rooted", e);
            }
        }
        return false;
    }

    protected static boolean isExternalStorageMounted() {
        return Environment.getExternalStorageState().equals("mounted") && !Environment.isExternalStorageEmulated();
    }

    protected static Long getUnusedInternalStorage() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return Long.valueOf(((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize()));
        } catch (Exception e) {
            Log.e(TAG, "Error getting unused internal storage amount.", e);
            return null;
        }
    }

    protected static Long getTotalInternalStorage() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return Long.valueOf(((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()));
        } catch (Exception e) {
            Log.e(TAG, "Error getting total internal storage amount.", e);
            return null;
        }
    }

    protected static Long getUnusedExternalStorage() {
        try {
            if (!isExternalStorageMounted()) {
                return null;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return Long.valueOf(((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize()));
        } catch (Exception e) {
            Log.e(TAG, "Error getting unused external storage amount.", e);
            return null;
        }
    }

    protected static Long getTotalExternalStorage() {
        try {
            if (!isExternalStorageMounted()) {
                return null;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return Long.valueOf(((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()));
        } catch (Exception e) {
            Log.e(TAG, "Error getting total external storage amount.", e);
            return null;
        }
    }

    protected static DisplayMetrics getDisplayMetrics(Context context) {
        try {
            return context.getResources().getDisplayMetrics();
        } catch (Exception e) {
            Log.e(TAG, "Error getting DisplayMetrics.", e);
            return null;
        }
    }

    protected static String stringifyDate(Date date) {
        return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH).format(date);
    }

    protected static String getApplicationName(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i = applicationInfo.labelRes;
            if (i == 0) {
                if (applicationInfo.nonLocalizedLabel != null) {
                    return applicationInfo.nonLocalizedLabel.toString();
                }
                return null;
            }
            return context.getString(i);
        } catch (Exception e) {
            Log.e(TAG, "Error getting application name.", e);
            return null;
        }
    }

    protected static boolean isConnected(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
