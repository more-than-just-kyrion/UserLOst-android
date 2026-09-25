package com.iiordanov.pubkeygenerator;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ComposeShader;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import org.spongycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes2.dex */
public class UberColorPickerDialog extends Dialog {
    private final int mInitialColor;
    private final OnColorChangedListener mListener;

    public interface OnColorChangedListener {
        void colorChanged(int i);
    }

    public UberColorPickerDialog(Context context, OnColorChangedListener onColorChangedListener, int i) {
        super(context);
        this.mListener = onColorChangedListener;
        this.mInitialColor = i;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        OnColorChangedListener onColorChangedListener = new OnColorChangedListener() { // from class: com.iiordanov.pubkeygenerator.UberColorPickerDialog.1
            @Override // com.iiordanov.pubkeygenerator.UberColorPickerDialog.OnColorChangedListener
            public void colorChanged(int i) {
                UberColorPickerDialog.this.mListener.colorChanged(i);
                UberColorPickerDialog.this.dismiss();
            }
        };
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindow().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        setTitle("Pick a color (try the trackball)");
        try {
            setContentView(new ColorPickerView(getContext(), onColorChangedListener, i, i2, this.mInitialColor));
        } catch (Exception unused) {
            dismiss();
        }
    }

    private static class ColorPickerView extends View {
        private static final int METHOD_HS_V_PALETTE = 0;
        private static final int PALETTE_CENTER_X;
        private static final int PALETTE_CENTER_Y;
        private static final int PALETTE_DIM;
        private static int PALETTE_POS_X = 0;
        private static int PALETTE_POS_Y = 60;
        private static final int PALETTE_RADIUS;
        private static final float PI = 3.1415927f;
        private static final int SLIDER_THICKNESS = 40;
        private static final int SWATCH_HEIGHT = 60;
        private static int SWATCH_WIDTH = 95;
        private static final int TEXT_SIZE = 12;
        private static final int TRACKED_NONE = -1;
        private static final int TRACK_HS_PALETTE = 30;
        private static final int TRACK_SWATCH_NEW = 11;
        private static final int TRACK_SWATCH_OLD = 10;
        private static final int TRACK_VER_VALUE_SLIDER = 31;
        private static int VIEW_DIM_X;
        private int[] mCoord;
        private int mFocusedControl;
        private float[] mHSV;
        private boolean mHSVenabled;
        private String mHexStr;
        private boolean mHexenabled;
        private Bitmap[] mHorSlidersBM;
        private Canvas[] mHorSlidersCv;
        private OnColorChangedListener mListener;
        private int mMethod;
        private Rect mNewSwatchRect;
        private Rect mOldSwatchRect;
        private int mOriginalColor;
        private Paint mOvalHueSat;
        private Paint mOvalHueSatSmall;
        private Rect mPaletteRect;
        private Paint mPosMarker;
        private int[] mRGB;
        private boolean mRGBenabled;
        private int[] mSpectrumColorsRev;
        private Paint mSwatchNew;
        private Paint mSwatchOld;
        private Paint mText;
        private int mTracking;
        private Paint mValDimmer;
        private Bitmap mVerSliderBM;
        private Canvas mVerSliderCv;
        private Rect mVerSliderRect;
        private float[] mYUV;
        private boolean mYUVenabled;
        private static int VIEW_DIM_Y = 60;
        private static int[] TEXT_HSV_POS = new int[2];
        private static int[] TEXT_RGB_POS = new int[2];
        private static int[] TEXT_YUV_POS = new int[2];
        private static int[] TEXT_HEX_POS = new int[2];

        private float pin(float f, float f2) {
            if (f < 0.0f) {
                return 0.0f;
            }
            return f > f2 ? f2 : f;
        }

        private float pin(float f, float f2, float f3) {
            if (f < f2) {
                return f2;
            }
            return f > f3 ? f3 : f;
        }

        private float pinToUnit(float f) {
            float f2 = 0.0f;
            if (f >= 0.0f) {
                f2 = 1.0f;
                if (f <= 1.0f) {
                    return f;
                }
            }
            return f2;
        }

        static {
            int i = 95 * 2;
            PALETTE_DIM = i;
            int i2 = i / 2;
            PALETTE_RADIUS = i2;
            PALETTE_CENTER_X = i2;
            PALETTE_CENTER_Y = i2;
            VIEW_DIM_X = i;
        }

