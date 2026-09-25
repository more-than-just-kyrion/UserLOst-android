package com.iiordanov.bVNC;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.DrawableContainer;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public class AbstractBitmapDrawable extends DrawableContainer {
    Paint _blackPaint;
    public Paint _defaultPaint;
    Paint _whitePaint;
    AbstractBitmapData data;
    int hotX;
    int hotY;
    Bitmap softCursor;
    boolean softCursorInit;
    Rect toDraw;
    boolean drawing = false;
    RectF cursorRect = new RectF();
    Rect clipRect = new Rect();

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    AbstractBitmapDrawable(AbstractBitmapData abstractBitmapData) {
        this.data = abstractBitmapData;
        System.gc();
        this.softCursor = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        this.softCursorInit = false;
        Paint paint = new Paint();
        this._defaultPaint = paint;
        paint.setFilterBitmap(true);
        Paint paint2 = new Paint();
        this._whitePaint = paint2;
        paint2.setColor(-1);
        Paint paint3 = new Paint();
        this._blackPaint = paint3;
        paint3.setColor(ViewCompat.MEASURED_STATE_MASK);
    }

    void draw(Canvas canvas, int i, int i2) {
        try {
            synchronized (this) {
                canvas.drawBitmap(this.data.mbitmap, i, i2, this._defaultPaint);
                canvas.drawBitmap(this.softCursor, this.cursorRect.left, this.cursorRect.top, this._defaultPaint);
            }
        } catch (Throwable unused) {
        }
    }

    void setCursorRect(int i, int i2, float f, float f2, int i3, int i4) {
        this.hotX = i3;
        this.hotY = i4;
        this.cursorRect.left = i - i3;
        RectF rectF = this.cursorRect;
        rectF.right = rectF.left + f;
        this.cursorRect.top = i2 - this.hotY;
        RectF rectF2 = this.cursorRect;
        rectF2.bottom = rectF2.top + f2;
    }

    void moveCursorRect(int i, int i2) {
        setCursorRect(i, i2, this.cursorRect.width(), this.cursorRect.height(), this.hotX, this.hotY);
    }

    void setSoftCursor(int[] iArr) {
        Bitmap bitmap = this.softCursor;
        this.softCursor = Bitmap.createBitmap(iArr, (int) this.cursorRect.width(), (int) this.cursorRect.height(), Bitmap.Config.ARGB_8888);
        this.softCursorInit = true;
        bitmap.recycle();
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.data.framebufferheight;
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.data.framebufferwidth;
    }

    public void dispose() {
        this.drawing = false;
        Bitmap bitmap = this.softCursor;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.softCursor = null;
        this.cursorRect = null;
        this.clipRect = null;
        this.toDraw = null;
    }

    protected void startDrawing() {
        this.drawing = true;
    }
}
