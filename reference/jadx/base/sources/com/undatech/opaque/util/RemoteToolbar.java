package com.undatech.opaque.util;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteToolbar extends Toolbar {
    private static final String TAG = "RemoteToolbar";

    public RemoteToolbar(Context context) {
        super(context);
    }

    public RemoteToolbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RemoteToolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void makeVisible(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i > i3 || i2 > i4) {
            setX(i5);
            setY(i6);
        } else {
            setX(i);
            setY(i2);
        }
    }
}
