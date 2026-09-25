package com.iiordanov.bVNC.input;

import android.os.Handler;
import com.iiordanov.bVNC.RemoteCanvas;
import com.undatech.opaque.RfbConnectable;
import org.apache.commons.compress.archivers.cpio.CpioConstants;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteRdpPointer extends RemotePointer {
    private static final int MOUSE_BUTTON_LEFT = 4096;
    private static final int MOUSE_BUTTON_MIDDLE = 16384;
    private static final int MOUSE_BUTTON_MOVE = 2048;
    private static final int MOUSE_BUTTON_NONE = 0;
    private static final int MOUSE_BUTTON_RIGHT = 8192;
    private static final int MOUSE_BUTTON_SCROLL_DOWN = 904;
    private static final int MOUSE_BUTTON_SCROLL_UP = 632;
    private static final int PTRFLAGS_WHEEL = 512;
    private static final int PTRFLAGS_WHEEL_NEGATIVE = 256;
    private static final String TAG = "RemoteRdpPointer";

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollLeft(int i, int i2, int i3) {
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollRight(int i, int i2, int i3) {
    }

    public RemoteRdpPointer(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas, Handler handler) {
        super(rfbConnectable, remoteCanvas, handler);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void leftButtonDown(int i, int i2, int i3) {
        this.pointerMask = CpioConstants.C_ISNWK;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void middleButtonDown(int i, int i2, int i3) {
        this.pointerMask = CpioConstants.C_ISSOCK;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void rightButtonDown(int i, int i2, int i3) {
        this.pointerMask = 40960;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollUp(int i, int i2, int i3) {
        this.pointerMask = 33400;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollDown(int i, int i2, int i3) {
        this.pointerMask = 33672;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void moveMouse(int i, int i2, int i3) {
        this.pointerMask = this.prevPointerMask | 2048;
        sendPointerEvent(i, i2, i3, true);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void moveMouseButtonDown(int i, int i2, int i3) {
        this.pointerMask = 34816;
        sendPointerEvent(i, i2, i3, true);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void moveMouseButtonUp(int i, int i2, int i3) {
        this.pointerMask = 2048;
        sendPointerEvent(i, i2, i3, true);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void releaseButton(int i, int i2, int i3) {
        this.pointerMask = 2048;
        sendPointerEvent(i, i2, i3, false);
        this.prevPointerMask = 0;
    }

    private void sendPointerEvent(int i, int i2, int i3, boolean z) {
        int metaState = i3 | this.canvas.getKeyboard().getMetaState();
        if (!z) {
            if (this.prevPointerMask != 0 && this.prevPointerMask != this.pointerMask) {
                this.protocomm.writePointerEvent(this.pointerX, this.pointerY, metaState, this.prevPointerMask & (-32769), false);
            }
            this.prevPointerMask = this.pointerMask;
        }
        this.canvas.invalidateMousePosition();
        this.pointerX = i;
        this.pointerY = i2;
        if (this.pointerX < 0) {
            this.pointerX = 0;
        } else if (this.pointerX >= this.canvas.getImageWidth()) {
            this.pointerX = this.canvas.getImageWidth() - 1;
        }
        if (this.pointerY < 0) {
            this.pointerY = 0;
        } else if (this.pointerY >= this.canvas.getImageHeight()) {
            this.pointerY = this.canvas.getImageHeight() - 1;
        }
        this.canvas.invalidateMousePosition();
        this.protocomm.writePointerEvent(this.pointerX, this.pointerY, metaState, this.pointerMask, false);
    }
}
