package com.iiordanov.bVNC.input;

import android.os.Handler;
import android.view.KeyEvent;
import androidx.core.view.InputDeviceCompat;
import com.iiordanov.bVNC.App;
import com.iiordanov.bVNC.RemoteCanvas;
import com.undatech.opaque.RfbConnectable;
import com.undatech.opaque.input.RdpKeyboardMapper;
import com.undatech.opaque.util.GeneralUtils;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteRdpKeyboard extends RemoteKeyboard {
    private static final String TAG = "RemoteRdpKeyboard";
    protected RemoteCanvas canvas;
    protected RdpKeyboardMapper keyboardMapper;

    public RemoteRdpKeyboard(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas, Handler handler, boolean z) {
        super(rfbConnectable, remoteCanvas.getContext(), handler, z);
        this.canvas = remoteCanvas;
        RdpKeyboardMapper rdpKeyboardMapper = new RdpKeyboardMapper();
        this.keyboardMapper = rdpKeyboardMapper;
        rdpKeyboardMapper.init(this.context);
        this.keyboardMapper.reset((RdpKeyboardMapper.KeyProcessingListener) rfbConnectable);
    }

    @Override // com.undatech.opaque.input.RemoteKeyboard
    public boolean processLocalKeyEvent(int i, KeyEvent keyEvent, int i2) {
        GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: " + keyEvent.toString() + " " + i);
        int i3 = 0;
        if (this.rfb == null || !this.rfb.isInNormalProtocol()) {
            return false;
        }
        RemotePointer pointer = this.canvas.getPointer();
        boolean z = keyEvent.getAction() == 0 || keyEvent.getAction() == 2;
        int iConvertEventMetaState = i2 | convertEventMetaState(keyEvent);
        if (i == 82 || pointer.hardwareButtonsAsMouseEvents(i, keyEvent, this.onScreenMetaState | iConvertEventMetaState | this.hardwareMetaState)) {
            return true;
        }
        keyEvent.getDeviceId();
        if (!z) {
            int scanCode = keyEvent.getScanCode();
            if (scanCode == 29 || scanCode == 97) {
                this.hardwareMetaState &= -4097;
            }
            if (i == 23) {
                this.hardwareMetaState &= -4097;
            }
        } else {
            int scanCode2 = keyEvent.getScanCode();
            if (scanCode2 == 29 || scanCode2 == 97) {
                this.hardwareMetaState |= 4096;
            }
            if (i == 23) {
                this.hardwareMetaState |= 4096;
            }
        }
        int i4 = iConvertEventMetaState | this.onScreenMetaState | this.hardwareMetaState;
        this.rfb.writeKeyEvent(i, i4, z);
        if (z) {
            this.lastDownMetaState = i4;
        } else {
            this.lastDownMetaState = 0;
        }
        if (i == 0) {
            String characters = keyEvent.getCharacters();
            GeneralUtils.debugLog(App.debugLog, TAG, "processLocalKeyEvent: getCharacters: " + characters);
            if (characters != null) {
                int length = characters.length();
                while (i3 < length) {
                    int i5 = i3 + 1;
                    this.keyboardMapper.processAndroidKeyEvent(new KeyEvent(keyEvent.getEventTime(), characters.substring(i3, i5), 4, 0));
                    i3 = i5;
                }
            }
            return true;
        }
        return this.keyboardMapper.processAndroidKeyEvent(keyEvent);
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
            int i = this.onScreenMetaState | this.hardwareMetaState;
            this.rfb.writeKeyEvent(0, InputDeviceCompat.SOURCE_TOUCHSCREEN, false);
            this.keyboardMapper.processAndroidKeyEvent(new KeyEvent(0, 112));
            this.keyboardMapper.processAndroidKeyEvent(new KeyEvent(1, 112));
            this.rfb.writeKeyEvent(0, i, false);
            return;
        }
        sendKeySym(metaKeyBean.getKeySym(), metaKeyBean.getMetaFlags());
    }
}
