package com.iiordanov.android.bc;

import android.content.Context;
import android.view.GestureDetector;

/* JADX INFO: loaded from: classes2.dex */
public interface IBCGestureDetector {
    GestureDetector createGestureDetector(Context context, GestureDetector.OnGestureListener onGestureListener);
}
