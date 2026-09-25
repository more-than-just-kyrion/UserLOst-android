package com.undatech.opaque;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.freerdp.freerdpcore.application.GlobalApp;
import com.freerdp.freerdpcore.application.SessionState;
import com.freerdp.freerdpcore.domain.BookmarkBase;
import com.freerdp.freerdpcore.domain.ManualBookmark;
import com.freerdp.freerdpcore.services.LibFreeRDP;
import com.undatech.opaque.input.RdpKeyboardMapper;
import com.undatech.opaque.util.GeneralUtils;
import io.sentry.marshaller.json.JsonMarshaller;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.HashMap;
import org.spongycastle.i18n.TextBundle;

/* JADX INFO: loaded from: classes2.dex */
public class RdpCommunicator implements RfbConnectable, RdpKeyboardMapper.KeyProcessingListener, LibFreeRDP.UIEventListener, LibFreeRDP.EventListener {
    static final String TAG = "RdpCommunicator";
    private static final int VK_CONTROL = 17;
    private static final int VK_EXT_KEY = 256;
    private static final int VK_LCONTROL = 162;
    private static final int VK_LMENU = 164;
    private static final int VK_LSHIFT = 160;
    private static final int VK_LWIN = 91;
    private static final int VK_RCONTROL = 163;
    private static final int VK_RMENU = 165;
    private static final int VK_RSHIFT = 161;
    private static final int VK_RWIN = 92;
    private BookmarkBase bookmark;
    private Context context;
    private boolean debugLogging;
    private String domain;
    private final Handler handler;
    private final RdpCommunicator myself;
    private String password;
    private SessionState session;
    private String username;
    private final Viewable viewable;
    private int metaState = 0;
    private boolean isInNormalProtocol = false;
    private boolean certificateAccepted = false;
    private boolean reattemptWithoutCredentials = true;
    private boolean authenticationAttempted = false;
    private boolean disconnectRequested = false;
    private GlobalApp freeRdpApp = new GlobalApp();

