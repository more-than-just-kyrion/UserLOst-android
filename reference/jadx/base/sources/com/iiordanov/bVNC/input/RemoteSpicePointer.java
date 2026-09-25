package com.iiordanov.bVNC.input;

import android.os.Handler;
import androidx.exifinterface.media.ExifInterface;
import com.iiordanov.bVNC.RemoteCanvas;
import com.undatech.opaque.RfbConnectable;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteSpicePointer extends RemotePointer {
    public static final int SPICE_MOUSE_BUTTON_DOWN = 5;
    public static final int SPICE_MOUSE_BUTTON_LEFT = 1;
    public static final int SPICE_MOUSE_BUTTON_MIDDLE = 2;
    public static final int SPICE_MOUSE_BUTTON_MOVE = 0;
    public static final int SPICE_MOUSE_BUTTON_RIGHT = 3;
    public static final int SPICE_MOUSE_BUTTON_UP = 4;
    private static final String TAG = "RemoteSpicePointer";

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollLeft(int i, int i2, int i3) {
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollRight(int i, int i2, int i3) {
    }

    public RemoteSpicePointer(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas, Handler handler) {
        super(rfbConnectable, remoteCanvas, handler);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void leftButtonDown(int i, int i2, int i3) {
        this.pointerMask = 32769;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void middleButtonDown(int i, int i2, int i3) {
        this.pointerMask = 32770;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void rightButtonDown(int i, int i2, int i3) {
        this.pointerMask = 32771;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollUp(int i, int i2, int i3) {
        this.pointerMask = 32772;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void scrollDown(int i, int i2, int i3) {
        this.pointerMask = ExifInterface.DATA_PACK_BITS_COMPRESSED;
        sendPointerEvent(i, i2, i3, false);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void moveMouse(int i, int i2, int i3) {
        this.pointerMask = 0;
        sendPointerEvent(i, i2, i3, true);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void moveMouseButtonDown(int i, int i2, int i3) {
        this.pointerMask = 32768;
        sendPointerEvent(i, i2, i3, true);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void moveMouseButtonUp(int i, int i2, int i3) {
        this.pointerMask = 0;
        sendPointerEvent(i, i2, i3, true);
    }

    @Override // com.iiordanov.bVNC.input.RemotePointer
    public void releaseButton(int i, int i2, int i3) {
        this.pointerMask = this.prevPointerMask & (-32769);
        this.prevPointerMask = 0;
        sendPointerEvent(i, i2, i3, false);
    }

    private void clearPointerMaskEvent(int i, int i2, boolean z, int i3) {
        if (z) {
            return;
        }
        if (this.prevPointerMask != 0 && this.prevPointerMask != this.pointerMask) {
            this.protocomm.writePointerEvent(i, i2, i3, this.prevPointerMask & (-32769), this.relativeEvents);
        }
        this.prevPointerMask = this.pointerMask;
    }

    private void sendPointerEvent(int i, int i2, int i3, boolean z) {
        int metaState = i3 | this.canvas.getKeyboard().getMetaState();
        if (this.relativeEvents) {
            int i4 = i - this.pointerX;
            int i5 = i2 - this.pointerY;
            clearPointerMaskEvent(i4, i5, z, metaState);
            this.protocomm.writePointerEvent(i4, i5, metaState, this.pointerMask, this.relativeEvents);
            return;
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
        clearPointerMaskEvent(i, i2, z, metaState);
        this.protocomm.writePointerEvent(this.pointerX, this.pointerY, metaState, this.pointerMask, this.relativeEvents);
        this.canvas.invalidateMousePosition();
    }
}
