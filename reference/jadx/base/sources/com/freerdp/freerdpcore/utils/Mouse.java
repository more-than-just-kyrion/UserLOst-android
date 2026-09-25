package com.freerdp.freerdpcore.utils;

import android.content.Context;
import com.freerdp.freerdpcore.presentation.ApplicationSettingsActivity;

/* JADX INFO: loaded from: classes.dex */
public class Mouse {
    private static final int PTRFLAGS_DOWN = 32768;
    private static final int PTRFLAGS_LBUTTON = 4096;
    private static final int PTRFLAGS_MOVE = 2048;
    private static final int PTRFLAGS_RBUTTON = 8192;
    private static final int PTRFLAGS_WHEEL = 512;
    private static final int PTRFLAGS_WHEEL_NEGATIVE = 256;

    public static int getMoveEvent() {
        return 2048;
    }

    public static int getLeftButtonEvent(Context context, boolean z) {
        if (ApplicationSettingsActivity.getSwapMouseButtons(context)) {
            return (z ? 32768 : 0) | 8192;
        }
        return (z ? 32768 : 0) | 4096;
    }

    public static int getRightButtonEvent(Context context, boolean z) {
        if (ApplicationSettingsActivity.getSwapMouseButtons(context)) {
            return (z ? 32768 : 0) | 4096;
        }
        return (z ? 32768 : 0) | 8192;
    }

    public static int getScrollEvent(Context context, boolean z) {
        if (ApplicationSettingsActivity.getInvertScrolling(context)) {
            z = !z;
        }
        return z ? 904 : 632;
    }
}
