package net.sourceforge.jsocks;

import java.io.IOException;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public interface Authentication {
    Object[] doSocksAuthentication(int i, Socket socket) throws IOException;
}
