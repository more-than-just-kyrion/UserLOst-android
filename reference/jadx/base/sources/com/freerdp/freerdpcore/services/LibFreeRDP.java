package com.freerdp.freerdpcore.services;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import androidx.collection.LongSparseArray;
import com.freerdp.freerdpcore.application.GlobalApp;
import com.freerdp.freerdpcore.application.SessionState;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.domain.ManualBookmark;
import com.freerdp.freerdpcore.presentation.ApplicationSettingsActivity;
import java.util.ArrayList;
import org.apache.commons.lang3.SystemProperties;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes.dex */
public class LibFreeRDP {
    private static final String TAG = "LibFreeRDP";
    private static EventListener listener = null;
    private static boolean mHasH264 = true;
    private static final LongSparseArray<Boolean> mInstanceState = new LongSparseArray<>();

    public interface EventListener {
        void OnConnectionFailure(long j);

        void OnConnectionSuccess(long j);

        void OnDisconnected(long j);

        void OnDisconnecting(long j);

        void OnPreConnect(long j);
    }

    public interface UIEventListener {
        boolean OnAuthenticate(StringBuilder sb, StringBuilder sb2, StringBuilder sb3);

        boolean OnGatewayAuthenticate(StringBuilder sb, StringBuilder sb2, StringBuilder sb3);

        void OnGraphicsResize(int i, int i2, int i3);

        void OnGraphicsUpdate(int i, int i2, int i3, int i4);

        void OnRemoteClipboardChanged(String str);

        void OnSettingsChanged(int i, int i2, int i3);

        int OnVerifiyCertificate(String str, String str2, String str3, String str4, boolean z);

        int OnVerifyChangedCertificate(String str, String str2, String str3, String str4, String str5, String str6, String str7);
    }

    private static native boolean freerdp_connect(long j);

    private static native boolean freerdp_disconnect(long j);

    private static native void freerdp_free(long j);

    private static native String freerdp_get_build_config();

    private static native String freerdp_get_build_date();

    private static native String freerdp_get_build_revision();

    private static native String freerdp_get_jni_version();

    private static native String freerdp_get_last_error_string(long j);

    private static native String freerdp_get_version();

    private static native long freerdp_new(Context context);

    private static native boolean freerdp_parse_arguments(long j, String[] strArr);

    private static native boolean freerdp_send_clipboard_data(long j, String str);

    private static native boolean freerdp_send_cursor_event(long j, int i, int i2, int i3);

    private static native boolean freerdp_send_key_event(long j, int i, boolean z);

    private static native boolean freerdp_send_unicodekey_event(long j, int i, boolean z);

    private static native boolean freerdp_update_graphics(long j, Bitmap bitmap, int i, int i2, int i3, int i4);

    static {
        String[] strArr = {"openh264", "freerdp-openssl", "ssl", "crypto", "jpeg", "winpr2", "freerdp2", "freerdp-client2", "freerdp-android2"};
        String property = System.getProperty(SystemProperties.JAVA_LIBRARY_PATH);
        for (int i = 0; i < 9; i++) {
            String str = strArr[i];
            try {
                Log.v(TAG, "Trying to load library " + str + " from LD_PATH: " + property);
                System.loadLibrary(str);
            } catch (UnsatisfiedLinkError e) {
                Log.e(TAG, "Failed to load library " + str + ": " + e.toString());
                if (str.equals("openh264")) {
                    mHasH264 = false;
                }
            }
        }
    }

    public static boolean hasH264Support() {
        return mHasH264;
    }

    public static void setEventListener(EventListener eventListener) {
        listener = eventListener;
    }

    public static long newInstance(Context context) {
        return freerdp_new(context);
    }

    public static void freeInstance(long j) {
        LongSparseArray<Boolean> longSparseArray = mInstanceState;
        synchronized (longSparseArray) {
            if (longSparseArray.get(j, false).booleanValue()) {
                freerdp_disconnect(j);
            }
            while (true) {
                LongSparseArray<Boolean> longSparseArray2 = mInstanceState;
                if (longSparseArray2.get(j, false).booleanValue()) {
                    try {
                        longSparseArray2.wait();
                    } catch (InterruptedException unused) {
                        throw new RuntimeException();
                    }
                }
            }
        }
        freerdp_free(j);
    }

