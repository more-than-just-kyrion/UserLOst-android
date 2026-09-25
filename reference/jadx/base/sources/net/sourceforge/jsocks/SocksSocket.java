package net.sourceforge.jsocks;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public class SocksSocket extends Socket {
    private Socket directSock;
    protected String localHost;
    protected InetAddress localIP;
    protected int localPort;
    protected Proxy proxy;
    protected String remoteHost;
    protected InetAddress remoteIP;
    protected int remotePort;

    public SocksSocket(InetAddress inetAddress, int i) throws SocksException {
        this.directSock = null;
        this.remoteIP = inetAddress;
        this.remotePort = i;
        this.remoteHost = inetAddress.getHostName();
        doDirect();
    }

    protected SocksSocket(InetAddress inetAddress, int i, Proxy proxy) {
        this.directSock = null;
        this.remoteIP = inetAddress;
        this.remotePort = i;
        this.proxy = proxy;
        this.localIP = proxy.proxySocket.getLocalAddress();
        this.localPort = proxy.proxySocket.getLocalPort();
        this.remoteHost = this.remoteIP.getHostName();
    }

    public SocksSocket(Proxy proxy, String str, int i) throws SocksException, UnknownHostException {
        this.directSock = null;
        this.remoteHost = str;
        this.remotePort = i;
        this.remoteIP = InetAddress.getByName(str);
        doDirect();
    }

    public SocksSocket(String str, int i) throws SocksException, UnknownHostException {
        this(Proxy.defaultProxy, str, i);
    }

    protected SocksSocket(String str, int i, Proxy proxy) {
        this.directSock = null;
        this.remotePort = i;
        this.proxy = proxy;
        this.localIP = proxy.proxySocket.getLocalAddress();
        this.localPort = proxy.proxySocket.getLocalPort();
        this.remoteHost = str;
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Proxy proxy = this.proxy;
        if (proxy != null) {
            proxy.endSession();
        }
        this.proxy = null;
    }

    private void doDirect() throws SocksException {
        try {
            Socket socket = new Socket(this.remoteIP, this.remotePort);
            this.directSock = socket;
            this.proxy.out = socket.getOutputStream();
            this.proxy.in = this.directSock.getInputStream();
            this.proxy.proxySocket = this.directSock;
            this.localIP = this.directSock.getLocalAddress();
            this.localPort = this.directSock.getLocalPort();
        } catch (IOException e) {
            throw new SocksException(Proxy.SOCKS_DIRECT_FAILED, "Direct connect failed:" + e);
        }
    }

    public String getHost() {
        return this.remoteHost;
    }

    @Override // java.net.Socket
    public InetAddress getInetAddress() {
        if (this.remoteIP == null) {
            try {
                this.remoteIP = InetAddress.getByName(this.remoteHost);
            } catch (UnknownHostException unused) {
                return null;
            }
        }
        return this.remoteIP;
    }

    @Override // java.net.Socket
    public InputStream getInputStream() {
        return this.proxy.in;
    }

    @Override // java.net.Socket
    public InetAddress getLocalAddress() {
        if (this.localIP == null) {
            try {
                this.localIP = InetAddress.getByName(this.localHost);
            } catch (UnknownHostException unused) {
                return null;
            }
        }
        return this.localIP;
    }

    public String getLocalHost() {
        return this.localHost;
    }

    @Override // java.net.Socket
    public int getLocalPort() {
        return this.localPort;
    }

    @Override // java.net.Socket
    public OutputStream getOutputStream() {
        return this.proxy.out;
    }

    @Override // java.net.Socket
    public int getPort() {
        return this.remotePort;
    }

    public int getSoLinger(int i) throws SocketException {
        return this.proxy.proxySocket.getSoLinger();
    }

    public int getSoTimeout(int i) throws SocketException {
        return this.proxy.proxySocket.getSoTimeout();
    }

    @Override // java.net.Socket
    public boolean getTcpNoDelay() throws SocketException {
        return this.proxy.proxySocket.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public void setSoLinger(boolean z, int i) throws SocketException {
        this.proxy.proxySocket.setSoLinger(z, i);
    }

    @Override // java.net.Socket
    public void setSoTimeout(int i) throws SocketException {
        this.proxy.proxySocket.setSoTimeout(i);
    }

    @Override // java.net.Socket
    public void setTcpNoDelay(boolean z) throws SocketException {
        this.proxy.proxySocket.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public String toString() {
        if (this.directSock != null) {
            return "Direct connection:" + this.directSock;
        }
        return "Proxy:" + this.proxy + ";addr:" + this.remoteHost + ",port:" + this.remotePort + ",localport:" + this.localPort;
    }
}
