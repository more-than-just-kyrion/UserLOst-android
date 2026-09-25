package com.iiordanov.bVNC;

import android.util.Log;
import java.io.IOException;
import java.net.Socket;
import java.security.GeneralSecurityException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TLSTunnelBase {
    private static final String TAG = "TLSTunnelBase";
    Socket sock;

    protected abstract void setParam(SSLSocket sSLSocket) throws Exception;

    public TLSTunnelBase(Socket socket) {
        this.sock = socket;
    }

    protected void initContext(SSLContext sSLContext) throws GeneralSecurityException {
        sSLContext.init(null, null, null);
    }

    public void setup(RfbProto rfbProto) throws Exception {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            Log.i(TAG, "Generating TLS context");
            initContext(sSLContext);
            Log.i(TAG, "Doing TLS handshake");
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            Socket socket = this.sock;
            SSLSocket sSLSocket = (SSLSocket) socketFactory.createSocket(socket, socket.getInetAddress().getHostName(), this.sock.getPort(), true);
            sSLSocket.setTcpNoDelay(true);
            sSLSocket.setSoTimeout(Constants.SOCKET_CONN_TIMEOUT);
            setParam(sSLSocket);
            sSLSocket.setSoTimeout(0);
            sSLSocket.startHandshake();
            Log.i(TAG, "TLS done");
            rfbProto.setStreams(sSLSocket.getInputStream(), sSLSocket.getOutputStream());
        } catch (IOException e) {
            throw new Exception("TLS handshake failed " + e.toString());
        } catch (GeneralSecurityException e2) {
            throw new Exception("TLS handshake failed " + e2.toString());
        }
    }
}
