package com.iiordanov.android.bc;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
class BCHapticDefault implements IBCHaptic {
    BCHapticDefault() {
    }

    @Override // com.iiordanov.android.bc.IBCHaptic
    public boolean performLongPressHaptic(View view) {
        return view.performHapticFeedback(0, 3);
    }
}
