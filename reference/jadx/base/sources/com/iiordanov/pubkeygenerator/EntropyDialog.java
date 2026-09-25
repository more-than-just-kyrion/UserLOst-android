package com.iiordanov.pubkeygenerator;

import android.app.Dialog;
import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class EntropyDialog extends Dialog implements OnEntropyGatheredListener {
    public EntropyDialog(Context context) {
        super(context);
        setContentView(R.layout.dia_gatherentropy);
        setTitle(R.string.gather_entropy);
        ((EntropyView) findViewById(R.id.entropy)).addOnEntropyGatheredListener(this);
    }

    public EntropyDialog(Context context, View view) {
        super(context);
        setContentView(view);
        setTitle(R.string.gather_entropy);
        ((EntropyView) findViewById(R.id.entropy)).addOnEntropyGatheredListener(this);
    }

    @Override // com.iiordanov.pubkeygenerator.OnEntropyGatheredListener
    public void onEntropyGathered(byte[] bArr) {
        dismiss();
    }
}
