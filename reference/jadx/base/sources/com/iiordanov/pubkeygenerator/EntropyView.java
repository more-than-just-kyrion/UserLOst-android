package com.iiordanov.pubkeygenerator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.Iterator;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class EntropyView extends View {
    private static final int MILLIS_BETWEEN_INPUTS = 5;
    private static final int SHA1_MAX_BYTES = 20;
    private float lastX;
    private float lastY;
    private Vector<OnEntropyGatheredListener> listeners;
    private byte[] mEntropy;
    private int mEntropyBitIndex;
    private int mEntropyByteIndex;
    private boolean mFlipFlop;
    private Paint.FontMetrics mFontMetrics;
    private long mLastTime;
    private Paint mPaint;
    private int splitText;

    public EntropyView(Context context) {
        super(context);
        this.splitText = 0;
        this.lastX = 0.0f;
        this.lastY = 0.0f;
        setUpEntropy();
    }

    public EntropyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.splitText = 0;
        this.lastX = 0.0f;
        this.lastY = 0.0f;
        setUpEntropy();
    }

    private void setUpEntropy() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setTypeface(Typeface.DEFAULT);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.mPaint.setTextSize(16.0f);
        this.mPaint.setColor(-1);
        this.mFontMetrics = this.mPaint.getFontMetrics();
        this.mEntropy = new byte[20];
        this.mEntropyByteIndex = 0;
        this.mEntropyBitIndex = 0;
        this.listeners = new Vector<>();
    }

    public void addOnEntropyGatheredListener(OnEntropyGatheredListener onEntropyGatheredListener) {
        this.listeners.add(onEntropyGatheredListener);
    }

    public void removeOnEntropyGatheredListener(OnEntropyGatheredListener onEntropyGatheredListener) {
        this.listeners.remove(onEntropyGatheredListener);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        String str = String.format(getResources().getString(R.string.touch_prompt), Integer.valueOf(((int) ((((double) this.mEntropyByteIndex) / 20.0d) * 100.0d)) + ((int) ((((double) this.mEntropyBitIndex) / 8.0d) * 5.0d))));
        if (this.splitText > 0 || this.mPaint.measureText(str) > ((double) getWidth()) * 0.8d) {
            if (this.splitText == 0) {
                this.splitText = str.indexOf(" ", str.length() / 2);
            }
            canvas.drawText(str.substring(0, this.splitText), getWidth() / 2.0f, (getHeight() / 2.0f) + this.mPaint.ascent() + this.mPaint.descent(), this.mPaint);
            canvas.drawText(str.substring(this.splitText), getWidth() / 2.0f, (getHeight() / 2.0f) - (this.mPaint.ascent() + this.mPaint.descent()), this.mPaint);
            return;
        }
        canvas.drawText(str, getWidth() / 2.0f, (getHeight() / 2.0f) - ((this.mFontMetrics.ascent + this.mFontMetrics.descent) / 2.0f), this.mPaint);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0090  */
    /* JADX WARN: Code duplicated, block: B:42:0x0096 A[SYNTHETIC] */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        if (this.mEntropyByteIndex < 20 && this.lastX != motionEvent.getX() && this.lastY != motionEvent.getY()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.mLastTime < 5) {
                return true;
            }
            this.mLastTime = jCurrentTimeMillis;
            this.lastX = motionEvent.getX();
            float y = motionEvent.getY();
            this.lastY = y;
            boolean z = this.mFlipFlop;
            if (z) {
                i = (((int) y) & 15) | ((((int) this.lastX) & 15) << 4);
            } else {
                i = ((((int) y) & 15) << 4) | (((int) this.lastX) & 15);
            }
            byte b = (byte) i;
            this.mFlipFlop = !z;
            for (int i2 = 0; i2 < 4; i2++) {
                int i3 = this.mEntropyByteIndex;
                if (i3 >= 20) {
                    break;
                }
                int i4 = b & 3;
                if (i4 == 1) {
                    byte[] bArr = this.mEntropy;
                    byte b2 = (byte) (bArr[i3] << 1);
                    bArr[i3] = b2;
                    bArr[i3] = (byte) (b2 | 1);
                    this.mEntropyBitIndex++;
                } else {
                    if (i4 == 2) {
                        byte[] bArr2 = this.mEntropy;
                        bArr2[i3] = (byte) (bArr2[i3] << 1);
                        this.mEntropyBitIndex++;
                    }
                    if (this.mEntropyBitIndex >= 8) {
                        this.mEntropyBitIndex = 0;
                        this.mEntropyByteIndex = i3 + 1;
                    }
                }
                b = (byte) (b >> 2);
                if (this.mEntropyBitIndex >= 8) {
                    this.mEntropyBitIndex = 0;
                    this.mEntropyByteIndex = i3 + 1;
                }
            }
            if (this.mEntropyByteIndex >= 20) {
                Iterator<OnEntropyGatheredListener> it = this.listeners.iterator();
                while (it.hasNext()) {
                    it.next().onEntropyGathered(this.mEntropy);
                }
            }
            invalidate();
        }
        return true;
    }
}
