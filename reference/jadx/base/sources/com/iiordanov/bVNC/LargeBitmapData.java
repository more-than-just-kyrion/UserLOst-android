package com.iiordanov.bVNC;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.Log;
import com.iiordanov.android.drawing.OverlappingCopy;
import com.iiordanov.android.drawing.RectList;
import com.iiordanov.util.ObjectPool;
import com.undatech.opaque.RfbConnectable;

/* JADX INFO: loaded from: classes2.dex */
class LargeBitmapData extends AbstractBitmapData {
    static int CAPACITY_MULTIPLIER = 18;
    private static ObjectPool<Rect> rectPool = new ObjectPool<Rect>() { // from class: com.iiordanov.bVNC.LargeBitmapData.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.iiordanov.util.ObjectPool
        public Rect itemForPool() {
            return new Rect();
        }
    };
    private Rect bitmapRect;
    private int capacity;
    private Paint defaultPaint;
    private int displayHeight;
    private int displayWidth;
    private RectList invalidList;
    private RectList pendingList;
    double scaleMultiplier;
    int scrolledToX;
    int scrolledToY;

    class LargeBitmapDrawable extends AbstractBitmapDrawable {
        LargeBitmapDrawable() {
            super(LargeBitmapData.this);
        }

        @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            synchronized (LargeBitmapData.this) {
                draw(canvas, LargeBitmapData.this.xoffset, LargeBitmapData.this.yoffset);
            }
        }
    }

    LargeBitmapData(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas, int i, int i2, int i3) {
        super(rfbConnectable, remoteCanvas);
        this.scaleMultiplier = 0.0d;
        this.capacity = i3;
        this.displayWidth = i;
        this.displayHeight = i2;
        initializeLargeBitmapData();
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    AbstractBitmapDrawable createDrawable() {
        return new LargeBitmapDrawable();
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    float getMinimumScale() {
        return Math.max(this.vncCanvas.getWidth() / this.bitmapwidth, this.vncCanvas.getHeight() / this.bitmapheight);
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void copyRect(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10 = i2;
        int i11 = 1;
        if (i10 > i4) {
            i8 = i10 + i6;
            i7 = i4;
        } else {
            i7 = (i4 + i6) - 1;
            i11 = -1;
            i8 = i10 - 1;
            i10 = (i10 + i6) - 1;
        }
        int i12 = i7;
        int i13 = i10;
        int i14 = i5;
        while (i13 != i8) {
            int iOffset = offset(i, i13);
            int iOffset2 = offset(i3, i12);
            int i15 = i - this.xoffset;
            int i16 = i15 < 0 ? 0 : i15;
            int i17 = i13 - this.yoffset;
            int i18 = i17 < 0 ? 0 : i17;
            if (i + i14 > this.bitmapwidth) {
                i14 = this.bitmapwidth - i;
            }
            int i19 = i14;
            try {
                try {
                    this.mbitmap.getPixels(this.bitmapPixels, iOffset, this.bitmapwidth, i16, i18, i19, 1);
                    i9 = i19;
                    try {
                        System.arraycopy(this.bitmapPixels, iOffset, this.bitmapPixels, iOffset2, i9);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                    }
                } catch (Exception e2) {
                    e = e2;
                    i9 = i19;
                }
            } catch (Exception e3) {
                e = e3;
                i9 = i19;
            }
            i12 += i11;
            i13 += i11;
            i14 = i9;
        }
        updateBitmap(i3, i4, i14, i6);
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    void drawRect(int i, int i2, int i3, int i4, Paint paint) {
        int i5 = i - this.xoffset;
        int i6 = i2 - this.yoffset;
        this.memGraphics.drawRect(i5, i6, i5 + i3, i6 + i4, paint);
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public int offset(int i, int i2) {
        return (((i2 - this.yoffset) * this.bitmapwidth) + i) - this.xoffset;
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    synchronized void scrollChanged(int i, int i2) {
        int i3 = this.scrolledToX;
        int i4 = this.scrolledToY;
        int visibleDesktopWidth = this.vncCanvas.getVisibleDesktopWidth();
        int visibleDesktopHeight = this.vncCanvas.getVisibleDesktopHeight();
        if (i - this.xoffset < 0) {
            i3 = (i + (visibleDesktopWidth / 2)) - (this.bitmapwidth / 2);
            if (i3 < 0) {
                i3 = 0;
            }
        } else if ((i - this.xoffset) + visibleDesktopWidth > this.bitmapwidth) {
            i3 = (i + (visibleDesktopWidth / 2)) - (this.bitmapwidth / 2);
            if (this.bitmapwidth + i3 > this.framebufferwidth) {
                i3 = this.framebufferwidth - this.bitmapwidth;
            }
        }
        if (i2 - this.yoffset < 0) {
            i4 = (i2 + (visibleDesktopHeight / 2)) - (this.bitmapheight / 2);
            if (i4 < 0) {
                i4 = 0;
            }
        } else if ((i2 - this.yoffset) + visibleDesktopHeight > this.bitmapheight) {
            i4 = (i2 + (visibleDesktopHeight / 2)) - (this.bitmapheight / 2);
            if (this.bitmapheight + i4 > this.framebufferheight) {
                i4 = this.framebufferheight - this.bitmapheight;
            }
        }
        if (i3 != this.scrolledToX || i4 != this.scrolledToY) {
            this.scrolledToX = i3;
            this.scrolledToY = i4;
            if (this.waitingForInput) {
                syncScroll();
            }
        }
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void updateBitmap(int i, int i2, int i3, int i4) {
        int i5 = i - this.xoffset;
        int i6 = i5 < 0 ? 0 : i5;
        int i7 = i2 - this.yoffset;
        int i8 = i7 < 0 ? 0 : i7;
        if (i + i3 > this.xoffset + this.bitmapwidth) {
            i3 = (this.xoffset + this.bitmapwidth) - i;
        }
        int i9 = i3;
        if (i2 + i4 > this.yoffset + this.bitmapheight) {
            i4 = (this.yoffset + this.bitmapheight) - i2;
        }
        try {
            this.mbitmap.setPixels(this.bitmapPixels, offset(i, i2), this.bitmapwidth, i6, i8, i9, i4);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void updateBitmap(Bitmap bitmap, int i, int i2, int i3, int i4) {
        this.memGraphics.drawBitmap(bitmap, i - this.xoffset, i2 - this.yoffset, (Paint) null);
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public synchronized boolean validDraw(int i, int i2, int i3, int i4) {
        boolean z;
        z = i - this.xoffset >= 0 && (i - this.xoffset) + i3 <= this.bitmapwidth && i2 - this.yoffset >= 0 && (i2 - this.yoffset) + i4 <= this.bitmapheight;
        ObjectPool.Entry<Rect> entryReserve = rectPool.reserve();
        Rect rect = entryReserve.get();
        rect.set(i, i2, i3 + i, i4 + i2);
        this.pendingList.subtract(rect);
        if (!z) {
            this.invalidList.add(rect);
        } else {
            this.invalidList.subtract(rect);
        }
        rectPool.release(entryReserve);
        return z;
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public synchronized void prepareFullUpdateRequest(boolean z) {
        if (!z) {
            ObjectPool.Entry<Rect> entryReserve = rectPool.reserve();
            Rect rect = entryReserve.get();
            rect.left = this.xoffset;
            rect.top = this.yoffset;
            rect.right = this.xoffset + this.bitmapwidth;
            rect.bottom = this.yoffset + this.bitmapheight;
            this.pendingList.add(rect);
            this.invalidList.add(rect);
            rectPool.release(entryReserve);
        }
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    synchronized void syncScroll() {
        boolean z;
        int i = this.xoffset - this.scrolledToX;
        int i2 = this.yoffset - this.scrolledToY;
        this.xoffset = this.scrolledToX;
        this.yoffset = this.scrolledToY;
        this.bitmapRect.top = this.scrolledToY;
        this.bitmapRect.bottom = this.scrolledToY + this.bitmapheight;
        this.bitmapRect.left = this.scrolledToX;
        this.bitmapRect.right = this.scrolledToX + this.bitmapwidth;
        this.invalidList.intersect(this.bitmapRect);
        if (i != 0 || i2 != 0) {
            if (Math.abs(i) >= this.bitmapwidth || Math.abs(i2) >= this.bitmapheight) {
                z = false;
            } else {
                ObjectPool.Entry<Rect> entryReserve = rectPool.reserve();
                ObjectPool.Entry<Rect> entryReserve2 = rectPool.reserve();
                try {
                    Rect rect = entryReserve2.get();
                    Rect rect2 = entryReserve.get();
                    rect2.set(i < 0 ? -i : 0, i2 < 0 ? -i2 : 0, i < 0 ? this.bitmapwidth : this.bitmapwidth - i, i2 < 0 ? this.bitmapheight : this.bitmapheight - i2);
                    if (this.invalidList.testIntersect(rect2)) {
                        z = false;
                    } else {
                        OverlappingCopy.Copy(this.mbitmap, this.memGraphics, this.defaultPaint, rect2, i + rect2.left, i2 + rect2.top, rectPool);
                        if (i != 0) {
                            rect.left = i < 0 ? this.bitmapRect.right + i : this.bitmapRect.left;
                            rect.right = rect.left + Math.abs(i);
                            rect.top = this.bitmapRect.top;
                            rect.bottom = this.bitmapRect.bottom;
                            this.invalidList.add(rect);
                        }
                        if (i2 != 0) {
                            rect.left = i < 0 ? this.bitmapRect.left : this.bitmapRect.left + i;
                            rect.top = i2 < 0 ? this.bitmapRect.bottom + i2 : this.bitmapRect.top;
                            rect.right = (rect.left + this.bitmapwidth) - Math.abs(i);
                            rect.bottom = rect.top + Math.abs(i2);
                            this.invalidList.add(rect);
                        }
                        z = true;
                    }
                } finally {
                    rectPool.release(entryReserve2);
                    rectPool.release(entryReserve);
                }
            }
            if (!z) {
                this.mbitmap.eraseColor(-16711936);
                this.vncCanvas.writeFullUpdateRequest(false);
            }
        }
        int size = this.pendingList.getSize();
        for (int i3 = 0; i3 < size; i3++) {
            this.invalidList.subtract(this.pendingList.get(i3));
        }
        int size2 = this.invalidList.getSize();
        for (int i4 = 0; i4 < size2; i4++) {
            Rect rect3 = this.invalidList.get(i4);
            this.rfb.writeFramebufferUpdateRequest(rect3.left, rect3.top, rect3.right - rect3.left, rect3.bottom - rect3.top, false);
            this.pendingList.add(rect3);
        }
        this.waitingForInput = true;
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void frameBufferSizeChanged() {
        this.xoffset = 0;
        this.yoffset = 0;
        this.scrolledToX = 0;
        this.scrolledToY = 0;
        this.framebufferwidth = this.rfb.framebufferWidth();
        this.framebufferheight = this.rfb.framebufferHeight();
        initializeLargeBitmapData();
    }

    void initializeLargeBitmapData() {
        while (CAPACITY_MULTIPLIER <= 30) {
            try {
                allocateObjects();
                return;
            } catch (Throwable unused) {
                CAPACITY_MULTIPLIER += 10;
                System.gc();
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused2) {
                }
            }
        }
        CAPACITY_MULTIPLIER = 1000;
        allocateObjects();
    }

    void allocateObjects() {
        dispose();
        this.invalidList = null;
        this.pendingList = null;
        this.bitmapRect = null;
        this.defaultPaint = null;
        System.gc();
        double dSqrt = Math.sqrt(((double) (this.capacity * 1048576)) / ((double) ((CAPACITY_MULTIPLIER * this.framebufferwidth) * this.framebufferheight)));
        this.scaleMultiplier = dSqrt;
        if (dSqrt > 1.0d) {
            this.scaleMultiplier = 1.0d;
        }
        this.bitmapwidth = (int) (((double) this.framebufferwidth) * this.scaleMultiplier);
        double d = this.bitmapwidth;
        int i = this.displayWidth;
        if (d < ((double) i) * 1.2d) {
            this.bitmapwidth = (int) (((double) i) * 1.2d);
        }
        this.bitmapheight = (int) (((double) this.framebufferheight) * this.scaleMultiplier);
        double d2 = this.bitmapheight;
        int i2 = this.displayHeight;
        if (d2 < ((double) i2) * 1.2d) {
            this.bitmapheight = (int) (((double) i2) * 1.2d);
        }
        Log.i("LBM", "bitmapsize = (" + this.bitmapwidth + "," + this.bitmapheight + ")");
        this.mbitmap = Bitmap.createBitmap(this.bitmapwidth, this.bitmapheight, Bitmap.Config.RGB_565);
        this.memGraphics = new Canvas(this.mbitmap);
        this.bitmapPixels = new int[this.bitmapwidth * this.bitmapheight];
        this.invalidList = new RectList(rectPool);
        this.pendingList = new RectList(rectPool);
        this.bitmapRect = new Rect(0, 0, this.bitmapwidth, this.bitmapheight);
        this.defaultPaint = new Paint();
        this.drawable = createDrawable();
        this.drawable.startDrawing();
    }
}
