package com.iiordanov.bVNC;

import com.undatech.opaque.RfbConnectable;
import com.undatech.remoteClientUi.R;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public enum COLORMODEL {
    C24bit,
    C256,
    C64,
    C8,
    C4,
    C2;

    /* JADX INFO: renamed from: com.iiordanov.bVNC.COLORMODEL$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$iiordanov$bVNC$COLORMODEL;

        static {
            int[] iArr = new int[COLORMODEL.values().length];
            $SwitchMap$com$iiordanov$bVNC$COLORMODEL = iArr;
            try {
                iArr[COLORMODEL.C24bit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$iiordanov$bVNC$COLORMODEL[COLORMODEL.C256.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$iiordanov$bVNC$COLORMODEL[COLORMODEL.C64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$iiordanov$bVNC$COLORMODEL[COLORMODEL.C8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$iiordanov$bVNC$COLORMODEL[COLORMODEL.C4.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$iiordanov$bVNC$COLORMODEL[COLORMODEL.C2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public int bpp() {
        return AnonymousClass1.$SwitchMap$com$iiordanov$bVNC$COLORMODEL[ordinal()] != 1 ? 1 : 4;
    }

    public int[] palette() {
        int i = AnonymousClass1.$SwitchMap$com$iiordanov$bVNC$COLORMODEL[ordinal()];
        if (i == 2) {
            return ColorModel256.colors;
        }
        if (i == 3) {
            return ColorModel64.colors;
        }
        if (i == 4) {
            return ColorModel8.colors;
        }
        if (i == 5) {
            return ColorModel64.colors;
        }
        if (i != 6) {
            return null;
        }
        return ColorModel8.colors;
    }

    public String nameString() {
        return super.toString();
    }

    public void setPixelFormat(RfbConnectable rfbConnectable) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$iiordanov$bVNC$COLORMODEL[ordinal()]) {
            case 1:
                rfbConnectable.writeSetPixelFormat(32, 24, false, true, 255, 255, 255, 16, 8, 0, false);
                break;
            case 2:
                rfbConnectable.writeSetPixelFormat(8, 8, false, true, 7, 7, 3, 0, 3, 6, false);
                break;
            case 3:
                rfbConnectable.writeSetPixelFormat(8, 6, false, true, 3, 3, 3, 4, 2, 0, false);
                break;
            case 4:
                rfbConnectable.writeSetPixelFormat(8, 3, false, true, 1, 1, 1, 2, 1, 0, false);
                break;
            case 5:
                rfbConnectable.writeSetPixelFormat(8, 6, false, true, 3, 3, 3, 4, 2, 0, true);
                break;
            case 6:
                rfbConnectable.writeSetPixelFormat(8, 3, false, true, 1, 1, 1, 2, 1, 0, true);
                break;
            default:
                rfbConnectable.writeSetPixelFormat(32, 24, false, true, 255, 255, 255, 16, 8, 0, false);
                break;
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        switch (AnonymousClass1.$SwitchMap$com$iiordanov$bVNC$COLORMODEL[ordinal()]) {
            case 1:
                return RemoteCanvasActivity.getContext().getString(R.string.color_24_bit);
            case 2:
                return RemoteCanvasActivity.getContext().getString(R.string.color_256);
            case 3:
                return RemoteCanvasActivity.getContext().getString(R.string.color_64);
            case 4:
                return RemoteCanvasActivity.getContext().getString(R.string.color_8);
            case 5:
                return RemoteCanvasActivity.getContext().getString(R.string.color_greyscale);
            case 6:
                return RemoteCanvasActivity.getContext().getString(R.string.color_black_and_white);
            default:
                return RemoteCanvasActivity.getContext().getString(R.string.color_24_bit);
        }
    }
}
