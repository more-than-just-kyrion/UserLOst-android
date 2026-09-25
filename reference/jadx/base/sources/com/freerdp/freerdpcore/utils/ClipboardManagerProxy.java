package com.freerdp.freerdpcore.utils;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public abstract class ClipboardManagerProxy {

    public interface OnClipboardChangedListener {
        void onClipboardChanged(String str);
    }

    public abstract void addClipboardChangedListener(OnClipboardChangedListener onClipboardChangedListener);

    public abstract void removeClipboardboardChangedListener(OnClipboardChangedListener onClipboardChangedListener);

    public abstract void setClipboardData(String str);

    public static ClipboardManagerProxy getClipboardManager(Context context) {
        return new HCClipboardManager(context);
    }

    private static class PreHCClipboardManager extends ClipboardManagerProxy {
        @Override // com.freerdp.freerdpcore.utils.ClipboardManagerProxy
        public void addClipboardChangedListener(OnClipboardChangedListener onClipboardChangedListener) {
        }

        @Override // com.freerdp.freerdpcore.utils.ClipboardManagerProxy
        public void removeClipboardboardChangedListener(OnClipboardChangedListener onClipboardChangedListener) {
        }

        @Override // com.freerdp.freerdpcore.utils.ClipboardManagerProxy
        public void setClipboardData(String str) {
        }

        public PreHCClipboardManager(Context context) {
        }
    }

    private static class HCClipboardManager extends ClipboardManagerProxy implements ClipboardManager.OnPrimaryClipChangedListener {
        private ClipboardManager mClipboardManager;
        private OnClipboardChangedListener mListener;

        public HCClipboardManager(Context context) {
            this.mClipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        }

        @Override // com.freerdp.freerdpcore.utils.ClipboardManagerProxy
        public void setClipboardData(String str) {
            ClipboardManager clipboardManager = this.mClipboardManager;
            if (str == null) {
                str = "";
            }
            clipboardManager.setPrimaryClip(ClipData.newPlainText("rdp-clipboard", str));
        }

        @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
        public void onPrimaryClipChanged() {
            CharSequence text;
            ClipData primaryClip = this.mClipboardManager.getPrimaryClip();
            String string = (primaryClip == null || primaryClip.getItemCount() <= 0 || (text = primaryClip.getItemAt(0).getText()) == null) ? null : text.toString();
            OnClipboardChangedListener onClipboardChangedListener = this.mListener;
            if (onClipboardChangedListener != null) {
                onClipboardChangedListener.onClipboardChanged(string);
            }
        }

        @Override // com.freerdp.freerdpcore.utils.ClipboardManagerProxy
        public void addClipboardChangedListener(OnClipboardChangedListener onClipboardChangedListener) {
            this.mListener = onClipboardChangedListener;
            this.mClipboardManager.addPrimaryClipChangedListener(this);
        }

        @Override // com.freerdp.freerdpcore.utils.ClipboardManagerProxy
        public void removeClipboardboardChangedListener(OnClipboardChangedListener onClipboardChangedListener) {
            this.mListener = null;
            this.mClipboardManager.removePrimaryClipChangedListener(this);
        }
    }
}