    @Override // com.undatech.opaque.input.RdpKeyboardMapper.KeyProcessingListener
    public void modifiersChanged() {
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void requestResolution(int i, int i2) {
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void requestUpdate(boolean z) {
    }

    @Override // com.undatech.opaque.input.RdpKeyboardMapper.KeyProcessingListener
    public void switchKeyboard(int i) {
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writeFramebufferUpdateRequest(int i, int i2, int i3, int i4, boolean z) {
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writeSetPixelFormat(int i, int i2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z3) {
    }

    public RdpCommunicator(Context context, Handler handler, Viewable viewable, String str, String str2, String str3, boolean z) {
        this.debugLogging = false;
        patchFreeRdpCore();
        this.bookmark = new ManualBookmark();
        this.context = context;
        this.handler = handler;
        this.viewable = viewable;
        this.myself = this;
        this.username = str;
        this.domain = str2;
        this.password = str3;
        this.debugLogging = z;
        initSession(str, str2, str3);
    }

    private void patchFreeRdpCore() {
        Class<?> cls = this.freeRdpApp.getClass();
        try {
            Log.i(TAG, "Initializing sessionMap in GlobalApp");
            Field declaredField = cls.getDeclaredField("sessionMap");
            declaredField.setAccessible(true);
            declaredField.set(this.freeRdpApp, Collections.synchronizedMap(new HashMap()));
        } catch (IllegalAccessException unused) {
            Log.e(TAG, "The field sessionMap in GlobalApp was not accessible despite our attempts");
        } catch (NoSuchFieldException unused2) {
            Log.e(TAG, "There is no longer a sessionMap field in GlobalApp");
        }
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void setIsInNormalProtocol(boolean z) {
        Log.d(TAG, "setIsInNormalProtocol: " + z);
        this.isInNormalProtocol = z;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public int framebufferWidth() {
        return this.session.getBookmark().getActiveScreenSettings().getWidth();
    }

    @Override // com.undatech.opaque.RfbConnectable
    public int framebufferHeight() {
        return this.session.getBookmark().getActiveScreenSettings().getHeight();
    }

    @Override // com.undatech.opaque.RfbConnectable
    public String desktopName() {
        return ((ManualBookmark) this.session.getBookmark()).getHostname();
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writeClientCutText(String str) {
        LibFreeRDP.sendClipboardData(this.session.getInstance(), str);
    }

    @Override // com.undatech.opaque.RfbConnectable
    public boolean isInNormalProtocol() {
        return this.isInNormalProtocol;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public String getEncoding() {
        return "RDP";
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writePointerEvent(int i, int i2, int i3, int i4, boolean z) {
        this.metaState = i3;
        int i5 = 32768 & i4;
        if (i5 != 0) {
            sendModifierKeys(true);
        }
        try {
            Thread.sleep(5L);
        } catch (InterruptedException unused) {
        }
        LibFreeRDP.sendCursorEvent(this.session.getInstance(), i, i2, i4);
        if (i5 == 0) {
            sendModifierKeys(false);
        }
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void writeKeyEvent(int i, int i2, boolean z) {
        this.metaState = i2;
    }

    public class DisconnectThread extends Thread {
        long instance;

        public DisconnectThread(long j) {
            this.instance = j;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            LibFreeRDP.disconnect(this.instance);
        }
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void close() {
        setIsInNormalProtocol(false);
        this.disconnectRequested = true;
        new DisconnectThread(this.session.getInstance()).start();
    }

    @Override // com.undatech.opaque.RfbConnectable
    public boolean isCertificateAccepted() {
        return this.certificateAccepted;
    }

    @Override // com.undatech.opaque.RfbConnectable
    public void setCertificateAccepted(boolean z) {
        this.certificateAccepted = z;
    }

    private void sendModifierKeys(boolean z) {
        if ((this.metaState & 4096) != 0) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused) {
            }
            LibFreeRDP.sendKeyEvent(this.session.getInstance(), 162, z);
        }
        if ((this.metaState & 16384) != 0) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused2) {
            }
            LibFreeRDP.sendKeyEvent(this.session.getInstance(), 163, z);
        }
        if ((this.metaState & 2) != 0) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused3) {
            }
            LibFreeRDP.sendKeyEvent(this.session.getInstance(), 164, z);
        }
        if ((this.metaState & 32) != 0) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused4) {
            }
            LibFreeRDP.sendKeyEvent(this.session.getInstance(), 165, z);
        }
        if ((this.metaState & 131072) != 0) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused5) {
            }
            LibFreeRDP.sendKeyEvent(this.session.getInstance(), 347, z);
        }
        if ((this.metaState & 262144) != 0) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused6) {
            }
            LibFreeRDP.sendKeyEvent(this.session.getInstance(), 348, z);
        }
        if ((this.metaState & 1) != 0) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused7) {
            }
            LibFreeRDP.sendKeyEvent(this.session.getInstance(), 160, z);
        }
        if ((this.metaState & 128) != 0) {
            try {
                Thread.sleep(5L);
            } catch (InterruptedException unused8) {
            }
            LibFreeRDP.sendKeyEvent(this.session.getInstance(), 161, z);
        }
    }

    @Override // com.undatech.opaque.input.RdpKeyboardMapper.KeyProcessingListener
    public void processVirtualKey(int i, boolean z) {
        GeneralUtils.debugLog(this.debugLogging, TAG, "processVirtualKey: Sending VK key: " + i + ". Is it down: " + z);
        if (z) {
            sendModifierKeys(true);
        }
        try {
            Thread.sleep(5L);
        } catch (InterruptedException unused) {
        }
        LibFreeRDP.sendKeyEvent(this.session.getInstance(), i, z);
        if (z) {
            return;
        }
        sendModifierKeys(false);
    }

    @Override // com.undatech.opaque.input.RdpKeyboardMapper.KeyProcessingListener
    public void processUnicodeKey(int i) {
        sendModifierKeys(true);
        try {
            Thread.sleep(5L);
        } catch (InterruptedException unused) {
        }
        LibFreeRDP.sendUnicodeKeyEvent(this.session.getInstance(), i, true);
        LibFreeRDP.sendUnicodeKeyEvent(this.session.getInstance(), i, false);
        sendModifierKeys(false);
    }

    private void initSession(String str, String str2, String str3) {
        this.bookmark.setUsername(str);
        this.bookmark.setDomain(str2);
        this.bookmark.setPassword(str3);
        SessionState sessionStateCreateSession = GlobalApp.createSession(this.bookmark, this.context);
        this.session = sessionStateCreateSession;
        sessionStateCreateSession.setUIEventListener(this);
        LibFreeRDP.setEventListener(this);
    }

    public void setConnectionParameters(String str, int i, String str2, int i2, int i3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i4, boolean z9, boolean z10, boolean z11, boolean z12) {
        ((ManualBookmark) this.bookmark.get()).setLabel(str2);
        ((ManualBookmark) this.bookmark.get()).setHostname(str);
        ((ManualBookmark) this.bookmark.get()).setPort(i);
        this.bookmark.getDebugSettings().setDebugLevel("INFO");
        BookmarkBase.ScreenSettings activeScreenSettings = this.bookmark.getActiveScreenSettings();
        activeScreenSettings.setWidth(i2);
        activeScreenSettings.setHeight(i3);
        activeScreenSettings.setColors(16);
        BookmarkBase.PerformanceFlags performanceFlags = this.bookmark.getPerformanceFlags();
        performanceFlags.setRemoteFX(z10);
        performanceFlags.setWallpaper(z);
        performanceFlags.setFontSmoothing(z2);
        performanceFlags.setDesktopComposition(z3);
        performanceFlags.setFullWindowDrag(z4);
        performanceFlags.setMenuAnimations(z5);
        performanceFlags.setTheming(z6);
        performanceFlags.setGfx(z11);
        performanceFlags.setH264(z12);
        BookmarkBase.AdvancedSettings advancedSettings = this.bookmark.getAdvancedSettings();
        advancedSettings.setRedirectSDCard(z7);
        advancedSettings.setConsoleMode(z8);
        advancedSettings.setRedirectSound(i4);
        advancedSettings.setRedirectMicrophone(z9);
        advancedSettings.setSecurity(0);
    }

    public void connect() {
        this.session.connect(this.context);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnPreConnect(long j) {
        Log.v(TAG, "OnPreConnect");
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnConnectionSuccess(long j) {
        Log.v(TAG, "OnConnectionSuccess");
        this.reattemptWithoutCredentials = false;
        this.authenticationAttempted = false;
        this.myself.setIsInNormalProtocol(true);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnConnectionFailure(long j) {
        Log.v(TAG, "OnConnectionFailure");
        this.myself.setIsInNormalProtocol(false);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnDisconnecting(long j) {
        Log.v(TAG, "OnDisconnecting, reattemptWithoutCredentials: " + this.reattemptWithoutCredentials + ", authenticationAttempted: " + this.authenticationAttempted + ", disconnectRequested: " + this.disconnectRequested + ", isInNormalProtocol: " + this.myself.isInNormalProtocol());
        if (this.reattemptWithoutCredentials && !this.myself.isInNormalProtocol()) {
            this.reattemptWithoutCredentials = false;
            initSession("", "", "");
            connect();
            return;
        }
        if (this.authenticationAttempted && !this.myself.isInNormalProtocol()) {
            Log.v(TAG, "Sending message: RDP_AUTH_FAILED");
            this.handler.sendEmptyMessage(19);
        } else if (!this.disconnectRequested && !this.myself.isInNormalProtocol()) {
            Log.v(TAG, "Sending message: RDP_UNABLE_TO_CONNECT");
            this.handler.sendEmptyMessage(8);
        } else {
            if (this.disconnectRequested) {
                return;
            }
            this.myself.setIsInNormalProtocol(false);
            Log.v(TAG, "Sending message: RDP_CONNECT_FAILURE");
            this.handler.sendEmptyMessage(7);
        }
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.EventListener
    public void OnDisconnected(long j) {
        Log.v(TAG, "OnDisconnected");
        if (!this.myself.isInNormalProtocol()) {
            Log.v(TAG, "Sending message: RDP_UNABLE_TO_CONNECT");
            this.handler.sendEmptyMessage(8);
        } else {
            Log.v(TAG, "Sending message: RDP_CONNECT_FAILURE");
            this.handler.sendEmptyMessage(7);
        }
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public void OnSettingsChanged(int i, int i2, int i3) {
        Log.d(TAG, "OnSettingsChanged called, wxh: " + i + "x" + i2);
        this.viewable.reallocateDrawable(i, i2);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public boolean OnAuthenticate(StringBuilder sb, StringBuilder sb2, StringBuilder sb3) {
        Log.d(TAG, "OnAuthenticate called.");
        this.authenticationAttempted = true;
        sb.setLength(0);
        sb2.setLength(0);
        sb3.setLength(0);
        sb.append(this.username);
        sb2.append(this.domain);
        sb3.append(this.password);
        return true;
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public int OnVerifiyCertificate(String str, String str2, String str3, String str4, boolean z) {
        Log.d(TAG, "OnVerifiyCertificate called.");
        Message message = new Message();
        message.setTarget(this.handler);
        message.what = 3;
        Bundle bundle = new Bundle();
        bundle.putString("subject", str2);
        bundle.putString("issuer", str3);
        bundle.putString(JsonMarshaller.FINGERPRINT, str4);
        message.obj = bundle;
        this.handler.sendMessage(message);
        synchronized (this) {
            while (!this.certificateAccepted) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
        return 1;
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public boolean OnGatewayAuthenticate(StringBuilder sb, StringBuilder sb2, StringBuilder sb3) {
        Log.d(TAG, "OnGatewayAuthenticate called.");
        return OnAuthenticate(sb, sb2, sb3);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public int OnVerifyChangedCertificate(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Log.d(TAG, "OnVerifyChangedCertificate called.");
        return OnVerifiyCertificate(str, str2, str3, str4, true);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public void OnGraphicsUpdate(int i, int i2, int i3, int i4) {
        Bitmap bitmap;
        Viewable viewable = this.viewable;
        if (viewable == null || this.session == null || (bitmap = viewable.getBitmap()) == null) {
            return;
        }
        LibFreeRDP.updateGraphics(this.session.getInstance(), bitmap, i, i2, i3, i4);
        this.viewable.reDraw(i, i2, i3, i4);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public void OnGraphicsResize(int i, int i2, int i3) {
        Log.d(TAG, "OnGraphicsResize called.");
        OnSettingsChanged(i, i2, i3);
    }

    @Override // com.freerdp.freerdpcore.services.LibFreeRDP.UIEventListener
    public void OnRemoteClipboardChanged(String str) {
        Log.d(TAG, "OnRemoteClipboardChanged called.");
        Message message = new Message();
        message.setTarget(this.handler);
        message.what = 43;
        Bundle bundle = new Bundle();
        bundle.putString(TextBundle.TEXT_ENTRY, str);
        message.obj = bundle;
        this.handler.sendMessage(message);
    }
}
