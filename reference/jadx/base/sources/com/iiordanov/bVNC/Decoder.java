package com.iiordanov.bVNC;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.Log;
import androidx.core.view.ViewCompat;
import com.github.luben.zstd.Zstd;
import com.iiordanov.bVNC.input.RemotePointer;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
public class Decoder {
    private static final String TAG = "Decoder";
    private AbstractBitmapData bitmapData;
    private int boffset;
    private int c;
    private int comp_ctl;
    private int dataSize;
    private boolean discardCursorShapeUpdates;
    private int dx;
    private int dy;
    private int hextile_bg;
    private int hextile_fg;
    private int idx;
    private int jpegDataLen;
    private int numColors;
    private int offset;
    private int rowSize;
    private int stream_id;
    private boolean useGradient;
    private boolean valid;
    private RemoteCanvas vncCanvas;
    private byte[] zlibBuf;
    private Inflater zlibInflater;
    private byte[] zrleBuf;
    private ZlibInStream zrleInStream;
    private int[] zrleTilePixels;
    private COLORMODEL pendingColorModel = COLORMODEL.C24bit;
    private COLORMODEL colorModel = null;
    private int bytesPerPixel = 0;
    private int[] colorPalette = null;
    private Inflater[] tightInflaters = new Inflater[4];
    private Paint handleTightRectPaint = new Paint();
    private byte[] solidColorBuf = new byte[3];
    private byte[] tightPalette8 = new byte[2];
    private int[] tightPalette24 = new int[256];
    private byte[] colorBuf = new byte[768];
    private byte[] uncompDataBuf = new byte[36];
    private byte[] zlibData = new byte[4096];
    private byte[] inflBuf = new byte[8192];
    private BitmapFactory.Options bitmapopts = new BitmapFactory.Options();
    private Paint handleZRLERectPaint = new Paint();
    private int[] handleZRLERectPalette = new int[128];
    private byte[] readPixelsBuffer = new byte[128];
    private byte[] handleZlibRectBuffer = new byte[128];
    private Paint handleRREPaint = new Paint();
    private byte[] bg_buf = new byte[4];
    private byte[] rre_buf = new byte[128];
    private byte[] handleRawRectBuffer = new byte[128];
    private Paint handleHextileSubrectPaint = new Paint();
    private byte[] backgroundColorBuffer = new byte[4];

    public Decoder(RemoteCanvas remoteCanvas, boolean z) {
        this.discardCursorShapeUpdates = z;
        this.handleRREPaint.setStyle(Paint.Style.FILL);
        this.handleTightRectPaint.setStyle(Paint.Style.FILL);
        this.bitmapopts.inPurgeable = false;
        this.bitmapopts.inDither = false;
        this.bitmapopts.inTempStorage = new byte[32768];
        this.bitmapopts.inPreferredConfig = Bitmap.Config.RGB_565;
        this.bitmapopts.inScaled = false;
        this.vncCanvas = remoteCanvas;
    }

    void setBitmapData(AbstractBitmapData abstractBitmapData) {
        this.bitmapData = abstractBitmapData;
    }

    void setPixelFormat(RfbProto rfbProto) throws IOException {
        this.pendingColorModel.setPixelFormat(rfbProto);
        this.bytesPerPixel = this.pendingColorModel.bpp();
        this.colorPalette = this.pendingColorModel.palette();
        this.colorModel = this.pendingColorModel;
        this.pendingColorModel = null;
    }

    public void setColorModel(COLORMODEL colormodel) {
        COLORMODEL colormodel2 = this.colorModel;
        if (colormodel2 == null || !colormodel2.equals(colormodel)) {
            this.pendingColorModel = colormodel;
        }
    }

    public COLORMODEL getColorModel() {
        return this.colorModel;
    }

    public boolean isChangedColorModel() {
        return this.pendingColorModel != null;
    }

    void handleRawRect(RfbProto rfbProto, int i, int i2, int i3, int i4) throws IOException {
        handleRawRect(rfbProto, i, i2, i3, i4, true);
    }

