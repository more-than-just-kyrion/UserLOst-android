package com.undatech.opaque.input;

import android.os.Handler;
import android.view.KeyEvent;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public class KeyRepeater implements Runnable {
    private Handler handler;
    private RemoteKeyboard keyboard;
    private int keyCode = 0;
    private KeyEvent event = null;
    private int initialDelay = HttpStatus.SC_BAD_REQUEST;
    private int defaultDelay = 100;
    private boolean starting = false;

    public KeyRepeater(RemoteKeyboard remoteKeyboard, Handler handler) {
        this.keyboard = remoteKeyboard;
        this.handler = handler;
    }

    public void start(int i, KeyEvent keyEvent) {
        stop();
        this.keyCode = i;
        this.event = keyEvent;
        this.keyboard.keyEvent(i, KeyEvent.changeAction(keyEvent, 0));
        this.keyboard.keyEvent(i, KeyEvent.changeAction(keyEvent, 1));
        this.starting = true;
        this.handler.post(this);
    }

    public void stop() {
        this.handler.removeCallbacks(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        int i = this.defaultDelay;
        if (this.starting) {
            this.starting = false;
            i = this.initialDelay;
        } else {
            this.keyboard.keyEvent(this.keyCode, KeyEvent.changeAction(this.event, 0));
            this.keyboard.keyEvent(this.keyCode, KeyEvent.changeAction(this.event, 1));
        }
        this.handler.postDelayed(this, i);
    }
}
