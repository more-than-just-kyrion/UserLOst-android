package com.iiordanov.bVNC;

import android.content.Context;
import android.text.ClipboardManager;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class ClipboardMonitor extends TimerTask {
    ClipboardManager clipboard;
    private Context context;
    RemoteCanvas vncCanvas;
    private String TAG = "ClipboardMonitor";
    private String knownClipboardContents = new String("");

    public ClipboardMonitor(Context context, RemoteCanvas remoteCanvas) {
        this.context = context;
        this.vncCanvas = remoteCanvas;
        this.clipboard = (ClipboardManager) context.getSystemService("clipboard");
    }

    private String getClipboardContents() {
        try {
            return this.clipboard.getText().toString();
        } catch (NullPointerException | RuntimeException unused) {
            return null;
        }
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        String clipboardContents = getClipboardContents();
        if (!this.vncCanvas.serverJustCutText && clipboardContents != null && !clipboardContents.equals(this.knownClipboardContents)) {
            if (this.vncCanvas.rfbconn == null || !this.vncCanvas.rfbconn.isInNormalProtocol()) {
                return;
            }
            this.vncCanvas.rfbconn.writeClientCutText(clipboardContents);
            this.knownClipboardContents = new String(clipboardContents);
            return;
        }
        if (!this.vncCanvas.serverJustCutText || clipboardContents == null) {
            return;
        }
        this.knownClipboardContents = new String(clipboardContents);
        this.vncCanvas.serverJustCutText = false;
    }
}
