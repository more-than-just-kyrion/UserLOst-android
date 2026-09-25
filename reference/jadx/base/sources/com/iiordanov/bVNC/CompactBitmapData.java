package com.iiordanov.bVNC;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Log;
import com.undatech.opaque.RfbConnectable;

/* JADX INFO: loaded from: classes2.dex */
class CompactBitmapData extends AbstractBitmapData {
    static final int CAPACITY_MULTIPLIER = 7;
    private static final String TAG = "CompactBitmapData";
    Bitmap.Config cfg;

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    void scrollChanged(int i, int i2) {
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    void syncScroll() {
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public boolean validDraw(int i, int i2, int i3, int i4) {
        return true;
    }

    class CompactBitmapDrawable extends AbstractBitmapDrawable {
        CompactBitmapDrawable() {
            super(CompactBitmapData.this);
        }

        @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            try {
                synchronized (this) {
                    try {
                        canvas.drawBitmap(this.data.mbitmap, 0.0f, 0.0f, this._defaultPaint);
                        canvas.drawBitmap(this.softCursor, this.cursorRect.left, this.cursorRect.top, this._defaultPaint);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    CompactBitmapData(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas, boolean z) {
        super(rfbConnectable, remoteCanvas);
        this.cfg = Bitmap.Config.RGB_565;
        this.bitmapwidth = this.framebufferwidth;
        this.bitmapheight = this.framebufferheight;
        if (this.bitmapwidth == 0) {
            this.bitmapwidth = 1;
        }
        if (this.bitmapheight == 0) {
            this.bitmapheight = 1;
        }
        if (z) {
            this.cfg = Bitmap.Config.ARGB_8888;
        }
        this.mbitmap = Bitmap.createBitmap(this.bitmapwidth, this.bitmapheight, this.cfg);
        Log.i(TAG, "bitmapsize = (" + this.bitmapwidth + "," + this.bitmapheight + ")");
        if (Constants.SDK_INT >= 12) {
            this.mbitmap.setHasAlpha(false);
        }
        this.memGraphics = new Canvas(this.mbitmap);
        this.bitmapPixels = new int[this.bitmapwidth * this.bitmapheight];
        this.drawable.startDrawing();
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public int offset(int i, int i2) {
        return (i2 * this.bitmapwidth) + i;
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    AbstractBitmapDrawable createDrawable() {
        return new CompactBitmapDrawable();
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void updateBitmap(int i, int i2, int i3, int i4) {
        synchronized (this.mbitmap) {
            this.mbitmap.setPixels(this.bitmapPixels, offset(i, i2), this.bitmapwidth, i, i2, i3, i4);
        }
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void updateBitmap(Bitmap bitmap, int i, int i2, int i3, int i4) {
        synchronized (this.mbitmap) {
            this.memGraphics.drawBitmap(bitmap, i, i2, (Paint) null);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:? -> B:23:0x0076). Please report as a decompilation issue!!! */
    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void copyRect(int i, int i2, int i3, int i4, int i5, int i6) throws Throwable {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        Bitmap bitmap;
        int i13 = i2;
        if (i13 > i4) {
            i7 = i4;
            i9 = 1;
            i8 = i13 + i6;
        } else {
            i7 = (i4 + i6) - 1;
            i8 = i13 - 1;
            i9 = -1;
            i13 = (i13 + i6) - 1;
        }
        int i14 = i13;
        int i15 = i7;
        while (i14 != i8) {
            int iOffset = offset(i, i14);
            int iOffset2 = offset(i3, i15);
            try {
                Bitmap bitmap2 = this.mbitmap;
                synchronized (bitmap2) {
                    try {
                        bitmap = bitmap2;
                        i10 = i15;
                        i11 = i14;
                        i12 = i8;
                        try {
                            this.mbitmap.getPixels(this.bitmapPixels, iOffset, this.bitmapwidth, i - this.xoffset, i14 - this.yoffset, i5, 1);
                            try {
                                System.arraycopy(this.bitmapPixels, iOffset, this.bitmapPixels, iOffset2, i5);
                            } catch (Exception e) {
                                e = e;
                                e.printStackTrace();
                            }
                            i15 = i10 + i9;
                            i14 = i11 + i9;
                            i8 = i12;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bitmap = bitmap2;
                        i10 = i15;
                        i11 = i14;
                        i12 = i8;
                        throw th;
                    }
                }
            } catch (Exception e2) {
                e = e2;
                i10 = i15;
                i11 = i14;
                i12 = i8;
            }
        }
        updateBitmap(i3, i4, i5, i6);
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    void drawRect(int i, int i2, int i3, int i4, Paint paint) {
        synchronized (this.mbitmap) {
            this.memGraphics.drawRect(i, i2, i + i3, i2 + i4, paint);
        }
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void frameBufferSizeChanged() {
        this.framebufferwidth = this.rfb.framebufferWidth();
        this.framebufferheight = this.rfb.framebufferHeight();
        if (this.bitmapwidth < this.framebufferwidth || this.bitmapheight < this.framebufferheight) {
            Log.i(TAG, "One or more bitmap dimensions increased, realloc = (" + this.framebufferwidth + "," + this.framebufferheight + ")");
            dispose();
            System.gc();
            this.bitmapwidth = this.framebufferwidth;
            this.bitmapheight = this.framebufferheight;
            this.bitmapPixels = new int[this.bitmapwidth * this.bitmapheight];
            this.mbitmap = Bitmap.createBitmap(this.bitmapwidth, this.bitmapheight, this.cfg);
            this.memGraphics = new Canvas(this.mbitmap);
            this.drawable = createDrawable();
            this.drawable.startDrawing();
            return;
        }
        Log.i(TAG, "Both bitmap dimensions same or smaller, no realloc = (" + this.framebufferwidth + "," + this.framebufferheight + ")");
    }
}
