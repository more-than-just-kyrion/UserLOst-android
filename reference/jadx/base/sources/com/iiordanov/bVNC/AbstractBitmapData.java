package com.iiordanov.bVNC;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.ImageView;
import com.undatech.opaque.RfbConnectable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractBitmapData {
    int[] bitmapPixels;
    int bitmapheight;
    int bitmapwidth;
    int framebufferheight;
    int framebufferwidth;
    Bitmap mbitmap;
    Canvas memGraphics;
    RfbConnectable rfb;
    RemoteCanvas vncCanvas;
    boolean waitingForInput;
    int xoffset = 0;
    int yoffset = 0;
    public AbstractBitmapDrawable drawable = createDrawable();
    public Paint paint = new Paint();

    public abstract void copyRect(int i, int i2, int i3, int i4, int i5, int i6);

    abstract AbstractBitmapDrawable createDrawable();

    abstract void drawRect(int i, int i2, int i3, int i4, Paint paint);

    public abstract void frameBufferSizeChanged();

    public abstract int offset(int i, int i2);

    public void prepareFullUpdateRequest(boolean z) {
    }

    abstract void scrollChanged(int i, int i2);

    abstract void syncScroll();

    public abstract void updateBitmap(int i, int i2, int i3, int i4);

    public abstract void updateBitmap(Bitmap bitmap, int i, int i2, int i3, int i4);

    public abstract boolean validDraw(int i, int i2, int i3, int i4);

    AbstractBitmapData(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas) {
        this.rfb = rfbConnectable;
        this.vncCanvas = remoteCanvas;
        this.framebufferwidth = rfbConnectable.framebufferWidth();
        this.framebufferheight = this.rfb.framebufferHeight();
    }

    synchronized void doneWaiting() {
        this.waitingForInput = false;
    }

    void setCursorRect(int i, int i2, int i3, int i4, int i5, int i6) {
        AbstractBitmapDrawable abstractBitmapDrawable = this.drawable;
        if (abstractBitmapDrawable != null) {
            abstractBitmapDrawable.setCursorRect(i, i2, i3, i4, i5, i6);
        }
    }

    void moveCursorRect(int i, int i2) {
        AbstractBitmapDrawable abstractBitmapDrawable = this.drawable;
        if (abstractBitmapDrawable != null) {
            abstractBitmapDrawable.moveCursorRect(i, i2);
        }
    }

    void setSoftCursor(int[] iArr) {
        AbstractBitmapDrawable abstractBitmapDrawable = this.drawable;
        if (abstractBitmapDrawable != null) {
            abstractBitmapDrawable.setSoftCursor(iArr);
        }
    }

    RectF getCursorRect() {
        AbstractBitmapDrawable abstractBitmapDrawable = this.drawable;
        if (abstractBitmapDrawable != null) {
            return abstractBitmapDrawable.cursorRect;
        }
        return new RectF();
    }

    boolean isNotInitSoftCursor() {
        AbstractBitmapDrawable abstractBitmapDrawable = this.drawable;
        if (abstractBitmapDrawable != null) {
            return !abstractBitmapDrawable.softCursorInit;
        }
        return false;
    }

    float getMinimumScale() {
        return Math.min(this.vncCanvas.getWidth() / this.framebufferwidth, this.vncCanvas.getHeight() / this.framebufferheight);
    }

    boolean widthRatioLessThanHeightRatio() {
        return ((float) this.vncCanvas.getWidth()) / ((float) this.framebufferwidth) < ((float) (this.vncCanvas.getHeight() / this.framebufferheight));
    }

    void setImageDrawable(ImageView imageView) {
        imageView.setImageDrawable(this.drawable);
    }

    void updateView(ImageView imageView) {
        imageView.invalidate();
    }

    public void fillRect(int i, int i2, int i3, int i4, int i5) {
        this.paint.setColor(i5);
        drawRect(i, i2, i3, i4, this.paint);
    }

    public void imageRect(int i, int i2, int i3, int i4, int[] iArr) {
        for (int i5 = 0; i5 < i4; i5++) {
            try {
                synchronized (this.mbitmap) {
                    try {
                        System.arraycopy(iArr, i3 * i5, this.bitmapPixels, offset(i, i2 + i5), i3);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (ArrayIndexOutOfBoundsException e) {
                e.printStackTrace();
            }
        }
        updateBitmap(i, i2, i3, i4);
    }

    void dispose() {
        AbstractBitmapDrawable abstractBitmapDrawable = this.drawable;
        if (abstractBitmapDrawable != null) {
            abstractBitmapDrawable.dispose();
        }
        this.drawable = null;
        Bitmap bitmap = this.mbitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.mbitmap = null;
        this.memGraphics = null;
        this.bitmapPixels = null;
    }

    public int fbWidth() {
        return this.framebufferwidth;
    }

    public int fbHeight() {
        return this.framebufferheight;
    }

    public int bmWidth() {
        return this.bitmapwidth;
    }

    public int bmHeight() {
        return this.bitmapheight;
    }

    public int getXoffset() {
        return this.xoffset;
    }

    public int getYoffset() {
        return this.yoffset;
    }
}
