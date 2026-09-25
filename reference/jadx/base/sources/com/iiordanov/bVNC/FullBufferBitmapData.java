package com.iiordanov.bVNC;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Log;
import com.undatech.opaque.RfbConnectable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
class FullBufferBitmapData extends AbstractBitmapData {
    static final int CAPACITY_MULTIPLIER = 6;
    int dataHeight;
    int dataWidth;
    int xoffset;
    int yoffset;

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    void syncScroll() {
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void updateBitmap(int i, int i2, int i3, int i4) {
    }

    class Drawable extends AbstractBitmapDrawable {
        private static final String TAG = "Drawable";
        int drawHeight;
        int drawWidth;
        int xo;
        int yo;

        public Drawable(AbstractBitmapData abstractBitmapData) {
            super(abstractBitmapData);
        }

        @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.toDraw = canvas.getClipBounds();
            this.toDraw.set(this.toDraw.left - 1, this.toDraw.top - 1, this.toDraw.right + 1, this.toDraw.bottom + 1);
            this.drawWidth = this.toDraw.width();
            this.drawHeight = this.toDraw.height();
            if (this.toDraw.left < 0) {
                this.xo = 0;
            } else if (this.toDraw.left >= this.data.framebufferwidth) {
                return;
            } else {
                this.xo = this.toDraw.left;
            }
            if (this.toDraw.top < 0) {
                this.yo = 0;
            } else if (this.toDraw.top >= this.data.framebufferheight) {
                return;
            } else {
                this.yo = this.toDraw.top;
            }
            if (this.xo + this.drawWidth >= this.data.framebufferwidth) {
                this.drawWidth = this.data.framebufferwidth - this.xo;
            }
            if (this.yo + this.drawHeight >= this.data.framebufferheight) {
                this.drawHeight = this.data.framebufferheight - this.yo;
            }
            try {
                synchronized (this) {
                    try {
                        canvas.drawBitmap(this.data.bitmapPixels, FullBufferBitmapData.this.offset(this.xo, this.yo), this.data.framebufferwidth, this.xo, this.yo, this.drawWidth, this.drawHeight, false, this._defaultPaint);
                        canvas.drawBitmap(this.softCursor, this.cursorRect.left, this.cursorRect.top, this._defaultPaint);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public FullBufferBitmapData(RfbConnectable rfbConnectable, RemoteCanvas remoteCanvas, int i) {
        super(rfbConnectable, remoteCanvas);
        this.framebufferwidth = this.rfb.framebufferWidth();
        this.framebufferheight = this.rfb.framebufferHeight();
        this.bitmapwidth = this.framebufferwidth;
        this.bitmapheight = this.framebufferheight;
        this.dataWidth = this.framebufferwidth;
        this.dataHeight = this.framebufferheight;
        Log.i("FBBM", "bitmapsize = (" + this.bitmapwidth + "," + this.bitmapheight + ")");
        this.bitmapPixels = new int[this.framebufferwidth * this.framebufferheight];
        this.drawable.startDrawing();
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void copyRect(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8 = 1;
        if (i2 > i4) {
            i7 = i6 + i2;
        } else {
            int i9 = (i2 + i6) - 1;
            i4 = (i4 + i6) - 1;
            i8 = -1;
            i7 = i2 - 1;
            i2 = i9;
        }
        while (i2 != i7) {
            try {
                System.arraycopy(this.bitmapPixels, offset(i, i2), this.bitmapPixels, offset(i3, i4), i5);
            } catch (Exception e) {
                e.printStackTrace();
            }
            i4 += i8;
            i2 += i8;
        }
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    AbstractBitmapDrawable createDrawable() {
        return new Drawable(this);
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    void drawRect(int i, int i2, int i3, int i4, Paint paint) {
        int color = paint.getColor();
        int iOffset = offset(i, i2);
        int i5 = 0;
        if (i3 > 10) {
            while (i5 < i4) {
                Arrays.fill(this.bitmapPixels, iOffset, iOffset + i3, color);
                i5++;
                iOffset += this.framebufferwidth;
            }
            return;
        }
        int i6 = 0;
        while (i6 < i4) {
            int i7 = 0;
            while (i7 < i3) {
                this.bitmapPixels[iOffset] = color;
                i7++;
                iOffset++;
            }
            i6++;
            iOffset += this.framebufferwidth - i3;
        }
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public int offset(int i, int i2) {
        return i + (i2 * this.framebufferwidth);
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    void scrollChanged(int i, int i2) {
        this.xoffset = i;
        this.yoffset = i2;
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void frameBufferSizeChanged() {
        this.framebufferwidth = this.rfb.framebufferWidth();
        this.framebufferheight = this.rfb.framebufferHeight();
        this.bitmapwidth = this.framebufferwidth;
        this.bitmapheight = this.framebufferheight;
        Log.i("FBBM", "bitmapsize changed = (" + this.bitmapwidth + "," + this.bitmapheight + ")");
        if (this.dataWidth < this.framebufferwidth || this.dataHeight < this.framebufferheight) {
            dispose();
            System.gc();
            this.dataWidth = this.framebufferwidth;
            this.dataHeight = this.framebufferheight;
            this.bitmapPixels = new int[this.framebufferwidth * this.framebufferheight];
            this.drawable = createDrawable();
            this.drawable.startDrawing();
        }
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public void updateBitmap(Bitmap bitmap, int i, int i2, int i3, int i4) {
        bitmap.getPixels(this.bitmapPixels, offset(i, i2), this.bitmapwidth, 0, 0, i3, i4);
    }

    @Override // com.iiordanov.bVNC.AbstractBitmapData
    public boolean validDraw(int i, int i2, int i3, int i4) {
        return i + i3 <= this.bitmapwidth && i2 + i4 <= this.bitmapheight;
    }
}
