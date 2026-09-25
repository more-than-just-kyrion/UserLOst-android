package com.iiordanov.pubkeygenerator;

import android.graphics.Paint;
import android.text.AndroidCharacter;

/* JADX INFO: loaded from: classes2.dex */
public abstract class EastAsianWidth {
    public abstract void measure(char[] cArr, int i, int i2, byte[] bArr, Paint paint, int i3);

    public static EastAsianWidth getInstance() {
        if (PreferenceConstants.PRE_FROYO) {
            return PreFroyo.Holder.sInstance;
        }
        return FroyoAndBeyond.Holder.sInstance;
    }

    private static class PreFroyo extends EastAsianWidth {
        private static final int BUFFER_SIZE = 4096;
        private float[] mWidths;

        private PreFroyo() {
            this.mWidths = new float[4096];
        }

        private static class Holder {
            private static final PreFroyo sInstance = new PreFroyo();

            private Holder() {
            }
        }

        @Override // com.iiordanov.pubkeygenerator.EastAsianWidth
        public void measure(char[] cArr, int i, int i2, byte[] bArr, Paint paint, int i3) {
            paint.getTextWidths(cArr, i, i2, this.mWidths);
            int i4 = i2 - i;
            for (int i5 = 0; i5 < i4; i5++) {
                bArr[i5] = (byte) (((int) this.mWidths[i5]) != i3 ? 5 : 4);
            }
        }
    }

    private static class FroyoAndBeyond extends EastAsianWidth {

        private static class Holder {
            private static final FroyoAndBeyond sInstance = new FroyoAndBeyond();

            private Holder() {
            }
        }

        private FroyoAndBeyond() {
        }

        @Override // com.iiordanov.pubkeygenerator.EastAsianWidth
        public void measure(char[] cArr, int i, int i2, byte[] bArr, Paint paint, int i3) {
            AndroidCharacter.getEastAsianWidths(cArr, i, i2 - i, bArr);
        }
    }
}