        ColorPickerView(Context context, OnColorChangedListener onColorChangedListener, int i, int i2, int i3) throws Exception {
            super(context);
            this.mMethod = 0;
            this.mTracking = -1;
            this.mHorSlidersBM = new Bitmap[3];
            this.mHorSlidersCv = new Canvas[3];
            this.mOldSwatchRect = new Rect();
            this.mNewSwatchRect = new Rect();
            this.mPaletteRect = new Rect();
            this.mVerSliderRect = new Rect();
            this.mOriginalColor = 0;
            this.mHSV = new float[3];
            this.mRGB = new int[3];
            this.mYUV = new float[3];
            this.mHexStr = "";
            this.mHSVenabled = true;
            this.mRGBenabled = true;
            this.mYUVenabled = true;
            this.mHexenabled = true;
            this.mCoord = new int[3];
            this.mFocusedControl = -1;
            setFocusable(true);
            this.mListener = onColorChangedListener;
            this.mOriginalColor = i3;
            Color.colorToHSV(i3, this.mHSV);
            updateAllFromHSV();
            if (i <= i2) {
                int i4 = PALETTE_DIM;
                int i5 = (i4 + 40) / 2;
                SWATCH_WIDTH = i5;
                PALETTE_POS_X = 0;
                PALETTE_POS_Y = 108;
                this.mOldSwatchRect.set(0, 48, i5, 108);
                Rect rect = this.mNewSwatchRect;
                int i6 = SWATCH_WIDTH;
                rect.set(i6, 48, i6 * 2, 108);
                Rect rect2 = this.mPaletteRect;
                int i7 = PALETTE_POS_Y;
                rect2.set(0, i7, i4, i7 + i4);
                Rect rect3 = this.mVerSliderRect;
                int i8 = PALETTE_POS_Y;
                rect3.set(i4, i8, i4 + 40, i8 + i4);
                int[] iArr = TEXT_HSV_POS;
                iArr[0] = 3;
                iArr[1] = 0;
                int[] iArr2 = TEXT_RGB_POS;
                iArr2[0] = 3 + 50;
                iArr2[1] = 0;
                int[] iArr3 = TEXT_YUV_POS;
                iArr3[0] = iArr[0] + 100;
                iArr3[1] = iArr[1];
                int[] iArr4 = TEXT_HEX_POS;
                iArr4[0] = iArr[0] + CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA;
                iArr4[1] = iArr[1];
                VIEW_DIM_X = i4 + 40;
                VIEW_DIM_Y = i4 + 108;
            } else {
                SWATCH_WIDTH = 110;
                PALETTE_POS_X = 110;
                PALETTE_POS_Y = 0;
                this.mOldSwatchRect.set(0, 84, 110, CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA);
                this.mNewSwatchRect.set(0, CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA, SWATCH_WIDTH, 204);
                Rect rect4 = this.mPaletteRect;
                int i9 = SWATCH_WIDTH;
                int i10 = PALETTE_POS_Y;
                int i11 = PALETTE_DIM;
                rect4.set(i9, i10, i9 + i11, i10 + i11);
                Rect rect5 = this.mVerSliderRect;
                int i12 = SWATCH_WIDTH;
                int i13 = PALETTE_POS_Y;
                rect5.set(i12 + i11, i13, i12 + i11 + 40, i13 + i11);
                int[] iArr5 = TEXT_HSV_POS;
                iArr5[0] = 3;
                iArr5[1] = 0;
                int[] iArr6 = TEXT_RGB_POS;
                iArr6[0] = 3;
                iArr6[1] = (int) (((double) 0) + 42.0d);
                int[] iArr7 = TEXT_YUV_POS;
                iArr7[0] = iArr5[0] + 50;
                iArr7[1] = (int) (((double) iArr5[1]) + 42.0d);
                int[] iArr8 = TEXT_HEX_POS;
                iArr8[0] = iArr5[0] + 50;
                iArr8[1] = iArr5[1];
                VIEW_DIM_X = PALETTE_POS_X + i11 + 40;
                VIEW_DIM_Y = Math.max(this.mNewSwatchRect.bottom, i11);
            }
            this.mSpectrumColorsRev = new int[]{SupportMenu.CATEGORY_MASK, -65281, -16776961, -16711681, -16711936, InputDeviceCompat.SOURCE_ANY, SupportMenu.CATEGORY_MASK};
            Paint paint = new Paint(1);
            this.mSwatchOld = paint;
            paint.setStyle(Paint.Style.FILL);
            this.mSwatchOld.setColor(Color.HSVToColor(this.mHSV));
            Paint paint2 = new Paint(1);
            this.mSwatchNew = paint2;
            paint2.setStyle(Paint.Style.FILL);
            this.mSwatchNew.setColor(Color.HSVToColor(this.mHSV));
            ComposeShader composeShader = new ComposeShader(new SweepGradient(0.0f, 0.0f, this.mSpectrumColorsRev, (float[]) null), new RadialGradient(0.0f, 0.0f, PALETTE_CENTER_X, -1, ViewCompat.MEASURED_STATE_MASK, Shader.TileMode.CLAMP), PorterDuff.Mode.SCREEN);
            Paint paint3 = new Paint(1);
            this.mOvalHueSat = paint3;
            paint3.setShader(composeShader);
            this.mOvalHueSat.setStyle(Paint.Style.FILL);
            this.mOvalHueSat.setDither(true);
            this.mVerSliderBM = Bitmap.createBitmap(40, PALETTE_DIM, Bitmap.Config.RGB_565);
            this.mVerSliderCv = new Canvas(this.mVerSliderBM);
            for (int i14 = 0; i14 < 3; i14++) {
                this.mHorSlidersBM[i14] = Bitmap.createBitmap(PALETTE_DIM, 40, Bitmap.Config.RGB_565);
                this.mHorSlidersCv[i14] = new Canvas(this.mHorSlidersBM[i14]);
            }
            Paint paint4 = new Paint(1);
            this.mValDimmer = paint4;
            paint4.setStyle(Paint.Style.FILL);
            this.mValDimmer.setDither(true);
            this.mValDimmer.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
            ComposeShader composeShader2 = new ComposeShader(new SweepGradient(0.0f, 0.0f, this.mSpectrumColorsRev, (float[]) null), new RadialGradient(0.0f, 0.0f, PALETTE_DIM / 2, -1, ViewCompat.MEASURED_STATE_MASK, Shader.TileMode.CLAMP), PorterDuff.Mode.SCREEN);
            Paint paint5 = new Paint(1);
            this.mOvalHueSatSmall = paint5;
            paint5.setShader(composeShader2);
            this.mOvalHueSatSmall.setStyle(Paint.Style.FILL);
            Paint paint6 = new Paint(1);
            this.mPosMarker = paint6;
            paint6.setStyle(Paint.Style.STROKE);
            this.mPosMarker.setStrokeWidth(2.0f);
            Paint paint7 = new Paint(1);
            this.mText = paint7;
            paint7.setTextSize(12.0f);
            this.mText.setColor(-1);
            initUI();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            drawSwatches(canvas);
            writeColorParams(canvas);
            if (this.mMethod == 0) {
                drawHSV1Palette(canvas);
            }
        }