    public static boolean connect(long j) {
        LongSparseArray<Boolean> longSparseArray = mInstanceState;
        synchronized (longSparseArray) {
            if (longSparseArray.get(j, false).booleanValue()) {
                throw new RuntimeException("instance already connected");
            }
        }
        return freerdp_connect(j);
    }

    public static boolean disconnect(long j) {
        LongSparseArray<Boolean> longSparseArray = mInstanceState;
        synchronized (longSparseArray) {
            if (!longSparseArray.get(j, false).booleanValue()) {
                return true;
            }
            return freerdp_disconnect(j);
        }
    }

    public static boolean cancelConnection(long j) {
        LongSparseArray<Boolean> longSparseArray = mInstanceState;
        synchronized (longSparseArray) {
            if (!longSparseArray.get(j, false).booleanValue()) {
                return true;
            }
            return freerdp_disconnect(j);
        }
    }

    private static String addFlag(String str, boolean z) {
        if (z) {
            return Marker.ANY_NON_NULL_MARKER + str;
        }
        return "-" + str;
    }

    public static boolean setConnectionInfo(Context context, long j, BookmarkBase bookmarkBase) {
        BookmarkBase.ScreenSettings activeScreenSettings = bookmarkBase.getActiveScreenSettings();
        BookmarkBase.AdvancedSettings advancedSettings = bookmarkBase.getAdvancedSettings();
        BookmarkBase.DebugSettings debugSettings = bookmarkBase.getDebugSettings();
        ArrayList arrayList = new ArrayList();
        arrayList.add(TAG);
        arrayList.add("/gdi:sw");
        String clientName = ApplicationSettingsActivity.getClientName(context);
        if (!clientName.isEmpty()) {
            arrayList.add("/client-hostname:" + clientName);
        }
        if (bookmarkBase.getType() != 1) {
            return false;
        }
        int port = ((ManualBookmark) bookmarkBase.get()).getPort();
        arrayList.add("/v:" + ((ManualBookmark) bookmarkBase.get()).getHostname());
        arrayList.add("/port:" + String.valueOf(port));
        String username = bookmarkBase.getUsername();
        if (!username.isEmpty()) {
            arrayList.add("/u:" + username);
        }
        String domain = bookmarkBase.getDomain();
        if (!domain.isEmpty()) {
            arrayList.add("/d:" + domain);
        }
        String password = bookmarkBase.getPassword();
        if (!password.isEmpty()) {
            arrayList.add("/p:" + password);
        }
        arrayList.add(String.format("/size:%dx%d", Integer.valueOf(activeScreenSettings.getWidth()), Integer.valueOf(activeScreenSettings.getHeight())));
        arrayList.add("/bpp:" + String.valueOf(activeScreenSettings.getColors()));
        if (advancedSettings.getConsoleMode()) {
            arrayList.add("/admin");
        }
        int security = advancedSettings.getSecurity();
        if (security == 1) {
            arrayList.add("/sec-rdp");
        } else if (security == 2) {
            arrayList.add("/sec-tls");
        } else if (security == 3) {
            arrayList.add("/sec-nla");
        }
        if (!"".isEmpty()) {
            arrayList.add("/cert-name:");
        }
        BookmarkBase.PerformanceFlags activePerformanceFlags = bookmarkBase.getActivePerformanceFlags();
        if (activePerformanceFlags.getRemoteFX()) {
            arrayList.add("/rfx");
        }
        if (activePerformanceFlags.getGfx()) {
            arrayList.add("/gfx");
        }
        if (activePerformanceFlags.getH264() && mHasH264) {
            arrayList.add("/gfx:AVC444");
        }
        arrayList.add(addFlag("wallpaper", activePerformanceFlags.getWallpaper()));
        arrayList.add(addFlag("window-drag", activePerformanceFlags.getFullWindowDrag()));
        arrayList.add(addFlag("menu-anims", activePerformanceFlags.getMenuAnimations()));
        arrayList.add(addFlag("themes", activePerformanceFlags.getTheming()));
        arrayList.add(addFlag("fonts", activePerformanceFlags.getFontSmoothing()));
        arrayList.add(addFlag("aero", activePerformanceFlags.getDesktopComposition()));
        arrayList.add(addFlag("glyph-cache", false));
        arrayList.add(addFlag("relax-order-checks", true));
        if (!advancedSettings.getRemoteProgram().isEmpty()) {
            arrayList.add("/shell:" + advancedSettings.getRemoteProgram());
        }
        if (!advancedSettings.getWorkDir().isEmpty()) {
            arrayList.add("/shell-dir:" + advancedSettings.getWorkDir());
        }
        arrayList.add(addFlag("async-channels", debugSettings.getAsyncChannel()));
        arrayList.add(addFlag("async-input", debugSettings.getAsyncInput()));
        arrayList.add(addFlag("async-update", debugSettings.getAsyncUpdate()));
        if (advancedSettings.getRedirectSDCard()) {
            arrayList.add("/drive:sdcard," + Environment.getExternalStorageDirectory().getPath());
        }
        arrayList.add("/clipboard");
        if (bookmarkBase.getType() == 1 && ((ManualBookmark) bookmarkBase.get()).getEnableGatewaySettings()) {
            ManualBookmark.GatewaySettings gatewaySettings = ((ManualBookmark) bookmarkBase.get()).getGatewaySettings();
            arrayList.add(String.format("/g:%s:%d", gatewaySettings.getHostname(), Integer.valueOf(gatewaySettings.getPort())));
            String username2 = gatewaySettings.getUsername();
            if (!username2.isEmpty()) {
                arrayList.add("/gu:" + username2);
            }
            String domain2 = gatewaySettings.getDomain();
            if (!domain2.isEmpty()) {
                arrayList.add("/gd:" + domain2);
            }
            String password2 = gatewaySettings.getPassword();
            if (!password2.isEmpty()) {
                arrayList.add("/gp:" + password2);
            }
        }
        arrayList.add("/audio-mode:" + String.valueOf(advancedSettings.getRedirectSound()));
        if (advancedSettings.getRedirectSound() == 0) {
            arrayList.add("/sound");
        }
        if (advancedSettings.getRedirectMicrophone()) {
            arrayList.add("/microphone");
        }
        arrayList.add("/log-level:" + debugSettings.getDebugLevel());
        return freerdp_parse_arguments(j, (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public static boolean setConnectionInfo(Context context, long j, Uri uri) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(TAG);
        arrayList.add("/gdi:sw");
        String clientName = ApplicationSettingsActivity.getClientName(context);
        if (!clientName.isEmpty()) {
            arrayList.add("/client-hostname:" + clientName);
        }
        String host = uri.getHost();
        int port = uri.getPort();
        if (host != null) {
            arrayList.add("/v:" + (host + (port == -1 ? "" : ":" + String.valueOf(port))));
        }
        String userInfo = uri.getUserInfo();
        if (userInfo != null) {
            arrayList.add("/u:" + userInfo);
        }
        for (String str : uri.getQueryParameterNames()) {
            String queryParameter = uri.getQueryParameter(str);
            if (queryParameter.isEmpty()) {
                arrayList.add("/" + str);
            } else if (queryParameter.equals("-") || queryParameter.equals(Marker.ANY_NON_NULL_MARKER)) {
                arrayList.add(queryParameter + str);
            } else {
                if (str.equals("drive") && queryParameter.equals("sdcard")) {
                    queryParameter = "sdcard," + Environment.getExternalStorageDirectory().getPath();
                }
                arrayList.add("/" + str + ":" + queryParameter);
            }
        }
        return freerdp_parse_arguments(j, (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public static boolean updateGraphics(long j, Bitmap bitmap, int i, int i2, int i3, int i4) {
        return freerdp_update_graphics(j, bitmap, i, i2, i3, i4);
    }

    public static boolean sendCursorEvent(long j, int i, int i2, int i3) {
        return freerdp_send_cursor_event(j, i, i2, i3);
    }

    public static boolean sendKeyEvent(long j, int i, boolean z) {
        return freerdp_send_key_event(j, i, z);
    }

    public static boolean sendUnicodeKeyEvent(long j, int i, boolean z) {
        return freerdp_send_unicodekey_event(j, i, z);
    }

    public static boolean sendClipboardData(long j, String str) {
        return freerdp_send_clipboard_data(j, str);
    }

    private static void OnConnectionSuccess(long j) {
        EventListener eventListener = listener;
        if (eventListener != null) {
            eventListener.OnConnectionSuccess(j);
        }
        LongSparseArray<Boolean> longSparseArray = mInstanceState;
        synchronized (longSparseArray) {
            longSparseArray.append(j, true);
            longSparseArray.notifyAll();
        }
    }

    private static void OnConnectionFailure(long j) {
        EventListener eventListener = listener;
        if (eventListener != null) {
            eventListener.OnConnectionFailure(j);
        }
        LongSparseArray<Boolean> longSparseArray = mInstanceState;
        synchronized (longSparseArray) {
            longSparseArray.remove(j);
            longSparseArray.notifyAll();
        }
    }

    private static void OnPreConnect(long j) {
        EventListener eventListener = listener;
        if (eventListener != null) {
            eventListener.OnPreConnect(j);
        }
    }

    private static void OnDisconnecting(long j) {
        EventListener eventListener = listener;
        if (eventListener != null) {
            eventListener.OnDisconnecting(j);
        }
    }

    private static void OnDisconnected(long j) {
        EventListener eventListener = listener;
        if (eventListener != null) {
            eventListener.OnDisconnected(j);
        }
        LongSparseArray<Boolean> longSparseArray = mInstanceState;
        synchronized (longSparseArray) {
            longSparseArray.remove(j);
            longSparseArray.notifyAll();
        }
    }

    private static void OnSettingsChanged(long j, int i, int i2, int i3) {
        UIEventListener uIEventListener;
        SessionState session = GlobalApp.getSession(j);
        if (session == null || (uIEventListener = session.getUIEventListener()) == null) {
            return;
        }
        uIEventListener.OnSettingsChanged(i, i2, i3);
    }

    private static boolean OnAuthenticate(long j, StringBuilder sb, StringBuilder sb2, StringBuilder sb3) {
        UIEventListener uIEventListener;
        SessionState session = GlobalApp.getSession(j);
        if (session == null || (uIEventListener = session.getUIEventListener()) == null) {
            return false;
        }
        return uIEventListener.OnAuthenticate(sb, sb2, sb3);
    }

    private static boolean OnGatewayAuthenticate(long j, StringBuilder sb, StringBuilder sb2, StringBuilder sb3) {
        UIEventListener uIEventListener;
        SessionState session = GlobalApp.getSession(j);
        if (session == null || (uIEventListener = session.getUIEventListener()) == null) {
            return false;
        }
        return uIEventListener.OnGatewayAuthenticate(sb, sb2, sb3);
    }

    private static int OnVerifyCertificate(long j, String str, String str2, String str3, String str4, boolean z) {
        UIEventListener uIEventListener;
        SessionState session = GlobalApp.getSession(j);
        if (session == null || (uIEventListener = session.getUIEventListener()) == null) {
            return 0;
        }
        return uIEventListener.OnVerifiyCertificate(str, str2, str3, str4, z);
    }

    private static int OnVerifyChangedCertificate(long j, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        UIEventListener uIEventListener;
        SessionState session = GlobalApp.getSession(j);
        if (session == null || (uIEventListener = session.getUIEventListener()) == null) {
            return 0;
        }
        return uIEventListener.OnVerifyChangedCertificate(str, str2, str3, str4, str5, str6, str7);
    }

    private static void OnGraphicsUpdate(long j, int i, int i2, int i3, int i4) {
        UIEventListener uIEventListener;
        SessionState session = GlobalApp.getSession(j);
        if (session == null || (uIEventListener = session.getUIEventListener()) == null) {
            return;
        }
        uIEventListener.OnGraphicsUpdate(i, i2, i3, i4);
    }

    private static void OnGraphicsResize(long j, int i, int i2, int i3) {
        UIEventListener uIEventListener;
        SessionState session = GlobalApp.getSession(j);
        if (session == null || (uIEventListener = session.getUIEventListener()) == null) {
            return;
        }
        uIEventListener.OnGraphicsResize(i, i2, i3);
    }

    private static void OnRemoteClipboardChanged(long j, String str) {
        UIEventListener uIEventListener;
        SessionState session = GlobalApp.getSession(j);
        if (session == null || (uIEventListener = session.getUIEventListener()) == null) {
            return;
        }
        uIEventListener.OnRemoteClipboardChanged(str);
    }

    public static String getVersion() {
        return freerdp_get_version();
    }
}
