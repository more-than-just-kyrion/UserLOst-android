package net.sourceforge.jsocks;

import java.io.IOException;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticationNone implements Authentication {
    @Override // net.sourceforge.jsocks.Authentication
    public Object[] doSocksAuthentication(int i, Socket socket) throws IOException {
        if (i != 0) {
            return null;
        }
        return new Object[]{socket.getInputStream(), socket.getOutputStream()};
    }
}