        private void drawSwatches(Canvas canvas) {
            float[] fArr = new float[3];
            this.mText.setTextSize(16.0f);
            canvas.drawRect(this.mOldSwatchRect, this.mSwatchOld);
            Color.colorToHSV(this.mOriginalColor, fArr);
            if (fArr[2] > 0.5d) {
                this.mText.setColor(ViewCompat.MEASURED_STATE_MASK);
            }
            canvas.drawText("Revert", (this.mOldSwatchRect.left + (SWATCH_WIDTH / 2)) - (this.mText.measureText("Revert") / 2.0f), this.mOldSwatchRect.top + 16, this.mText);
            this.mText.setColor(-1);
            canvas.drawRect(this.mNewSwatchRect, this.mSwatchNew);
            if (this.mHSV[2] > 0.5d) {
                this.mText.setColor(ViewCompat.MEASURED_STATE_MASK);
            }
            canvas.drawText("Accept", (this.mNewSwatchRect.left + (SWATCH_WIDTH / 2)) - (this.mText.measureText("Accept") / 2.0f), this.mNewSwatchRect.top + 16, this.mText);
            this.mText.setColor(-1);
            this.mText.setTextSize(12.0f);
        }

        private void writeColorParams(Canvas canvas) {
            if (this.mHSVenabled) {
                String str = "H: " + Integer.toString((int) ((this.mHSV[0] / 360.0f) * 255.0f));
                int[] iArr = TEXT_HSV_POS;
                canvas.drawText(str, iArr[0], iArr[1] + 12, this.mText);
                String str2 = "S: " + Integer.toString((int) (this.mHSV[1] * 255.0f));
                int[] iArr2 = TEXT_HSV_POS;
                canvas.drawText(str2, iArr2[0], iArr2[1] + 24, this.mText);
                String str3 = "V: " + Integer.toString((int) (this.mHSV[2] * 255.0f));
                int[] iArr3 = TEXT_HSV_POS;
                canvas.drawText(str3, iArr3[0], iArr3[1] + 36, this.mText);
            }
            if (this.mRGBenabled) {
                String str4 = "R: " + this.mRGB[0];
                int[] iArr4 = TEXT_RGB_POS;
                canvas.drawText(str4, iArr4[0], iArr4[1] + 12, this.mText);
                String str5 = "G: " + this.mRGB[1];
                int[] iArr5 = TEXT_RGB_POS;
                canvas.drawText(str5, iArr5[0], iArr5[1] + 24, this.mText);
                String str6 = "B: " + this.mRGB[2];
                int[] iArr6 = TEXT_RGB_POS;
                canvas.drawText(str6, iArr6[0], iArr6[1] + 36, this.mText);
            }
            if (this.mYUVenabled) {
                String str7 = "Y: " + Integer.toString((int) (this.mYUV[0] * 255.0f));
                int[] iArr7 = TEXT_YUV_POS;
                canvas.drawText(str7, iArr7[0], iArr7[1] + 12, this.mText);
                String str8 = "U: " + Integer.toString((int) ((this.mYUV[1] + 0.5f) * 255.0f));
                int[] iArr8 = TEXT_YUV_POS;
                canvas.drawText(str8, iArr8[0], iArr8[1] + 24, this.mText);
                String str9 = "V: " + Integer.toString((int) ((this.mYUV[2] + 0.5f) * 255.0f));
                int[] iArr9 = TEXT_YUV_POS;
                canvas.drawText(str9, iArr9[0], iArr9[1] + 36, this.mText);
            }
            if (this.mHexenabled) {
                String str10 = "#" + this.mHexStr;
                int[] iArr10 = TEXT_HEX_POS;
                canvas.drawText(str10, iArr10[0], iArr10[1] + 12, this.mText);
            }
        }