    void handleRawRect(RfbProto rfbProto, int i, int i2, int i3, int i4, boolean z) throws IOException {
        RfbProto rfbProto2 = rfbProto;
        boolean zValidDraw = this.bitmapData.validDraw(i, i2, i3, i4);
        int[] iArr = this.bitmapData.bitmapPixels;
        int i5 = 0;
        if (this.bytesPerPixel == 1) {
            if (i3 > this.handleRawRectBuffer.length) {
                this.handleRawRectBuffer = new byte[i3];
            }
            for (int i6 = i2; i6 < i2 + i4; i6++) {
                rfbProto2.readFully(this.handleRawRectBuffer, 0, i3);
                if (zValidDraw) {
                    int iOffset = this.bitmapData.offset(i, i6);
                    for (int i7 = 0; i7 < i3; i7++) {
                        iArr[iOffset + i7] = this.colorPalette[this.handleRawRectBuffer[i7] & 255];
                    }
                }
            }
        } else {
            int i8 = i3 * 4;
            if (i8 > this.handleRawRectBuffer.length) {
                this.handleRawRectBuffer = new byte[i8];
            }
            int i9 = i2;
            while (i9 < i2 + i4) {
                rfbProto2.readFully(this.handleRawRectBuffer, i5, i8);
                if (zValidDraw) {
                    int iOffset2 = this.bitmapData.offset(i, i9);
                    for (int i10 = i5; i10 < i3; i10++) {
                        int i11 = i10 * 4;
                        byte[] bArr = this.handleRawRectBuffer;
                        iArr[iOffset2 + i10] = ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11 + 2] & 255) << 16) | (bArr[i11] & 255);
                    }
                }
                i9++;
                rfbProto2 = rfbProto;
                i5 = 0;
            }
        }
        if (zValidDraw) {
            this.bitmapData.updateBitmap(i, i2, i3, i4);
            if (z) {
                this.vncCanvas.reDraw(i, i2, i3, i4);
            }
        }
    }

    void handleCopyRect(RfbProto rfbProto, int i, int i2, int i3, int i4) throws IOException {
        rfbProto.readCopyRect();
        if (this.bitmapData.validDraw(i, i2, i3, i4)) {
            this.bitmapData.copyRect(rfbProto.copyRectSrcX, rfbProto.copyRectSrcY, i, i2, i3, i4);
            this.vncCanvas.reDraw(i, i2, i3, i4);
        }
    }

    void handleRRERect(RfbProto rfbProto, int i, int i2, int i3, int i4) throws IOException {
        int iRgb;
        int i5;
        int iRgb2;
        boolean zValidDraw = this.bitmapData.validDraw(i, i2, i3, i4);
        int i6 = rfbProto.is.readInt();
        int i7 = 0;
        rfbProto.readFully(this.bg_buf, 0, this.bytesPerPixel);
        if (this.bytesPerPixel == 1) {
            iRgb = this.colorPalette[this.bg_buf[0] & 255];
        } else {
            byte[] bArr = this.bg_buf;
            iRgb = Color.rgb(bArr[2] & 255, bArr[1] & 255, bArr[0] & 255);
        }
        this.handleRREPaint.setColor(iRgb);
        if (zValidDraw) {
            this.bitmapData.drawRect(i, i2, i3, i4, this.handleRREPaint);
        }
        int i8 = (this.bytesPerPixel + 8) * i6;
        if (i8 > this.rre_buf.length) {
            this.rre_buf = new byte[i8];
        }
        rfbProto.readFully(this.rre_buf, 0, i8);
        if (zValidDraw) {
            int i9 = 0;
            while (i7 < i6) {
                if (this.bytesPerPixel == 1) {
                    i5 = i9 + 1;
                    iRgb2 = this.colorPalette[this.rre_buf[i9] & 255];
                } else {
                    byte[] bArr2 = this.rre_buf;
                    i5 = i9 + 4;
                    iRgb2 = Color.rgb(bArr2[i9 + 2] & 255, bArr2[i9 + 1] & 255, bArr2[i9] & 255);
                }
                byte[] bArr3 = this.rre_buf;
                int i10 = ((bArr3[i5] & 255) << 8) + i + (bArr3[i5 + 1] & 255);
                int i11 = ((bArr3[i5 + 2] & 255) << 8) + i2 + (bArr3[i5 + 3] & 255);
                int i12 = ((bArr3[i5 + 4] & 255) << 8) + (bArr3[i5 + 5] & 255);
                int i13 = ((bArr3[i5 + 6] & 255) << 8) + (bArr3[i5 + 7] & 255);
                this.handleRREPaint.setColor(iRgb2);
                this.bitmapData.drawRect(i10, i11, i12, i13, this.handleRREPaint);
                i7++;
                i9 = i5 + 8;
            }
            this.vncCanvas.reDraw(i, i2, i3, i4);
        }
    }

    void handleCoRRERect(RfbProto rfbProto, int i, int i2, int i3, int i4) throws IOException {
        int iRgb;
        int i5;
        int iRgb2;
        boolean zValidDraw = this.bitmapData.validDraw(i, i2, i3, i4);
        int i6 = rfbProto.is.readInt();
        int i7 = 0;
        rfbProto.readFully(this.bg_buf, 0, this.bytesPerPixel);
        if (this.bytesPerPixel == 1) {
            iRgb = this.colorPalette[this.bg_buf[0] & 255];
        } else {
            byte[] bArr = this.bg_buf;
            iRgb = Color.rgb(bArr[2] & 255, bArr[1] & 255, bArr[0] & 255);
        }
        this.handleRREPaint.setColor(iRgb);
        if (zValidDraw) {
            this.bitmapData.drawRect(i, i2, i3, i4, this.handleRREPaint);
        }
        int i8 = (this.bytesPerPixel + 8) * i6;
        if (i8 > this.rre_buf.length) {
            this.rre_buf = new byte[i8];
        }
        rfbProto.readFully(this.rre_buf, 0, i8);
        if (zValidDraw) {
            int i9 = 0;
            while (i7 < i6) {
                if (this.bytesPerPixel == 1) {
                    i5 = i9 + 1;
                    iRgb2 = this.colorPalette[this.rre_buf[i9] & 255];
                } else {
                    byte[] bArr2 = this.rre_buf;
                    i5 = i9 + 4;
                    iRgb2 = Color.rgb(bArr2[i9 + 2] & 255, bArr2[i9 + 1] & 255, bArr2[i9] & 255);
                }
                byte[] bArr3 = this.rre_buf;
                int i10 = i + (bArr3[i5] & 255);
                int i11 = i2 + (bArr3[i5 + 1] & 255);
                int i12 = bArr3[i5 + 2] & 255;
                int i13 = bArr3[i5 + 3] & 255;
                this.handleRREPaint.setColor(iRgb2);
                this.bitmapData.drawRect(i10, i11, i12, i13, this.handleRREPaint);
                i7++;
                i9 = i5 + 4;
            }
            this.vncCanvas.reDraw(i, i2, i3, i4);
        }
    }

    void handleHextileRect(RfbProto rfbProto, int i, int i2, int i3, int i4) throws IOException {
        this.hextile_bg = ViewCompat.MEASURED_STATE_MASK;
        this.hextile_fg = ViewCompat.MEASURED_STATE_MASK;
        int i5 = i2;
        while (true) {
            int i6 = i2 + i4;
            if (i5 >= i6) {
                return;
            }
            int i7 = i6 - i5;
            int i8 = i7 < 16 ? i7 : 16;
            int i9 = i;
            while (true) {
                int i10 = i + i3;
                if (i9 < i10) {
                    int i11 = i10 - i9;
                    handleHextileSubrect(rfbProto, i9, i5, i11 < 16 ? i11 : 16, i8);
                    i9 += 16;
                }
            }
            this.vncCanvas.reDraw(i, i2, i3, i4);
            i5 += 16;
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r0v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v4 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v4 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v4 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r5v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v6 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v4 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    private void handleHextileSubrect(com.iiordanov.bVNC.RfbProto r23, int r24, int r25, int r26, int r27) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iiordanov.bVNC.Decoder.handleHextileSubrect(com.iiordanov.bVNC.RfbProto, int, int, int, int):void");
    }

    void handleZRLERect(RfbProto rfbProto, int i, int i2, int i3, int i4) throws Exception {
        int i5;
        if (this.zrleInStream == null) {
            this.zrleInStream = new ZlibInStream();
        }
        int i6 = rfbProto.is.readInt();
        if (i6 > 67108864) {
            throw new Exception("ZRLE decoder: illegal compressed data size");
        }
        byte[] bArr = this.zrleBuf;
        if (bArr == null || bArr.length < i6) {
            this.zrleBuf = new byte[i6 + 4096];
        }
        char c = 0;
        rfbProto.readFully(this.zrleBuf, 0, i6);
        this.zrleInStream.setUnderlying(new MemInStream(this.zrleBuf, 0, i6), i6);
        boolean zValidDraw = this.bitmapData.validDraw(i, i2, i3, i4);
        int i7 = i2;
        while (true) {
            int i8 = i2 + i4;
            if (i7 < i8) {
                int iMin = Math.min(i8 - i7, 64);
                int i9 = i;
                while (true) {
                    int i10 = i + i3;
                    if (i9 < i10) {
                        int iMin2 = Math.min(i10 - i9, 64);
                        int u8 = this.zrleInStream.readU8();
                        char c2 = (u8 & 128) != 0 ? (char) 1 : c;
                        int i11 = u8 & 127;
                        readZrlePalette(this.handleZRLERectPalette, i11);
                        if (i11 == 1) {
                            int i12 = this.handleZRLERectPalette[c];
                            this.handleZRLERectPaint.setColor(this.bytesPerPixel == 1 ? this.colorPalette[i12 & 255] : i12 | ViewCompat.MEASURED_STATE_MASK);
                            this.handleZRLERectPaint.setStyle(Paint.Style.FILL);
                            if (zValidDraw) {
                                i5 = i9;
                                this.bitmapData.drawRect(i9, i7, iMin2, iMin, this.handleZRLERectPaint);
                            } else {
                                i5 = i9;
                            }
                        } else {
                            i5 = i9;
                            if (c2 == 0) {
                                if (i11 == 0) {
                                    readZrleRawPixels(iMin2, iMin);
                                } else {
                                    readZrlePackedPixels(iMin2, iMin, this.handleZRLERectPalette, i11);
                                }
                            } else if (i11 == 0) {
                                readZrlePlainRLEPixels(iMin2, iMin);
                            } else {
                                readZrlePackedRLEPixels(iMin2, iMin, this.handleZRLERectPalette);
                            }
                            if (zValidDraw) {
                                handleUpdatedZrleTile(i5, i7, iMin2, iMin);
                            }
                        }
                        i9 = i5 + 64;
                        c = 0;
                    }
                }
                i7 += 64;
                c = 0;
            } else {
                this.zrleInStream.reset();
                this.vncCanvas.reDraw(i, i2, i3, i4);
                return;
            }
        }
    }

    void handleZlibRect(RfbProto rfbProto, int i, int i2, int i3, int i4) throws Exception {
        boolean zValidDraw = this.bitmapData.validDraw(i, i2, i3, i4);
        int i5 = rfbProto.is.readInt();
        byte[] bArr = this.zlibBuf;
        if (bArr == null || bArr.length < i5) {
            this.zlibBuf = new byte[i5 * 2];
        }
        int i6 = 0;
        rfbProto.readFully(this.zlibBuf, 0, i5);
        if (this.zlibInflater == null) {
            this.zlibInflater = new Inflater();
        }
        this.zlibInflater.setInput(this.zlibBuf, 0, i5);
        int[] iArr = this.bitmapData.bitmapPixels;
        if (this.bytesPerPixel == 1) {
            if (i3 > this.handleZlibRectBuffer.length) {
                this.handleZlibRectBuffer = new byte[i3];
            }
            for (int i7 = i2; i7 < i2 + i4; i7++) {
                this.zlibInflater.inflate(this.handleZlibRectBuffer, 0, i3);
                if (zValidDraw) {
                    int iOffset = this.bitmapData.offset(i, i7);
                    for (int i8 = 0; i8 < i3; i8++) {
                        iArr[iOffset + i8] = this.colorPalette[this.handleZlibRectBuffer[i8] & 255];
                    }
                }
            }
        } else {
            int i9 = i3 * 4;
            if (i9 > this.handleZlibRectBuffer.length) {
                this.handleZlibRectBuffer = new byte[i9];
            }
            int i10 = i2;
            while (i10 < i2 + i4) {
                this.zlibInflater.inflate(this.handleZlibRectBuffer, i6, i9);
                if (zValidDraw) {
                    int iOffset2 = this.bitmapData.offset(i, i10);
                    for (int i11 = i6; i11 < i3; i11++) {
                        int i12 = i11 * 4;
                        byte[] bArr2 = this.handleZlibRectBuffer;
                        iArr[iOffset2 + i11] = ((bArr2[i12 + 1] & 255) << 8) | ((bArr2[i12 + 2] & 255) << 16) | (bArr2[i12] & 255);
                    }
                }
                i10++;
                i6 = 0;
            }
        }
        if (zValidDraw) {
            this.bitmapData.updateBitmap(i, i2, i3, i4);
            this.vncCanvas.reDraw(i, i2, i3, i4);
        }
    }

    private int readPixel(InStream inStream) throws Exception {
        if (this.bytesPerPixel == 1) {
            return inStream.readU8();
        }
        int u8 = inStream.readU8();
        return ((inStream.readU8() & 255) << 16) | ((inStream.readU8() & 255) << 8) | (u8 & 255);
    }

    private void readPixels(InStream inStream, int[] iArr, int i) throws Exception {
        int i2 = 0;
        if (this.bytesPerPixel == 1) {
            if (i > this.readPixelsBuffer.length) {
                this.readPixelsBuffer = new byte[i];
            }
            inStream.readBytes(this.readPixelsBuffer, 0, i);
            while (i2 < i) {
                iArr[i2] = this.readPixelsBuffer[i2] & 255;
                i2++;
            }
            return;
        }
        int i3 = i * 3;
        if (i3 > this.readPixelsBuffer.length) {
            this.readPixelsBuffer = new byte[i3];
        }
        inStream.readBytes(this.readPixelsBuffer, 0, i3);
        while (i2 < i) {
            int i4 = i2 * 3;
            byte[] bArr = this.readPixelsBuffer;
            iArr[i2] = (bArr[i4] & 255) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 1] & 255) << 8);
            i2++;
        }
    }

    private void readZrlePalette(int[] iArr, int i) throws Exception {
        readPixels(this.zrleInStream, iArr, i);
    }

    private void readZrleRawPixels(int i, int i2) throws Exception {
        int i3 = i * i2;
        int[] iArr = this.zrleTilePixels;
        if (iArr == null || i3 > iArr.length) {
            this.zrleTilePixels = new int[i3];
        }
        readPixels(this.zrleInStream, this.zrleTilePixels, i3);
    }

    private void readZrlePackedPixels(int i, int i2, int[] iArr, int i3) throws Exception {
        int i4;
        int i5;
        if (i3 > 16) {
            i4 = 8;
        } else {
            i4 = 4;
            if (i3 <= 4) {
                i4 = 2;
                if (i3 <= 2) {
                    i4 = 1;
                }
            }
        }
        int i6 = i * i2;
        int[] iArr2 = this.zrleTilePixels;
        if (iArr2 == null || i6 > iArr2.length) {
            this.zrleTilePixels = new int[i6];
        }
        int i7 = 0;
        for (int i8 = 0; i8 < i2; i8++) {
            int i9 = i7 + i;
            int i10 = 0;
            int u8 = 0;
            while (i7 < i9) {
                if (i10 == 0) {
                    u8 = this.zrleInStream.readU8();
                    i10 = 8;
                }
                i10 -= i4;
                int i11 = (u8 >> i10) & ((1 << i4) - 1) & 127;
                if (this.bytesPerPixel == 1) {
                    if (i11 >= this.colorPalette.length) {
                        Log.e(TAG, "zrlePlainRLEPixels palette lookup out of bounds " + i11 + " (0x" + Integer.toHexString(i11) + ")");
                    }
                    i5 = i7 + 1;
                    this.zrleTilePixels[i7] = this.colorPalette[iArr[i11] & 255];
                } else {
                    i5 = i7 + 1;
                    this.zrleTilePixels[i7] = iArr[i11];
                }
                i7 = i5;
            }
        }
    }

    private void readZrlePlainRLEPixels(int i, int i2) throws Exception {
        int u8;
        int i3 = i * i2;
        int[] iArr = this.zrleTilePixels;
        if (iArr == null || i3 > iArr.length) {
            this.zrleTilePixels = new int[i3];
        }
        int i4 = 0;
        while (i4 < i3) {
            int pixel = readPixel(this.zrleInStream);
            int i5 = 1;
            do {
                u8 = this.zrleInStream.readU8();
                i5 += u8;
            } while (u8 == 255);
            if (i5 > i3 - i4) {
                throw new Exception("ZRLE decoder: assertion failed (len <= end-ptr)");
            }
            if (this.bytesPerPixel == 1) {
                while (true) {
                    int i6 = i5 - 1;
                    if (i5 > 0) {
                        this.zrleTilePixels[i4] = this.colorPalette[pixel & 255];
                        i5 = i6;
                        i4++;
                    }
                }
            } else {
                while (true) {
                    int i7 = i5 - 1;
                    if (i5 > 0) {
                        this.zrleTilePixels[i4] = pixel;
                        i5 = i7;
                        i4++;
                    }
                }
            }
        }
    }

    private void readZrlePackedRLEPixels(int i, int i2, int[] iArr) throws Exception {
        int i3;
        int u8;
        int i4 = i * i2;
        int[] iArr2 = this.zrleTilePixels;
        if (iArr2 == null || i4 > iArr2.length) {
            this.zrleTilePixels = new int[i4];
        }
        int i5 = 0;
        while (i5 < i4) {
            int u9 = this.zrleInStream.readU8();
            if ((u9 & 128) != 0) {
                i3 = 1;
                do {
                    u8 = this.zrleInStream.readU8();
                    i3 += u8;
                } while (u8 == 255);
                if (i3 > i4 - i5) {
                    throw new Exception("ZRLE decoder: assertion failed (len <= end - ptr)");
                }
            } else {
                i3 = 1;
            }
            int i6 = iArr[u9 & 127];
            if (this.bytesPerPixel == 1) {
                while (true) {
                    int i7 = i3 - 1;
                    if (i3 > 0) {
                        this.zrleTilePixels[i5] = this.colorPalette[i6 & 255];
                        i3 = i7;
                        i5++;
                    }
                }
            } else {
                while (true) {
                    int i8 = i3 - 1;
                    if (i3 > 0) {
                        this.zrleTilePixels[i5] = i6;
                        i3 = i8;
                        i5++;
                    }
                }
            }
        }
    }

    private void handleUpdatedZrleTile(int i, int i2, int i3, int i4) {
        int[] iArr = this.bitmapData.bitmapPixels;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            System.arraycopy(this.zrleTilePixels, i5, iArr, this.bitmapData.offset(i, i2 + i6), i3);
            i5 += i3;
        }
        this.bitmapData.updateBitmap(i, i2, i3, i4);
    }

    void handleTightRect(RfbProto rfbProto, int i, int i2, int i3, int i4, boolean z) throws Exception {
        int[] iArr = this.bitmapData.bitmapPixels;
        this.valid = this.bitmapData.validDraw(i, i2, i3, i4);
        this.comp_ctl = rfbProto.is.readUnsignedByte();
        this.rowSize = i3;
        this.boffset = 0;
        this.numColors = 0;
        this.useGradient = false;
        this.stream_id = 0;
        while (true) {
            int i5 = this.stream_id;
            if (i5 >= 4) {
                break;
            }
            int i6 = this.comp_ctl;
            if ((i6 & 1) != 0) {
                this.tightInflaters[i5] = null;
            }
            this.comp_ctl = i6 >> 1;
            this.stream_id = i5 + 1;
        }
        int i7 = this.comp_ctl;
        if (i7 > 9) {
            throw new Exception("Incorrect tight subencoding: " + this.comp_ctl);
        }
        if (i7 == 8) {
            if (this.bytesPerPixel == 1) {
                int unsignedByte = rfbProto.is.readUnsignedByte();
                this.idx = unsignedByte;
                this.handleTightRectPaint.setColor(this.colorPalette[unsignedByte & 255]);
            } else {
                rfbProto.readFully(this.solidColorBuf, 0, 3);
                Paint paint = this.handleTightRectPaint;
                byte[] bArr = this.solidColorBuf;
                paint.setColor((bArr[2] & 255) | ((bArr[0] & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | ((bArr[1] & 255) << 8));
            }
            if (this.valid) {
                this.bitmapData.drawRect(i, i2, i3, i4, this.handleTightRectPaint);
                this.vncCanvas.reDraw(i, i2, i3, i4);
                return;
            }
            return;
        }
        if (i7 == 9) {
            int compactLen = rfbProto.readCompactLen();
            this.jpegDataLen = compactLen;
            if (compactLen > this.inflBuf.length) {
                this.inflBuf = new byte[compactLen * 2];
            }
            rfbProto.readFully(this.inflBuf, 0, compactLen);
            if (this.valid) {
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(this.inflBuf, 0, this.jpegDataLen, this.bitmapopts);
                this.bitmapData.updateBitmap(bitmapDecodeByteArray, i, i2, i3, i4);
                this.vncCanvas.reDraw(i, i2, i3, i4);
                bitmapDecodeByteArray.recycle();
                return;
            }
            return;
        }
        if ((i7 & 4) != 0) {
            int unsignedByte2 = rfbProto.is.readUnsignedByte();
            if (unsignedByte2 == 1) {
                int unsignedByte3 = rfbProto.is.readUnsignedByte() + 1;
                this.numColors = unsignedByte3;
                if (this.bytesPerPixel != 1) {
                    rfbProto.readFully(this.colorBuf, 0, unsignedByte3 * 3);
                    this.c = 0;
                    while (true) {
                        int i8 = this.c;
                        if (i8 >= this.numColors) {
                            break;
                        }
                        int i9 = i8 * 3;
                        this.idx = i9;
                        int[] iArr2 = this.tightPalette24;
                        byte[] bArr2 = this.colorBuf;
                        iArr2[i8] = (bArr2[i9 + 2] & 255) | ((bArr2[i9 + 1] & 255) << 8) | ((bArr2[i9] & 255) << 16);
                        this.c = i8 + 1;
                    }
                } else {
                    if (unsignedByte3 != 2) {
                        throw new Exception("Incorrect tight palette size: " + this.numColors);
                    }
                    rfbProto.readFully(this.tightPalette8, 0, 2);
                }
                if (this.numColors == 2) {
                    this.rowSize = (i3 + 7) / 8;
                }
            } else if (unsignedByte2 == 2) {
                this.useGradient = true;
            } else if (unsignedByte2 != 0) {
                throw new Exception("Incorrect tight filter id: " + unsignedByte2);
            }
        }
        if (this.numColors == 0 && this.bytesPerPixel == 4) {
            this.rowSize *= 3;
        }
        int i10 = this.rowSize * i4;
        this.dataSize = i10;
        if (i10 < 12) {
            rfbProto.readFully(this.uncompDataBuf, 0, i10);
            if (!this.valid) {
                return;
            }
            int i11 = this.numColors;
            if (i11 == 0) {
                if (this.useGradient) {
                    decodeGradientData(i, i2, i3, i4, this.uncompDataBuf);
                } else {
                    int i12 = 0;
                    this.boffset = 0;
                    if (this.bytesPerPixel == 1) {
                        this.dy = i2;
                        while (true) {
                            int i13 = this.dy;
                            if (i13 >= i2 + i4) {
                                break;
                            }
                            this.offset = this.bitmapData.offset(i, i13);
                            this.dx = i12;
                            while (true) {
                                int i14 = this.dx;
                                if (i14 < i3) {
                                    int i15 = this.offset;
                                    this.offset = i15 + 1;
                                    int[] iArr3 = this.colorPalette;
                                    byte[] bArr3 = this.uncompDataBuf;
                                    int i16 = this.boffset;
                                    this.boffset = i16 + 1;
                                    iArr[i15] = iArr3[bArr3[i16] & 255];
                                    this.dx = i14 + 1;
                                }
                            }
                            this.dy++;
                            i12 = 0;
                        }
                    } else {
                        this.dy = i2;
                        while (true) {
                            int i17 = this.dy;
                            if (i17 >= i2 + i4) {
                                break;
                            }
                            this.offset = this.bitmapData.offset(i, i17);
                            this.dx = 0;
                            while (true) {
                                int i18 = this.dx;
                                if (i18 < i3) {
                                    int i19 = this.boffset;
                                    int i20 = i19 * 3;
                                    this.idx = i20;
                                    this.boffset = i19 + 1;
                                    int i21 = this.offset;
                                    this.offset = i21 + 1;
                                    byte[] bArr4 = this.uncompDataBuf;
                                    iArr[i21] = (bArr4[i20 + 2] & 255) | ((bArr4[i20] & 255) << 16) | ((bArr4[i20 + 1] & 255) << 8);
                                    this.dx = i18 + 1;
                                }
                            }
                            this.dy++;
                        }
                    }
                }
            } else if (i11 == 2) {
                if (this.bytesPerPixel == 1) {
                    decodeMonoData(i, i2, i3, i4, this.uncompDataBuf, this.tightPalette8);
                } else {
                    decodeMonoData(i, i2, i3, i4, this.uncompDataBuf, this.tightPalette24);
                }
            } else {
                this.boffset = 0;
                this.dy = i2;
                while (true) {
                    int i22 = this.dy;
                    if (i22 >= i2 + i4) {
                        break;
                    }
                    this.offset = this.bitmapData.offset(i, i22);
                    this.dx = i;
                    while (true) {
                        int i23 = this.dx;
                        if (i23 < i + i3) {
                            int i24 = this.offset;
                            this.offset = i24 + 1;
                            int[] iArr4 = this.tightPalette24;
                            byte[] bArr5 = this.uncompDataBuf;
                            int i25 = this.boffset;
                            this.boffset = i25 + 1;
                            iArr[i24] = iArr4[bArr5[i25] & 255];
                            this.dx = i23 + 1;
                        }
                    }
                    this.dy++;
                }
            }
        } else {
            if (z) {
                byte[] bArr6 = new byte[rfbProto.readCompactLen()];
                this.zlibData = bArr6;
                rfbProto.readFully(bArr6);
                byte[] bArr7 = new byte[this.dataSize];
                this.inflBuf = bArr7;
                try {
                    Zstd.decompress(bArr7, this.zlibData);
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            } else {
                int compactLen2 = rfbProto.readCompactLen();
                if (compactLen2 > this.zlibData.length) {
                    this.zlibData = new byte[compactLen2 * 2];
                }
                rfbProto.readFully(this.zlibData, 0, compactLen2);
                int i26 = this.comp_ctl & 3;
                this.stream_id = i26;
                Inflater[] inflaterArr = this.tightInflaters;
                if (inflaterArr[i26] == null) {
                    inflaterArr[i26] = new Inflater();
                }
                Inflater inflater = this.tightInflaters[this.stream_id];
                inflater.setInput(this.zlibData, 0, compactLen2);
                int i27 = this.dataSize;
                if (i27 > this.inflBuf.length) {
                    this.inflBuf = new byte[i27 * 2];
                }
                try {
                    inflater.inflate(this.inflBuf, 0, i27);
                } catch (DataFormatException e2) {
                    e2.printStackTrace();
                }
            }
            if (!this.valid) {
                return;
            }
            int i28 = this.numColors;
            if (i28 == 0) {
                if (this.useGradient) {
                    decodeGradientData(i, i2, i3, i4, this.inflBuf);
                } else {
                    int i29 = 0;
                    this.boffset = 0;
                    if (this.bytesPerPixel == 1) {
                        this.dy = i2;
                        while (true) {
                            int i30 = this.dy;
                            if (i30 >= i2 + i4) {
                                break;
                            }
                            this.offset = this.bitmapData.offset(i, i30);
                            this.dx = i29;
                            while (true) {
                                int i31 = this.dx;
                                if (i31 < i3) {
                                    int i32 = this.offset;
                                    this.offset = i32 + 1;
                                    int[] iArr5 = this.colorPalette;
                                    byte[] bArr8 = this.inflBuf;
                                    int i33 = this.boffset;
                                    this.boffset = i33 + 1;
                                    iArr[i32] = iArr5[bArr8[i33] & 255];
                                    this.dx = i31 + 1;
                                }
                            }
                            this.dy++;
                            i29 = 0;
                        }
                    } else {
                        this.dy = i2;
                        while (true) {
                            int i34 = this.dy;
                            if (i34 >= i2 + i4) {
                                break;
                            }
                            this.offset = this.bitmapData.offset(i, i34);
                            this.dx = 0;
                            while (true) {
                                int i35 = this.dx;
                                if (i35 < i3) {
                                    int i36 = this.boffset;
                                    int i37 = i36 * 3;
                                    this.idx = i37;
                                    this.boffset = i36 + 1;
                                    int i38 = this.offset;
                                    this.offset = i38 + 1;
                                    byte[] bArr9 = this.inflBuf;
                                    iArr[i38] = (bArr9[i37 + 2] & 255) | ((bArr9[i37] & 255) << 16) | ((bArr9[i37 + 1] & 255) << 8);
                                    this.dx = i35 + 1;
                                }
                            }
                            this.dy++;
                        }
                    }
                }
            } else if (i28 == 2) {
                if (this.bytesPerPixel == 1) {
                    decodeMonoData(i, i2, i3, i4, this.inflBuf, this.tightPalette8);
                } else {
                    decodeMonoData(i, i2, i3, i4, this.inflBuf, this.tightPalette24);
                }
            } else {
                this.boffset = 0;
                this.dy = i2;
                while (true) {
                    int i39 = this.dy;
                    if (i39 >= i2 + i4) {
                        break;
                    }
                    this.offset = this.bitmapData.offset(i, i39);
                    this.dx = i;
                    while (true) {
                        int i40 = this.dx;
                        if (i40 < i + i3) {
                            int i41 = this.offset;
                            this.offset = i41 + 1;
                            int[] iArr6 = this.tightPalette24;
                            byte[] bArr10 = this.inflBuf;
                            int i42 = this.boffset;
                            this.boffset = i42 + 1;
                            iArr[i41] = iArr6[bArr10[i42] & 255];
                            this.dx = i40 + 1;
                        }
                    }
                    this.dy++;
                }
            }
        }
        this.bitmapData.updateBitmap(i, i2, i3, i4);
        this.vncCanvas.reDraw(i, i2, i3, i4);
    }

    void decodeMonoData(int i, int i2, int i3, int i4, byte[] bArr, byte[] bArr2) {
        int i5;
        int iOffset = this.bitmapData.offset(i, i2);
        int[] iArr = this.bitmapData.bitmapPixels;
        int i6 = (i3 + 7) / 8;
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = 0;
            while (true) {
                i5 = 7;
                if (i8 >= i3 / 8) {
                    break;
                }
                byte b = bArr[(i7 * i6) + i8];
                while (i5 >= 0) {
                    iArr[iOffset] = this.colorPalette[bArr2[(b >> i5) & 1] & 255];
                    i5--;
                    iOffset++;
                }
                i8++;
            }
            while (i5 >= 8 - (i3 % 8)) {
                iArr[iOffset] = this.colorPalette[bArr2[(bArr[(i7 * i6) + i8] >> i5) & 1] & 255];
                i5--;
                iOffset++;
            }
            iOffset += this.bitmapData.bitmapwidth - i3;
        }
    }

    void decodeMonoData(int i, int i2, int i3, int i4, byte[] bArr, int[] iArr) {
        int i5;
        int iOffset = this.bitmapData.offset(i, i2);
        int[] iArr2 = this.bitmapData.bitmapPixels;
        int i6 = (i3 + 7) / 8;
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = 0;
            while (true) {
                i5 = 7;
                if (i8 >= i3 / 8) {
                    break;
                }
                byte b = bArr[(i7 * i6) + i8];
                while (i5 >= 0) {
                    iArr2[iOffset] = iArr[(b >> i5) & 1];
                    i5--;
                    iOffset++;
                }
                i8++;
            }
            while (i5 >= 8 - (i3 % 8)) {
                iArr2[iOffset] = iArr[(bArr[(i7 * i6) + i8] >> i5) & 1];
                i5--;
                iOffset++;
            }
            iOffset += this.bitmapData.bitmapwidth - i3;
        }
    }

    void decodeGradientData(int i, int i2, int i3, int i4, byte[] bArr) {
        int i5 = i3 * 3;
        byte[] bArr2 = new byte[i5];
        byte[] bArr3 = new byte[i5];
        int i6 = 3;
        byte[] bArr4 = new byte[3];
        int[] iArr = new int[3];
        int[] iArr2 = this.bitmapData.bitmapPixels;
        int iOffset = this.bitmapData.offset(i, i2);
        int i7 = 0;
        int i8 = 0;
        while (i8 < i4) {
            for (int i9 = i7; i9 < i6; i9++) {
                byte b = (byte) (bArr2[i9] + bArr[(i8 * i3 * i6) + i9]);
                bArr4[i9] = b;
                bArr3[i9] = b;
            }
            int i10 = iOffset + 1;
            iArr2[iOffset] = (bArr4[2] & 255) | ((bArr4[1] & 255) << 8) | ((bArr4[i7] & 255) << 16);
            int i11 = 1;
            while (i11 < i3) {
                int i12 = 0;
                for (int i13 = 3; i12 < i13; i13 = 3) {
                    int i14 = (i11 * 3) + i12;
                    int i15 = ((bArr2[i14] & 255) + (bArr4[i12] & 255)) - (bArr2[((i11 - 1) * 3) + i12] & 255);
                    iArr[i12] = i15;
                    if (i15 > 255) {
                        iArr[i12] = 255;
                    } else if (i15 < 0) {
                        iArr[i12] = 0;
                    }
                    byte b2 = (byte) (iArr[i12] + bArr[(((i8 * i3) + i11) * 3) + i12]);
                    bArr4[i12] = b2;
                    bArr3[i14] = b2;
                    i12++;
                }
                iArr2[i10] = (bArr4[2] & 255) | ((bArr4[0] & 255) << 16) | ((bArr4[1] & 255) << 8);
                i11++;
                i10++;
                iArr = iArr;
            }
            System.arraycopy(bArr3, 0, bArr2, 0, i5);
            iOffset = i10 + (this.bitmapData.bitmapwidth - i3);
            i8++;
            i7 = 0;
            i6 = 3;
            iArr = iArr;
        }
    }

    synchronized void handleCursorShapeUpdate(RfbProto rfbProto, int i, int i2, int i3, int i4, int i5) throws IOException {
        RemotePointer pointer = this.vncCanvas.getPointer();
        int x = pointer.getX();
        int y = pointer.getY();
        if (i4 * i5 == 0) {
            return;
        }
        int[] iArrDecodeCursorShape = decodeCursorShape(rfbProto, i, i4, i5);
        if (!this.discardCursorShapeUpdates) {
            this.bitmapData.setCursorRect(x, y, i4, i5, i2, i3);
            this.bitmapData.setSoftCursor(iArrDecodeCursorShape);
            RectF cursorRect = this.bitmapData.getCursorRect();
            this.vncCanvas.reDraw(cursorRect.left, cursorRect.top, cursorRect.width(), cursorRect.height());
        }
    }

    synchronized int[] decodeCursorShape(RfbProto rfbProto, int i, int i2, int i3) throws IOException {
        int[] iArr;
        int i4;
        int i5;
        int i6 = (i2 + 7) / 8;
        int i7 = i6 * i3;
        int i8 = i2 * i3;
        iArr = new int[i8];
        int i9 = 0;
        if (i == -240) {
            byte[] bArr = new byte[6];
            rfbProto.readFully(bArr);
            int[] iArr2 = {((bArr[3] & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | ((bArr[4] & 255) << 8) | (bArr[5] & 255), (bArr[2] & 255) | (-16777216) | ((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)};
            byte[] bArr2 = new byte[i7];
            rfbProto.readFully(bArr2);
            byte[] bArr3 = new byte[i7];
            rfbProto.readFully(bArr3);
            int i10 = 0;
            for (int i11 = 0; i11 < i3; i11++) {
                int i12 = 0;
                while (i12 < i2 / 8) {
                    int i13 = (i11 * i6) + i12;
                    byte b = bArr2[i13];
                    byte b2 = bArr3[i13];
                    int i14 = 7;
                    while (i14 >= 0) {
                        iArr[i10] = ((b2 >> i14) & 1) != 0 ? iArr2[(b >> i14) & 1] : 0;
                        i14--;
                        i10++;
                    }
                    i12++;
                }
                int i15 = 7;
                while (i15 >= 8 - (i2 % 8)) {
                    int i16 = (i11 * i6) + i12;
                    iArr[i10] = ((bArr3[i16] >> i15) & 1) != 0 ? iArr2[(bArr2[i16] >> i15) & 1] : 0;
                    i15--;
                    i10++;
                }
            }
        } else {
            byte[] bArr4 = new byte[i8 * this.bytesPerPixel];
            rfbProto.readFully(bArr4);
            byte[] bArr5 = new byte[i7];
            rfbProto.readFully(bArr5);
            int i17 = 0;
            int i18 = 0;
            while (i17 < i3) {
                int i19 = i9;
                while (i19 < i2 / 8) {
                    byte b3 = bArr5[(i17 * i6) + i19];
                    int i20 = 7;
                    while (i20 >= 0) {
                        if (((b3 >> i20) & 1) == 0) {
                            i5 = 0;
                        } else if (this.bytesPerPixel == 1) {
                            i5 = this.colorPalette[bArr4[i18] & 255];
                        } else {
                            int i21 = i18 * 4;
                            i5 = (bArr4[i21] & 255) | ((bArr4[i21 + 1] & 255) << 8) | ((bArr4[i21 + 2] & 255) << 16) | ViewCompat.MEASURED_STATE_MASK;
                        }
                        iArr[i18] = i5;
                        i20--;
                        i18++;
                    }
                    i19++;
                }
                int i22 = 7;
                while (i22 >= 8 - (i2 % 8)) {
                    if (((bArr5[(i17 * i6) + i19] >> i22) & 1) == 0) {
                        i4 = 0;
                    } else if (this.bytesPerPixel == 1) {
                        i4 = this.colorPalette[bArr4[i18] & 255];
                    } else {
                        int i23 = i18 * 4;
                        i4 = (bArr4[i23] & 255) | ((bArr4[i23 + 2] & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | ((bArr4[i23 + 1] & 255) << 8);
                    }
                    int i24 = i18 + 1;
                    iArr[i18] = i4;
                    i22--;
                    i18 = i24;
                }
                i17++;
                i9 = 0;
            }
        }
        return iArr;
    }
}
