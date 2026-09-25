package com.trilead.ssh2.transport;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface MessageHandler {
    void handleMessage(byte[] bArr, int i) throws IOException;
}
