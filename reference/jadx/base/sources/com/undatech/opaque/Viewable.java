package com.undatech.opaque;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes2.dex */
public interface Viewable {
    Bitmap getBitmap();

    int getDesiredHeight();

    int getDesiredWidth();

    void mouseMode(boolean z);

    void reDraw(int i, int i2, int i3, int i4);

    void reallocateDrawable(int i, int i2);

    void setMousePointerPosition(int i, int i2);

    void waitUntilInflated();
}
