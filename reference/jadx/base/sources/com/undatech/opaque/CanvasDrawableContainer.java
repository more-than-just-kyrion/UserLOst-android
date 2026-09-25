package com.undatech.opaque;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.DrawableContainer;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class CanvasDrawableContainer extends DrawableContainer {
    static final int CAPACITY_FACTOR = 7;
    protected Bitmap bitmap;
    private int bitmapH;
    private int bitmapW;
    private Bitmap.Config cfg;
    private RectF cursorRect;
    public Paint paint;
    private Bitmap softCursor;
    private boolean softCursorInit = false;

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    CanvasDrawableContainer(int i, int i2) {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        this.cfg = config;
        this.bitmapW = i;
        this.bitmapH = i2;
        if (i == 0) {
            this.bitmapW = 1;
        }
        if (i2 == 0) {
            this.bitmapH = 1;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.bitmapW, this.bitmapH, config);
        this.bitmap = bitmapCreateBitmap;
        bitmapCreateBitmap.setHasAlpha(false);
        this.cursorRect = new RectF();
        System.gc();
        this.softCursor = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setFilterBitmap(true);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        try {
            synchronized (this) {
                try {
                    canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, this.paint);
                    canvas.drawBitmap(this.softCursor, this.cursorRect.left, this.cursorRect.top, this.paint);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable unused) {
        }
    }

    void setCursorRect(int i, int i2, float f, float f2) {
        this.cursorRect.left = i;
        RectF rectF = this.cursorRect;
        rectF.right = rectF.left + f;
        this.cursorRect.top = i2;
        RectF rectF2 = this.cursorRect;
        rectF2.bottom = rectF2.top + f2;
    }

    void moveCursorRect(int i, int i2) {
        this.cursorRect.offsetTo(i, i2);
    }

    void setSoftCursor(int[] iArr) {
        Bitmap bitmap = this.softCursor;
        this.softCursor = Bitmap.createBitmap(iArr, (int) this.cursorRect.width(), (int) this.cursorRect.height(), Bitmap.Config.ARGB_8888);
        bitmap.recycle();
        this.softCursorInit = true;
    }

    RectF getCursorRect() {
        return this.cursorRect;
    }

    boolean isNotInitSoftCursor() {
        return this.softCursorInit;
    }

    float getMinimumScale(int i, int i2) {
        return Math.min(i / this.bitmapW, i2 / this.bitmapH);
    }

    public void destroy() {
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.bitmap = null;
        Bitmap bitmap2 = this.softCursor;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
        this.softCursor = null;
        this.cursorRect = null;
    }

    public void frameBufferSizeChanged(int i, int i2) {
        Log.i("CanvasDrawableContainer", "bitmapsize changed = (" + this.bitmapW + "," + this.bitmapH + ")");
        if (this.bitmapW < i || this.bitmapH < i) {
            destroy();
            System.gc();
            this.bitmapW = i;
            this.bitmapH = i2;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, this.cfg);
            this.bitmap = bitmapCreateBitmap;
            bitmapCreateBitmap.setHasAlpha(false);
        }
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.bitmapH;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.bitmapW;
    }
}
