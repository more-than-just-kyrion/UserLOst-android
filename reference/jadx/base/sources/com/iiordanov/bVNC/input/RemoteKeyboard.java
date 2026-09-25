package com.iiordanov.bVNC.input;

import android.content.Context;
import android.os.Handler;
import com.undatech.opaque.RfbConnectable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RemoteKeyboard extends com.undatech.opaque.input.RemoteKeyboard {
    public abstract void sendMetaKey(MetaKeyBean metaKeyBean);

    public RemoteKeyboard(RfbConnectable rfbConnectable, Context context, Handler handler, boolean z) {
        super(rfbConnectable, context, handler, z);
    }
}
