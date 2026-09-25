package net.sourceforge.jsocks.server;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.DatagramPacket;
import java.net.Socket;
import net.sourceforge.jsocks.ProxyMessage;
import net.sourceforge.jsocks.UDPEncapsulation;

/* JADX INFO: loaded from: classes2.dex */
public interface ServerAuthenticator {
    boolean checkRequest(DatagramPacket datagramPacket, boolean z);

    boolean checkRequest(ProxyMessage proxyMessage);

    void endSession();

    InputStream getInputStream();

    OutputStream getOutputStream();

    UDPEncapsulation getUdpEncapsulation();

    ServerAuthenticator startSession(Socket socket) throws IOException;
}
