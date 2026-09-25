package com.iiordanov.bVNC.input;

import android.content.res.Resources;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import androidx.core.view.InputDeviceCompat;
import com.iiordanov.bVNC.RemoteCanvas;
import com.undatech.opaque.SpiceCommunicator;
import com.undatech.opaque.util.GeneralUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteSpiceKeyboard extends RemoteKeyboard {
    static final int SCANCODE_ALTGR_MASK = 131072;
    static final int SCANCODE_CIRCUMFLEX_MASK = 262144;
    static final int SCANCODE_DIAERESIS_MASK = 524288;
    static final int SCANCODE_SHIFT_MASK = 65536;
    private static final String TAG = "RemoteSpiceKeyboard";
    static final int UNICODE_MASK = 1048576;
    static final int UNICODE_META_MASK = 1536000;
    protected RemoteCanvas canvas;
    private HashMap<Integer, Integer[]> table;

    public RemoteSpiceKeyboard(Resources resources, SpiceCommunicator spiceCommunicator, RemoteCanvas remoteCanvas, Handler handler, String str, boolean z) throws IOException {
        super(spiceCommunicator, remoteCanvas.getContext(), handler, z);
        this.canvas = remoteCanvas;
        this.table = loadKeyMap(resources, "layouts/" + str);
    }

    private HashMap<Integer, Integer[]> loadKeyMap(Resources resources, String str) throws IOException {
        InputStream inputStreamOpen;
        try {
            inputStreamOpen = resources.getAssets().open(str);
        } catch (IOException unused) {
            inputStreamOpen = resources.getAssets().open("layouts/English (US)");
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
        HashMap<Integer, Integer[]> map = new HashMap<>(500);
        for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
            String[] strArrSplit = line.split(" ");
            Integer[] numArr = new Integer[strArrSplit.length - 1];
            for (int i = 1; i < strArrSplit.length; i++) {
                numArr[i - 1] = Integer.valueOf(Integer.parseInt(strArrSplit[i]));
            }
            map.put(Integer.valueOf(Integer.parseInt(strArrSplit[0])), numArr);
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x002f  */
    private void setHardwareMetaState(int i, KeyEvent keyEvent, boolean z) {
        boolean z2 = keyEvent.getDeviceId() == 0;
        int scanCode = keyEvent.getScanCode();
        int i2 = 4096;
        int i3 = (scanCode == 29 || scanCode == 97) ? 4096 : 0;
        if (i != 23) {
            if (i != 57) {
                if (i != 58) {
                    i2 = i3;
                } else {
                    i2 = i3 | 32;
                }
            } else if (z2) {
                i2 = i3;
            } else {
                i2 = i3 | 2;
            }
        }
        if (!z) {
            this.hardwareMetaState &= ~i2;
        } else {
            this.hardwareMetaState |= i2;
        }
    }

    @Override // com.undatech.opaque.input.RemoteKeyboard
    protected int convertEventMetaState(KeyEvent keyEvent, int i) {
        int i2;
        int i3 = (keyEvent.getScanCode() == 0 || keyEvent.getDeviceId() != 0) ? 50 : 32;
        if ((i & CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_SHIFT_MASK");
            i2 = 1;
        } else {
            i2 = 0;
        }
        if ((i & 28672) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_CTRL_MASK");
            i2 |= 4096;
        }
        if ((i & i3) != 0) {
            GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: altMask: " + i3);
            i2 |= 2;
        }
        if ((458752 & i) == 0) {
            return i2;
        }
        GeneralUtils.debugLog(this.debugLog, TAG, "convertEventMetaState: KeyEvent.META_META_MASK");
        return i2 | 131072;
    }

    @Override // com.undatech.opaque.input.RemoteKeyboard
    public boolean processLocalKeyEvent(int i, KeyEvent keyEvent, int i2) {
        return keyEvent(i, keyEvent, i2);
    }

    public boolean keyEvent(int i, KeyEvent keyEvent, int i2) {
        Integer[] numArr;
        int action = keyEvent.getAction();
        int iConvertEventMetaState = 0;
        boolean z = action == 0;
        int iConvertEventMetaState2 = convertEventMetaState(keyEvent, keyEvent.getMetaState()) | i2;
        if (z && (i == 57 || i == 58 || i == 59 || i == 60)) {
            this.lastDownMetaState = iConvertEventMetaState2;
            return true;
        }
        setHardwareMetaState(i, keyEvent, z);
        if (i != 82 && !this.canvas.getPointer().hardwareButtonsAsMouseEvents(i, keyEvent, this.onScreenMetaState | iConvertEventMetaState2 | this.hardwareMetaState) && this.rfb != null && this.rfb.isInNormalProtocol()) {
            int i3 = this.onScreenMetaState | this.hardwareMetaState | iConvertEventMetaState2;
            if (action == 2) {
                String characters = keyEvent.getCharacters();
                if (characters != null) {
                    int length = characters.length();
                    for (int i4 = 0; i4 < length; i4++) {
                        if (!sendUnicode(characters.charAt(i4), i2)) {
                            writeKeyEvent(true, characters.charAt(i4), i3, true, true);
                        }
                    }
                }
            } else {
                int unicodeChar = keyEvent.getUnicodeChar(keyEvent.getMetaState() & (-1536001));
                if (unicodeChar > 0) {
                    if ((keyEvent.getMetaState() & 50) != 0) {
                        unicodeChar |= 1048576;
                        numArr = this.table.get(Integer.valueOf(unicodeChar));
                    } else {
                        numArr = null;
                    }
                    if (numArr == null || numArr.length == 0) {
                        unicodeChar = -1;
                    } else {
                        iConvertEventMetaState = convertEventMetaState(keyEvent, keyEvent.getMetaState() & (-244)) | this.onScreenMetaState | i2 | this.hardwareMetaState;
                    }
                }
                if (unicodeChar <= 0) {
                    unicodeChar = keyEvent.getUnicodeChar(keyEvent.getMetaState() & (-1536051));
                    iConvertEventMetaState = this.onScreenMetaState | i2 | this.hardwareMetaState | convertEventMetaState(keyEvent, keyEvent.getMetaState() & (-194));
                }
                int i5 = unicodeChar;
                if (i5 > 0) {
                    writeKeyEvent(true, i5, iConvertEventMetaState, z, false);
                } else {
                    Log.w(TAG, "Could not get unicode or determine scancodes for event. Keycode: " + keyEvent.getKeyCode());
                    writeKeyEvent(false, keyEvent.getKeyCode(), i3, z, false);
                }
            }
        }
        return true;
    }

    private void writeKeyEvent(boolean z, int i, int i2, boolean z2, boolean z3) {
        int i3;
        if (z2) {
            this.lastDownMetaState = i2;
        } else {
            this.lastDownMetaState = 0;
        }
        if (z) {
            i |= 1048576;
        }
        try {
            Integer[] numArr = this.table.get(Integer.valueOf(i));
            if (numArr == null) {
                Log.d(TAG, "Could not convert KeyCode to scan codes. Not sending key.");
                return;
            }
            for (Integer num : numArr) {
                int iIntValue = num.intValue();
                if ((65536 & iIntValue) != 0) {
                    Log.d(TAG, "Found Shift mask.");
                    i3 = i2 | 1;
                    iIntValue &= -65537;
                } else {
                    i3 = i2;
                }
                if ((131072 & iIntValue) != 0) {
                    Log.d(TAG, "Found AltGr mask.");
                    i3 |= 32;
                    iIntValue &= -131073;
                }
                this.rfb.writeKeyEvent(iIntValue, i3, z2);
                if (z3) {
                    this.rfb.writeKeyEvent(iIntValue, i3, false);
                    Log.d(TAG, "UNsetting lastDownMetaState");
                    this.lastDownMetaState = 0;
                }
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }

    @Override // com.iiordanov.bVNC.input.RemoteKeyboard
    public void sendMetaKey(MetaKeyBean metaKeyBean) {
        RemotePointer pointer = this.canvas.getPointer();
        int x = pointer.getX();
        int y = pointer.getY();
        if (metaKeyBean.isMouseClick()) {
            int mouseButtons = metaKeyBean.getMouseButtons();
            if (mouseButtons == 1) {
                pointer.leftButtonDown(x, y, metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState);
            } else if (mouseButtons == 2) {
                pointer.middleButtonDown(x, y, metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState);
            } else if (mouseButtons == 4) {
                pointer.rightButtonDown(x, y, metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState);
            } else if (mouseButtons == 8) {
                pointer.scrollUp(x, y, metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState);
            } else if (mouseButtons == 16) {
                pointer.scrollDown(x, y, metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState);
            }
            try {
                Thread.sleep(50L);
            } catch (InterruptedException unused) {
            }
            pointer.releaseButton(x, y, metaKeyBean.getMetaFlags() | this.onScreenMetaState | this.hardwareMetaState);
            return;
        }
        if (metaKeyBean.equals(MetaKeyBean.keyCtrlAltDel)) {
            writeKeyEvent(false, 112, InputDeviceCompat.SOURCE_TOUCHSCREEN, true, true);
        } else {
            sendKeySym(metaKeyBean.getKeySym(), metaKeyBean.getMetaFlags());
        }
    }
}
