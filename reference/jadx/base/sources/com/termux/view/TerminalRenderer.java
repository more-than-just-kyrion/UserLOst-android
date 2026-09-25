package com.termux.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import androidx.core.view.ViewCompat;
import com.termux.terminal.TerminalBuffer;
import com.termux.terminal.TerminalEmulator;
import com.termux.terminal.TerminalRow;
import com.termux.terminal.TextStyle;
import com.termux.terminal.WcWidth;

/* JADX INFO: loaded from: classes2.dex */
public final class TerminalRenderer {
    private final float[] asciiMeasures;
    private final int mFontAscent;
    final int mFontLineSpacing;
    final int mFontLineSpacingAndAscent;
    final float mFontWidth;
    private final Paint mTextPaint;
    final int mTextSize;
    final Typeface mTypeface;

    public TerminalRenderer(int i, Typeface typeface) {
        Paint paint = new Paint();
        this.mTextPaint = paint;
        this.asciiMeasures = new float[127];
        this.mTextSize = i;
        this.mTypeface = typeface;
        paint.setTypeface(typeface);
        paint.setAntiAlias(true);
        paint.setTextSize(i);
        int iCeil = (int) Math.ceil(paint.getFontSpacing());
        this.mFontLineSpacing = iCeil;
        int iCeil2 = (int) Math.ceil(paint.ascent());
        this.mFontAscent = iCeil2;
        this.mFontLineSpacingAndAscent = iCeil + iCeil2;
        this.mFontWidth = paint.measureText("X");
        StringBuilder sb = new StringBuilder(" ");
        for (int i2 = 0; i2 < this.asciiMeasures.length; i2++) {
            sb.setCharAt(0, (char) i2);
            this.asciiMeasures[i2] = this.mTextPaint.measureText(sb, 0, 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v12, types: [int] */
    /* JADX WARN: Type inference failed for: r8v5, types: [char] */
    /* JADX WARN: Type inference failed for: r8v6, types: [int] */
    public final void render(TerminalEmulator terminalEmulator, Canvas canvas, int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        float fMeasureText;
        int i9;
        int i10;
        char[] cArr;
        TerminalRenderer terminalRenderer = this;
        TerminalEmulator terminalEmulator2 = terminalEmulator;
        boolean zIsReverseVideo = terminalEmulator.isReverseVideo();
        int i11 = i + terminalEmulator2.mRows;
        int i12 = terminalEmulator2.mColumns;
        int cursorCol = terminalEmulator.getCursorCol();
        int cursorRow = terminalEmulator.getCursorRow();
        boolean zIsShowingCursor = terminalEmulator.isShowingCursor();
        TerminalBuffer screen = terminalEmulator.getScreen();
        int[] iArr = terminalEmulator2.mColors.mCurrentColors;
        int cursorStyle = terminalEmulator.getCursorStyle();
        if (zIsReverseVideo) {
            canvas.drawColor(iArr[256], PorterDuff.Mode.SRC);
        }
        float f = terminalRenderer.mFontLineSpacingAndAscent;
        int i13 = i;
        while (i13 < i11) {
            float f2 = f + terminalRenderer.mFontLineSpacing;
            int i14 = (i13 == cursorRow && zIsShowingCursor) ? cursorCol : -1;
            if (i13 < i2 || i13 > i3) {
                i6 = -1;
                i7 = -1;
            } else {
                int i15 = i13 == i2 ? i4 : -1;
                i6 = i13 == i3 ? i5 : terminalEmulator2.mColumns;
                i7 = i15;
            }
            TerminalRow terminalRowAllocateFullLineIfNecessary = screen.allocateFullLineIfNecessary(screen.externalToInternalRow(i13));
            char[] cArr2 = terminalRowAllocateFullLineIfNecessary.mText;
            int i16 = i13;
            int spaceUsed = terminalRowAllocateFullLineIfNecessary.getSpaceUsed();
            float f3 = 0.0f;
            boolean z = false;
            boolean z2 = false;
            int i17 = 0;
            boolean z3 = false;
            long j = 0;
            int i18 = -1;
            int i19 = 0;
            int i20 = 0;
            while (i19 < i12) {
                TerminalBuffer terminalBuffer = screen;
                char codePoint = cArr2[i17];
                boolean zIsHighSurrogate = Character.isHighSurrogate(codePoint);
                int i21 = i11;
                int i22 = zIsHighSurrogate ? 2 : 1;
                if (zIsHighSurrogate) {
                    codePoint = Character.toCodePoint(codePoint, cArr2[i17 + 1]);
                }
                int iWidth = WcWidth.width(codePoint);
                int i23 = i12;
                boolean z4 = i14 == i19 || (iWidth == 2 && i14 == i19 + 1);
                boolean z5 = i19 >= i7 && i19 <= i6;
                long style = terminalRowAllocateFullLineIfNecessary.getStyle(i19);
                TerminalRow terminalRow = terminalRowAllocateFullLineIfNecessary;
                float[] fArr = terminalRenderer.asciiMeasures;
                int i24 = i6;
                if (codePoint < fArr.length) {
                    fMeasureText = fArr[codePoint];
                    i8 = i22;
                } else {
                    i8 = i22;
                    fMeasureText = terminalRenderer.mTextPaint.measureText(cArr2, i17, i8);
                }
                float f4 = fMeasureText;
                boolean z6 = ((double) Math.abs((f4 / terminalRenderer.mFontWidth) - ((float) iWidth))) > 0.01d;
                if (style == j && z4 == z && z5 == z2 && !z6 && !z3) {
                    spaceUsed = spaceUsed;
                    i19 = i19;
                    i7 = i7;
                    i14 = i14;
                    iWidth = iWidth;
                    cArr2 = cArr2;
                    i17 = i17;
                    i10 = i18;
                    z6 = z3;
                    i9 = 2;
                    iArr = iArr;
                    i8 = i8;
                } else {
                    if (i19 == 0) {
                        i19 = i19;
                        i9 = 2;
                    } else {
                        int i25 = i19 - i18;
                        int i26 = i17 - i20;
                        i9 = 2;
                        drawTextRun(canvas, cArr2, iArr, f2, i18, i25, i20, i26, f3, z ? terminalEmulator2.mColors.mCurrentColors[258] : 0, cursorStyle, j, zIsReverseVideo || z2);
                    }
                    z2 = z5;
                    z = z4;
                    j = style;
                    i10 = i19;
                    i20 = i17;
                    f3 = 0.0f;
                }
                f3 += f4;
                int i27 = i19 + iWidth;
                i17 += i8;
                while (true) {
                    cArr = cArr2;
                    if (i17 >= spaceUsed || WcWidth.width(cArr, i17) > 0) {
                        break;
                    }
                    i17 += Character.isHighSurrogate(cArr[i17]) ? i9 : 1;
                    cArr2 = cArr;
                }
                terminalEmulator2 = terminalEmulator;
                i18 = i10;
                i19 = i27;
                cArr2 = cArr;
                spaceUsed = spaceUsed;
                iArr = iArr;
                screen = terminalBuffer;
                i12 = i23;
                i11 = i21;
                cursorRow = cursorRow;
                terminalRowAllocateFullLineIfNecessary = terminalRow;
                i6 = i24;
                z3 = z6;
                i7 = i7;
                i14 = i14;
                terminalRenderer = this;
            }
            int[] iArr2 = iArr;
            TerminalBuffer terminalBuffer2 = screen;
            int i28 = cursorRow;
            int i29 = i12;
            int i30 = i11;
            drawTextRun(canvas, cArr2, iArr2, f2, i18, i29 - i18, i20, i17 - i20, f3, z ? terminalEmulator.mColors.mCurrentColors[258] : 0, cursorStyle, j, zIsReverseVideo || z2);
            i13 = i16 + 1;
            terminalEmulator2 = terminalEmulator;
            f = f2;
            iArr = iArr2;
            screen = terminalBuffer2;
            i12 = i29;
            i11 = i30;
            cursorRow = i28;
            terminalRenderer = this;
        }
    }

    private void drawTextRun(Canvas canvas, char[] cArr, int[] iArr, float f, int i, int i2, int i3, int i4, float f2, int i5, int i6, long j, boolean z) {
        int i7;
        float f3;
        float f4;
        boolean z2;
        int i8;
        int i9;
        int iDecodeForeColor = TextStyle.decodeForeColor(j);
        int iDecodeEffect = TextStyle.decodeEffect(j);
        int iDecodeBackColor = TextStyle.decodeBackColor(j);
        boolean z3 = (iDecodeEffect & 9) != 0;
        boolean z4 = (iDecodeEffect & 4) != 0;
        boolean z5 = (iDecodeEffect & 2) != 0;
        boolean z6 = (iDecodeEffect & 64) != 0;
        boolean z7 = (iDecodeEffect & 256) != 0;
        if ((iDecodeForeColor & ViewCompat.MEASURED_STATE_MASK) != -16777216) {
            if (z3 && iDecodeForeColor >= 0 && iDecodeForeColor < 8) {
                iDecodeForeColor += 8;
            }
            iDecodeForeColor = iArr[iDecodeForeColor];
        }
        if ((iDecodeBackColor & ViewCompat.MEASURED_STATE_MASK) != -16777216) {
            iDecodeBackColor = iArr[iDecodeBackColor];
        }
        if (z ^ ((iDecodeEffect & 16) != 0)) {
            i7 = iDecodeBackColor;
        } else {
            i7 = iDecodeForeColor;
            iDecodeForeColor = iDecodeBackColor;
        }
        float f5 = this.mFontWidth;
        float f6 = i * f5;
        float f7 = i2;
        float f8 = f6 + (f7 * f5);
        float f9 = f2 / f5;
        boolean z8 = z3;
        if (Math.abs(f9 - f7) > 0.01d) {
            canvas.save();
            canvas.scale(f7 / f9, 1.0f);
            float f10 = f9 / f7;
            f3 = f6 * f10;
            f4 = f8 * f10;
            z2 = true;
        } else {
            f3 = f6;
            f4 = f8;
            z2 = false;
        }
        if (iDecodeForeColor != iArr[257]) {
            this.mTextPaint.setColor(iDecodeForeColor);
            float f11 = (f - this.mFontLineSpacingAndAscent) + this.mFontAscent;
            Paint paint = this.mTextPaint;
            i8 = ViewCompat.MEASURED_STATE_MASK;
            canvas.drawRect(f3, f11, f4, f, paint);
        } else {
            i8 = ViewCompat.MEASURED_STATE_MASK;
        }
        if (i5 != 0) {
            this.mTextPaint.setColor(i5);
            float f12 = this.mFontLineSpacingAndAscent - this.mFontAscent;
            if (i6 == 1) {
                f12 = (float) (((double) f12) / 4.0d);
            } else if (i6 == 2) {
                f4 = (float) (((double) f4) - (((double) ((f4 - f3) * 3.0f)) / 4.0d));
            }
            canvas.drawRect(f3, f - f12, f4, f, this.mTextPaint);
        }
        if ((iDecodeEffect & 32) == 0) {
            if (z7) {
                i9 = (((((i7 >> 16) & 255) * 2) / 3) << 16) + i8 + (((((i7 >> 8) & 255) * 2) / 3) << 8) + (((i7 & 255) * 2) / 3);
            } else {
                i9 = i7;
            }
            this.mTextPaint.setFakeBoldText(z8);
            this.mTextPaint.setUnderlineText(z4);
            this.mTextPaint.setTextSkewX(z5 ? -0.35f : 0.0f);
            this.mTextPaint.setStrikeThruText(z6);
            this.mTextPaint.setColor(i9);
            canvas.drawText(cArr, i3, i4, f3, f - this.mFontLineSpacingAndAscent, this.mTextPaint);
        }
        if (z2) {
            canvas.restore();
        }
    }
}