        private void mark2DPalette(Canvas canvas, int i, int i2) {
            this.mPosMarker.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawOval(new RectF(i - 5, i2 - 5, i + 5, i2 + 5), this.mPosMarker);
            this.mPosMarker.setColor(-1);
            canvas.drawOval(new RectF(i - 3, i2 - 3, i + 3, i2 + 3), this.mPosMarker);
        }

        private void markVerSlider(Canvas canvas, int i) {
            this.mPosMarker.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawRect(new Rect(0, i - 2, 40, i + 3), this.mPosMarker);
            this.mPosMarker.setColor(-1);
            canvas.drawRect(new Rect(0, i, 40, i + 1), this.mPosMarker);
        }

        private void hilightFocusedVerSlider(Canvas canvas) {
            this.mPosMarker.setColor(-1);
            int i = PALETTE_DIM;
            canvas.drawRect(new Rect(0, 0, 40, i), this.mPosMarker);
            this.mPosMarker.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawRect(new Rect(2, 2, 38, i - 2), this.mPosMarker);
        }

        private void hilightFocusedOvalPalette(Canvas canvas) {
            this.mPosMarker.setColor(-1);
            int i = PALETTE_RADIUS;
            canvas.drawOval(new RectF(-i, -i, i, i), this.mPosMarker);
            this.mPosMarker.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawOval(new RectF((-i) + 2, (-i) + 2, i - 2, i - 2), this.mPosMarker);
        }

        private void drawHSV1Palette(Canvas canvas) {
            canvas.save();
            canvas.translate(PALETTE_POS_X, PALETTE_POS_Y);
            int i = PALETTE_CENTER_X;
            int i2 = PALETTE_CENTER_Y;
            canvas.translate(i, i2);
            int i3 = PALETTE_RADIUS;
            canvas.drawOval(new RectF(-i3, -i3, i3, i3), this.mOvalHueSat);
            canvas.drawOval(new RectF(-i3, -i3, i3, i3), this.mValDimmer);
            if (this.mFocusedControl == 0) {
                hilightFocusedOvalPalette(canvas);
            }
            int[] iArr = this.mCoord;
            mark2DPalette(canvas, iArr[0], iArr[1]);
            canvas.translate(-i, -i2);
            canvas.translate(PALETTE_DIM, 0.0f);
            canvas.drawBitmap(this.mVerSliderBM, 0.0f, 0.0f, (Paint) null);
            if (this.mFocusedControl == 1) {
                hilightFocusedVerSlider(canvas);
            }
            markVerSlider(canvas, this.mCoord[2]);
            canvas.restore();
        }

