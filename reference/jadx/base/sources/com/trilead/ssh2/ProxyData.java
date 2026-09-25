package com.trilead.ssh2;

import java.io.IOException;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public interface ProxyData {
    Socket openConnection(String str, int i, int i2) throws IOException;
}
