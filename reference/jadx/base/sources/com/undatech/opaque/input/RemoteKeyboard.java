package com.undatech.opaque.input;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import com.undatech.opaque.RfbConnectable;
import com.undatech.opaque.util.GeneralUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RemoteKeyboard {
    public static final int ALT_MASK = 2;
    public static final int CTRL_MASK = 4096;
    public static final int RALT_MASK = 32;
    public static final int RCTRL_MASK = 16384;
    public static final int RSHIFT_MASK = 128;
    public static final int RSUPER_MASK = 262144;
    public static final int SCAN_DELETE = 111;
    public static final int SCAN_ESC = 1;
    public static final int SCAN_F1 = 59;
    public static final int SCAN_F10 = 68;
    public static final int SCAN_F2 = 60;
    public static final int SCAN_F3 = 61;
    public static final int SCAN_F4 = 62;
    public static final int SCAN_F5 = 63;
    public static final int SCAN_F6 = 64;
    public static final int SCAN_F7 = 65;
    public static final int SCAN_F8 = 66;
    public static final int SCAN_F9 = 67;
    public static final int SCAN_LEFTALT = 56;
    public static final int SCAN_LEFTCTRL = 29;
    public static final int SCAN_LEFTSHIFT = 42;
    public static final int SCAN_LEFTSUPER = 125;
    public static final int SCAN_RIGHTALT = 100;
    public static final int SCAN_RIGHTCTRL = 97;
    public static final int SCAN_RIGHTSHIFT = 54;
    public static final int SCAN_RIGHTSUPER = 126;
    public static final int SHIFT_MASK = 1;
    public static final int SUPER_MASK = 131072;
    private static final String TAG = "RemoteKeyboard";
    protected boolean afterMenu;
    protected Context context;
    protected Handler handler;
    protected KeyRepeater keyRepeater;
    protected int lastKeyDown;
    protected RfbConnectable rfb;
    protected int hardwareMetaState = 0;
    boolean cameraButtonDown = false;
    protected int onScreenMetaState = 0;
    protected int lastDownMetaState = 0;
    protected boolean debugLog = false;

    public abstract boolean processLocalKeyEvent(int i, KeyEvent keyEvent, int i2);

    public RemoteKeyboard(RfbConnectable rfbConnectable, Context context, Handler handler, boolean z) {
        this.rfb = rfbConnectable;
        this.context = context;
        this.handler = handler;
        this.keyRepeater = new KeyRepeater(this, handler);
    }

    public boolean keyEvent(int i, KeyEvent keyEvent) {
        return processLocalKeyEvent(i, keyEvent, 0);
    }

    public void repeatKeyEvent(int i, KeyEvent keyEvent) {
        this.keyRepeater.start(i, keyEvent);
    }

    public void stopRepeatingKeyEvent() {
        this.keyRepeater.stop();
    }

    public boolean onScreenCtrlToggle() {
        int i = this.onScreenMetaState;
        if (i == (i | 4096)) {
            onScreenCtrlOff();
            return false;
        }
        this.onScreenMetaState = i | 4096;
        return true;
    }

    public void onScreenCtrlOff() {
        this.onScreenMetaState &= -4097;
    }

    public boolean onScreenAltToggle() {
        int i = this.onScreenMetaState;
        if (i == (i | 2)) {
            onScreenAltOff();
            return false;
        }
        this.onScreenMetaState = i | 2;
        return true;
    }

    public void onScreenAltOff() {
        this.onScreenMetaState &= -3;
    }

    public boolean onScreenSuperToggle() {
        int i = this.onScreenMetaState;
        if (i == (i | 131072)) {
            onScreenSuperOff();
            return false;
        }
        this.onScreenMetaState = i | 131072;
        return true;
    }

    public void onScreenSuperOff() {
        this.onScreenMetaState &= -131073;
    }

    public boolean onScreenShiftToggle() {
        int i = this.onScreenMetaState;
        if (i == (i | 1)) {
            onScreenShiftOff();
            return false;
        }
        this.onScreenMetaState = i | 1;
        return true;
    }

    public void onScreenShiftOff() {
        this.onScreenMetaState &= -2;
    }

    public int getMetaState() {
        return this.onScreenMetaState | this.lastDownMetaState;
    }

    public void setAfterMenu(boolean z) {
        this.afterMenu = z;
    }

    public boolean getCameraButtonDown() {
        return this.cameraButtonDown;
    }

    public void clearMetaState() {
        this.onScreenMetaState = 0;
    }

    public void sendText(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isISOControl(cCharAt)) {
                KeyEvent keyEvent = new KeyEvent(SystemClock.uptimeMillis(), str.substring(i, i + 1), 4, 0);
                keyEvent(keyEvent.getKeyCode(), keyEvent);
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException unused) {
                }
            } else if (cCharAt == '\n') {
                keyEvent(66, new KeyEvent(0, 66));
                try {
                    Thread.sleep(10L);
                } catch (InterruptedException unused2) {
                }
                keyEvent(66, new KeyEvent(1, 66));
            }
        }
    }

    public void sendKeySym(int i, int i2) {
        sendUnicode((char) XKeySymCoverter.keysym2ucs(i), i2);
    }

    public boolean sendUnicode(char c, int i) {
        KeyCharacterMap keyCharacterMapLoad = KeyCharacterMap.load(4);
        KeyCharacterMap keyCharacterMapLoad2 = KeyCharacterMap.load(-1);
        char[] cArr = {c};
        KeyEvent[] events = keyCharacterMapLoad.getEvents(cArr);
        if (events == null) {
            events = keyCharacterMapLoad2.getEvents(cArr);
        }
        if (events != null) {
            if (events.length > 0) {
                KeyEvent keyEvent = events[0];
                processLocalKeyEvent(keyEvent.getKeyCode(), keyEvent, i);
                KeyEvent keyEvent2 = new KeyEvent(1, keyEvent.getKeyCode());
                processLocalKeyEvent(keyEvent2.getKeyCode(), keyEvent2, i);
                return true;
            }
        } else {
            Log.e(TAG, "Could not use any keymap to generate KeyEvent for unicode: " + c);
        }
        return false;
    }

    protected int convertEventMetaState(KeyEvent keyEvent) {
        return convertEventMetaState(keyEvent, keyEvent.getMetaState());
    }

    protected int convertEventMetaState(KeyEvent keyEvent, int i) {
        int i2;
        int i3 = 0;
        if (keyEvent.getScanCode() == 0 || keyEvent.getDeviceId() != 0) {
            i2 = 16;
        } else {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: Ignoring KeyEvent.META_ALT_LEFT_ON to allow for symbol input.");
            i2 = 0;
        }
        int i4 = 1;
        if ((i & 1) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_SHIFT_ON");
            i3 = 1;
        }
        if ((i & 64) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_SHIFT_LEFT_ON");
        } else {
            i4 = i3;
        }
        if ((i & 128) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_SHIFT_RIGHT_ON");
            i4 |= 128;
        }
        if ((i & 4096) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_CTRL_ON");
            i4 |= 4096;
        }
        if ((i & 8192) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_CTRL_LEFT_ON");
            i4 |= 4096;
        }
        if ((i & 16384) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_CTRL_RIGHT_ON");
            i4 |= 16384;
        }
        if ((i & 2) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_ALT_ON");
            i4 |= 2;
        }
        if ((i2 & i) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_ALT_LEFT_ON");
            i4 |= 2;
        }
        if ((i & 32) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_ALT_RIGHT_ON");
            i4 |= 32;
        }
        if ((65536 & i) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_META_ON");
            i4 |= 131072;
        }
        if ((i & 131072) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_META_LEFT_ON");
            i4 |= 131072;
        }
        if ((i & 262144) == 0) {
            return i4;
        }
        GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_META_RIGHT_ON");
        return i4 | 262144;
    }
}
