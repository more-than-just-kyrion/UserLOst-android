package com.termux.terminal;

/* JADX INFO: loaded from: classes2.dex */
public final class TerminalColors {
    public static final TerminalColorScheme COLOR_SCHEME = new TerminalColorScheme();
    public final int[] mCurrentColors = new int[259];

    public TerminalColors() {
        reset();
    }

    public void reset(int i) {
        this.mCurrentColors[i] = COLOR_SCHEME.mDefaultColors[i];
    }

    public void reset() {
        System.arraycopy(COLOR_SCHEME.mDefaultColors, 0, this.mCurrentColors, 0, 259);
    }

    static int parse(String str) {
        int i;
        try {
            int i2 = 1;
            if (str.charAt(0) != '#') {
                if (str.startsWith("rgb:")) {
                    i2 = 4;
                    i = 1;
                }
                return 0;
            }
            i = 0;
            int length = (str.length() - i2) - (i * 2);
            if (length % 3 != 0) {
                return 0;
            }
            int i3 = length / 3;
            double dPow = 255.0d / (Math.pow(2.0d, i3 * 4) - 1.0d);
            String strSubstring = str.substring(i2, i2 + i3);
            int i4 = i + i3;
            int i5 = i2 + i4;
            String strSubstring2 = str.substring(i5, i5 + i3);
            int i6 = i5 + i4;
            return ((int) (((double) Integer.parseInt(str.substring(i6, i3 + i6), 16)) * dPow)) | (-16777216) | (((int) (((double) Integer.parseInt(strSubstring, 16)) * dPow)) << 16) | (((int) (((double) Integer.parseInt(strSubstring2, 16)) * dPow)) << 8);
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
        }
        return 0;
    }

    public void tryParseColor(int i, String str) {
        int i2 = parse(str);
        if (i2 != 0) {
            this.mCurrentColors[i] = i2;
        }
    }
}
