package com.iiordanov.android.bc;

import android.content.Context;
import android.view.GestureDetector;

/* JADX INFO: loaded from: classes2.dex */
public class BCGestureDetectorDefault implements IBCGestureDetector {
    @Override // com.iiordanov.android.bc.IBCGestureDetector
    public GestureDetector createGestureDetector(Context context, GestureDetector.OnGestureListener onGestureListener) {
        return new GestureDetector(context, onGestureListener);
    }
}