        private void initUI() {
            initHSV1Palette();
            this.mFocusedControl = 0;
        }

        private void initHSV1Palette() {
            setOvalValDimmer();
            setVerValSlider();
            float[] fArr = this.mHSV;
            double d = 6.2831855f - (fArr[0] / 57.295776f);
            double d2 = fArr[1] * PALETTE_RADIUS;
            this.mCoord[0] = (int) (Math.cos(d) * d2);
            this.mCoord[1] = (int) (Math.sin(d) * d2);
            int[] iArr = this.mCoord;
            int i = PALETTE_DIM;
            iArr[2] = i - ((int) (this.mHSV[2] * i));
        }

        private void setOvalValDimmer() {
            float[] fArr = this.mHSV;
            this.mValDimmer.setColor(Color.HSVToColor(new float[]{fArr[0], 0.0f, fArr[2]}));
        }

        private void setVerValSlider() {
            float[] fArr = this.mHSV;
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.HSVToColor(new float[]{fArr[0], fArr[1], 1.0f}), ViewCompat.MEASURED_STATE_MASK});
            gradientDrawable.setDither(true);
            gradientDrawable.setLevel(10000);
            gradientDrawable.setBounds(0, 0, 40, PALETTE_DIM);
            gradientDrawable.draw(this.mVerSliderCv);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            setMeasuredDimension(VIEW_DIM_X, VIEW_DIM_Y);
        }

        private int round(double d) {
            return (int) Math.round(d);
        }

        private int ave(int i, int i2, float f) {
            return i + round(f * (i2 - i));
        }

        private int interpColor(int[] iArr, float f) {
            if (f <= 0.0f) {
                return iArr[0];
            }
            if (f >= 1.0f) {
                return iArr[iArr.length - 1];
            }
            float length = f * (iArr.length - 1);
            int i = (int) length;
            float f2 = length - i;
            int i2 = iArr[i];
            int i3 = iArr[i + 1];
            return Color.argb(ave(Color.alpha(i2), Color.alpha(i3), f2), ave(Color.red(i2), Color.red(i3), f2), ave(Color.green(i2), Color.green(i3), f2), ave(Color.blue(i2), Color.blue(i3), f2));
        }

        public boolean ptInRect(int i, int i2, Rect rect) {
            return i > rect.left && i < rect.right && i2 > rect.top && i2 < rect.bottom;
        }

        @Override // android.view.View
        public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int historySize = motionEvent.getHistorySize() + 1;
            if (motionEvent.getAction() == 2 && this.mMethod == 0) {
                int i = this.mFocusedControl;
                if (i == 0) {
                    changeHSPalette(x, y, historySize);
                } else if (i == 1) {
                    if (y < 0.0f) {
                        changeSlider(i, true, historySize);
                    } else if (y > 0.0f) {
                        changeSlider(i, false, historySize);
                    }
                }
            }
            return true;
        }

        private void changeHSPalette(float f, float f2, int i) {
            int i2;
            if (f < 0.0f) {
                i2 = -i;
            } else {
                i2 = f > 0.0f ? i : 0;
            }
            if (f2 < 0.0f) {
                i = -i;
            } else if (f2 <= 0.0f) {
                i = 0;
            }
            int[] iArr = this.mCoord;
            int i3 = iArr[0] + i2;
            iArr[0] = i3;
            int i4 = iArr[1] + i;
            iArr[1] = i4;
            int i5 = PALETTE_RADIUS;
            if (i3 < (-i5)) {
                iArr[0] = -i5;
            } else if (i3 > i5) {
                iArr[0] = i5;
            }
            if (i4 < (-i5)) {
                iArr[1] = -i5;
            } else if (i4 > i5) {
                iArr[1] = i5;
            }
            int i6 = iArr[0];
            int i7 = iArr[1];
            float fSqrt = (float) Math.sqrt((i6 * i6) + (i7 * i7));
            if (fSqrt > i5) {
                fSqrt = i5;
            }
            int[] iArr2 = this.mCoord;
            float fAtan2 = (float) Math.atan2(iArr2[1], iArr2[0]);
            float f3 = fAtan2 / 6.2831855f;
            if (f3 < 0.0f) {
                f3 += 1.0f;
            }
            double d = fAtan2;
            double d2 = fSqrt;
            this.mCoord[0] = round(Math.cos(d) * d2);
            this.mCoord[1] = round(Math.sin(d) * d2);
            float[] fArr = new float[3];
            Color.colorToHSV(interpColor(this.mSpectrumColorsRev, f3), fArr);
            float[] fArr2 = this.mHSV;
            fArr2[0] = fArr[0];
            fArr2[1] = fSqrt / i5;
            updateAllFromHSV();
            this.mSwatchNew.setColor(Color.HSVToColor(this.mHSV));
            setVerValSlider();
            invalidate();
        }

        private void changeSlider(int i, boolean z, int i2) {
            if (this.mMethod == 0) {
                float[] fArr = this.mHSV;
                float f = fArr[2];
                if (!z) {
                    i2 = -i2;
                }
                float f2 = f + (i2 / 256.0f);
                fArr[2] = f2;
                fArr[2] = pinToUnit(f2);
                updateAllFromHSV();
                int[] iArr = this.mCoord;
                int i3 = PALETTE_DIM;
                float[] fArr2 = this.mHSV;
                iArr[2] = i3 - ((int) (fArr2[2] * i3));
                this.mSwatchNew.setColor(Color.HSVToColor(fArr2));
                setOvalValDimmer();
                invalidate();
            }
        }

        private void updateRGBfromHSV() {
            int iHSVToColor = Color.HSVToColor(this.mHSV);
            this.mRGB[0] = Color.red(iHSVToColor);
            this.mRGB[1] = Color.green(iHSVToColor);
            this.mRGB[2] = Color.blue(iHSVToColor);
        }

        private void updateYUVfromRGB() {
            int[] iArr = this.mRGB;
            float f = iArr[0] / 255.0f;
            float f2 = iArr[1] / 255.0f;
            float f3 = iArr[2] / 255.0f;
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setRGB2YUV();
            float[] array = colorMatrix.getArray();
            float[] fArr = this.mYUV;
            float f4 = (array[0] * f) + (array[1] * f2) + (array[2] * f3);
            fArr[0] = f4;
            fArr[0] = pinToUnit(f4);
            float[] fArr2 = this.mYUV;
            float f5 = (array[5] * f) + (array[6] * f2) + (array[7] * f3);
            fArr2[1] = f5;
            fArr2[1] = pin(f5, -0.5f, 0.5f);
            float[] fArr3 = this.mYUV;
            float f6 = (array[10] * f) + (array[11] * f2) + (array[12] * f3);
            fArr3[2] = f6;
            fArr3[2] = pin(f6, -0.5f, 0.5f);
        }

        private void updateHexFromHSV() {
            String upperCase = Integer.toHexString(Color.HSVToColor(this.mHSV)).toUpperCase();
            this.mHexStr = upperCase;
            this.mHexStr = upperCase.substring(2, upperCase.length());
        }

        private void updateAllFromHSV() {
            if (this.mRGBenabled || this.mYUVenabled) {
                updateRGBfromHSV();
            }
            if (this.mYUVenabled) {
                updateYUVfromRGB();
            }
            if (this.mRGBenabled) {
                updateHexFromHSV();
            }
        }

        /* JADX WARN: Code duplicated, block: B:37:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:39:0x00f9  */
        /* JADX WARN: Code duplicated, block: B:41:0x0143  */
        /* JADX WARN: Code duplicated, block: B:43:0x0147  */
        /* JADX WARN: Code duplicated, block: B:45:0x014d  */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0084, code lost:
        
            if (r8 != 2) goto L46;
         */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int i;
            int i2;
            int[] iArr;
            float f;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            float fRound = round(y - PALETTE_POS_Y);
            int i3 = PALETTE_DIM;
            int iPin = (int) pin(fRound, i3);
            float f2 = (x - PALETTE_POS_X) - PALETTE_CENTER_X;
            float f3 = (y - PALETTE_POS_Y) - PALETTE_CENTER_Y;
            double d = x;
            double d2 = y;
            boolean zPtInRect = ptInRect(round(d), round(d2), this.mOldSwatchRect);
            boolean zPtInRect2 = ptInRect(round(d), round(d2), this.mNewSwatchRect);
            float fSqrt = (float) Math.sqrt((f2 * f2) + (f3 * f3));
            int i4 = PALETTE_RADIUS;
            boolean z = fSqrt <= ((float) i4);
            if (fSqrt > i4) {
                fSqrt = i4;
            }
            boolean zPtInRect3 = ptInRect(round(d), round(d2), this.mVerSliderRect);
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    int i5 = this.mTracking;
                    if (i5 == 10 && zPtInRect) {
                        Color.colorToHSV(this.mOriginalColor, this.mHSV);
                        this.mSwatchNew.setColor(this.mOriginalColor);
                        initUI();
                        invalidate();
                    } else if (i5 == 11 && zPtInRect2) {
                        this.mListener.colorChanged(this.mSwatchNew.getColor());
                        invalidate();
                    }
                    this.mTracking = -1;
                }
                return true;
            }
            this.mTracking = -1;
            if (zPtInRect) {
                this.mTracking = 10;
            } else if (zPtInRect2) {
                this.mTracking = 11;
            } else {
                if (this.mMethod == 0) {
                    if (z) {
                        i = 30;
                        this.mTracking = 30;
                        this.mFocusedControl = 0;
                    } else {
                        i = 30;
                        if (zPtInRect3) {
                            this.mTracking = 31;
                            this.mFocusedControl = 1;
                        }
                    }
                }
                i2 = this.mTracking;
                if (i2 == i) {
                    float fAtan2 = (float) Math.atan2(f3, f2);
                    f = fAtan2 / 6.2831855f;
                    if (f < 0.0f) {
                        f += 1.0f;
                    }
                    double d3 = fAtan2;
                    double d4 = fSqrt;
                    this.mCoord[0] = round(Math.cos(d3) * d4);
                    this.mCoord[1] = round(Math.sin(d3) * d4);
                    int iInterpColor = interpColor(this.mSpectrumColorsRev, f);
                    float[] fArr = new float[3];
                    Color.colorToHSV(iInterpColor, fArr);
                    float[] fArr2 = this.mHSV;
                    fArr2[0] = fArr[0];
                    fArr2[1] = fSqrt / i4;
                    updateAllFromHSV();
                    this.mSwatchNew.setColor(Color.HSVToColor(this.mHSV));
                    setVerValSlider();
                    invalidate();
                } else if (i2 == 31) {
                    iArr = this.mCoord;
                    if (iArr[2] != iPin) {
                        iArr[2] = iPin;
                        this.mHSV[2] = 1.0f - (iPin / i3);
                        updateAllFromHSV();
                        this.mSwatchNew.setColor(Color.HSVToColor(this.mHSV));
                        setOvalValDimmer();
                        invalidate();
                    }
                }
                return true;
            }
            i = 30;
            i2 = this.mTracking;
            if (i2 == i) {
                float fAtan3 = (float) Math.atan2(f3, f2);
                f = fAtan3 / 6.2831855f;
                if (f < 0.0f) {
                    f += 1.0f;
                }
                double d5 = fAtan3;
                double d6 = fSqrt;
                this.mCoord[0] = round(Math.cos(d5) * d6);
                this.mCoord[1] = round(Math.sin(d5) * d6);
                int iInterpColor2 = interpColor(this.mSpectrumColorsRev, f);
                float[] fArr3 = new float[3];
                Color.colorToHSV(iInterpColor2, fArr3);
                float[] fArr4 = this.mHSV;
                fArr4[0] = fArr3[0];
                fArr4[1] = fSqrt / i4;
                updateAllFromHSV();
                this.mSwatchNew.setColor(Color.HSVToColor(this.mHSV));
                setVerValSlider();
                invalidate();
            } else if (i2 == 31) {
                iArr = this.mCoord;
                if (iArr[2] != iPin) {
                    iArr[2] = iPin;
                    this.mHSV[2] = 1.0f - (iPin / i3);
                    updateAllFromHSV();
                    this.mSwatchNew.setColor(Color.HSVToColor(this.mHSV));
                    setOvalValDimmer();
                    invalidate();
                }
            }
            return true;
        }
    }
}
