package net.sourceforge.jsocks;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Proxy {
    public static final int SOCKS_ADDR_NOT_SUPPORTED = 8;
    public static final int SOCKS_AUTH_FAILURE = 327680;
    public static final int SOCKS_AUTH_NOT_SUPPORTED = 262144;
    public static final int SOCKS_BADCONNECT = 2;
    public static final int SOCKS_BADNETWORK = 3;
    static final int SOCKS_CMD_BIND = 2;
    public static final int SOCKS_CMD_CONNECT = 1;
    public static final int SOCKS_CMD_NOT_SUPPORTED = 7;
    static final int SOCKS_CMD_UDP_ASSOCIATE = 3;
    public static final int SOCKS_CONNECTION_REFUSED = 5;
    public static final int SOCKS_DIRECT_FAILED = 458752;
    public static final int SOCKS_FAILURE = 1;
    public static final int SOCKS_HOST_UNREACHABLE = 4;
    public static final int SOCKS_JUST_ERROR = 393216;
    public static final int SOCKS_METHOD_NOTSUPPORTED = 524288;
    public static final int SOCKS_NO_PROXY = 65536;
    public static final int SOCKS_PROXY_IO_ERROR = 196608;
    public static final int SOCKS_PROXY_NO_CONNECT = 131072;
    public static final int SOCKS_SUCCESS = 0;
    public static final int SOCKS_TTL_EXPIRE = 6;
    protected static Proxy defaultProxy;
    protected Proxy chainProxy;
    protected InputStream in;
    protected OutputStream out;
    protected String proxyHost;
    protected InetAddress proxyIP;
    protected int proxyPort;
    protected Socket proxySocket;
    protected int version;

    protected abstract Proxy copy();

    protected abstract ProxyMessage formMessage(int i, String str, int i2) throws UnknownHostException;

    protected abstract ProxyMessage formMessage(int i, InetAddress inetAddress, int i2);

    protected abstract ProxyMessage formMessage(InputStream inputStream) throws IOException;

    public static Proxy getDefaultProxy() {
        return defaultProxy;
    }

    public static Proxy parseProxy(String str) {
        int i;
        Proxy socks5Proxy;
        StringTokenizer stringTokenizer = new StringTokenizer(str, ":");
        if (stringTokenizer.countTokens() < 1) {
            return null;
        }
        String strNextToken = stringTokenizer.nextToken();
        if (stringTokenizer.hasMoreTokens()) {
            try {
                i = Integer.parseInt(stringTokenizer.nextToken().trim());
            } catch (NumberFormatException unused) {
                i = 1080;
            }
        } else {
            i = 1080;
        }
        String strNextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
        String strNextToken3 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
        try {
            if (strNextToken2 != null && strNextToken3 == null) {
                socks5Proxy = new Socks4Proxy(strNextToken, i, strNextToken2);
            } else {
                socks5Proxy = new Socks5Proxy(strNextToken, i);
            }
            return socks5Proxy;
        } catch (UnknownHostException unused2) {
            return null;
        }
    }

    public static void setDefaultProxy(InetAddress inetAddress, int i) {
        defaultProxy = new Socks5Proxy(inetAddress, i);
    }

    public static void setDefaultProxy(InetAddress inetAddress, int i, String str) {
        defaultProxy = new Socks4Proxy(inetAddress, i, str);
    }

    public static void setDefaultProxy(Proxy proxy) {
        defaultProxy = proxy;
    }

    public static void setDefaultProxy(String str, int i) throws UnknownHostException {
        defaultProxy = new Socks5Proxy(str, i);
    }

    public static void setDefaultProxy(String str, int i, String str2) throws UnknownHostException {
        defaultProxy = new Socks4Proxy(str, i, str2);
    }

    Proxy(InetAddress inetAddress, int i) {
        this.proxyHost = null;
        this.proxySocket = null;
        this.chainProxy = null;
        this.proxyIP = inetAddress;
        this.proxyPort = i;
    }

    Proxy(Proxy proxy) {
        this.proxyIP = null;
        this.proxyHost = null;
        this.proxySocket = null;
        this.chainProxy = null;
        this.proxyIP = proxy.proxyIP;
        this.proxyPort = proxy.proxyPort;
        this.version = proxy.version;
    }

    Proxy(Proxy proxy, InetAddress inetAddress, int i) {
        this.proxyHost = null;
        this.proxySocket = null;
        this.chainProxy = proxy;
        this.proxyIP = inetAddress;
        this.proxyPort = i;
    }

    Proxy(String str, int i) throws UnknownHostException {
        this.proxyIP = null;
        this.proxySocket = null;
        this.chainProxy = null;
        this.proxyHost = str;
        this.proxyIP = InetAddress.getByName(str);
        this.proxyPort = i;
    }

    protected ProxyMessage accept() throws IOException {
        try {
            return formMessage(this.in);
        } catch (InterruptedIOException e) {
            throw e;
        } catch (IOException e2) {
            endSession();
            throw new SocksException(SOCKS_PROXY_IO_ERROR, "While Trying accept:" + e2);
        }
    }

    protected ProxyMessage bind(InetAddress inetAddress, int i) throws SocksException {
        try {
            startSession();
            return exchange(formMessage(2, inetAddress, i));
        } catch (SocksException e) {
            endSession();
            throw e;
        }
    }

    protected ProxyMessage bind(String str, int i) throws SocksException, UnknownHostException {
        try {
            startSession();
            return exchange(formMessage(2, str, i));
        } catch (SocksException e) {
            endSession();
            throw e;
        }
    }

    protected ProxyMessage connect(InetAddress inetAddress, int i) throws SocksException {
        try {
            startSession();
            return exchange(formMessage(1, inetAddress, i));
        } catch (SocksException e) {
            endSession();
            throw e;
        }
    }

    protected ProxyMessage connect(String str, int i) throws SocksException, UnknownHostException {
        try {
            startSession();
            return exchange(formMessage(1, str, i));
        } catch (SocksException e) {
            endSession();
            throw e;
        }
    }

    protected void endSession() {
        try {
            Socket socket = this.proxySocket;
            if (socket != null) {
                socket.close();
            }
            this.proxySocket = null;
        } catch (IOException unused) {
        }
    }

    protected ProxyMessage exchange(ProxyMessage proxyMessage) throws SocksException {
        try {
            proxyMessage.write(this.out);
            return formMessage(this.in);
        } catch (SocksException e) {
            throw e;
        } catch (IOException e2) {
            throw new SocksException(SOCKS_PROXY_IO_ERROR, "" + e2);
        }
    }

    public InetAddress getInetAddress() {
        return this.proxyIP;
    }

    public int getPort() {
        return this.proxyPort;
    }

    protected ProxyMessage readMsg() throws IOException {
        return formMessage(this.in);
    }

    protected void sendMsg(ProxyMessage proxyMessage) throws IOException {
        proxyMessage.write(this.out);
    }

    protected void startSession() throws SocksException {
        try {
            Socket socket = new Socket(this.proxyIP, this.proxyPort);
            this.proxySocket = socket;
            this.in = socket.getInputStream();
            this.out = this.proxySocket.getOutputStream();
        } catch (SocksException e) {
            throw e;
        } catch (IOException e2) {
            throw new SocksException(SOCKS_PROXY_IO_ERROR, "" + e2);
        }
    }

    public String toString() {
        return "" + this.proxyIP.getHostName() + ":" + this.proxyPort + "\tVersion " + this.version;
    }

    protected ProxyMessage udpAssociate(InetAddress inetAddress, int i) throws SocksException {
        try {
            startSession();
            ProxyMessage proxyMessageFormMessage = formMessage(3, inetAddress, i);
            if (proxyMessageFormMessage != null) {
                return exchange(proxyMessageFormMessage);
            }
            endSession();
            throw new SocksException(524288, "This version of proxy does not support UDP associate, use version 5");
        } catch (SocksException e) {
            endSession();
            throw e;
        }
    }

    protected ProxyMessage udpAssociate(String str, int i) throws SocksException, UnknownHostException {
        try {
            startSession();
            ProxyMessage proxyMessageFormMessage = formMessage(3, str, i);
            if (proxyMessageFormMessage != null) {
                return exchange(proxyMessageFormMessage);
            }
            endSession();
            throw new SocksException(524288, "This version of proxy does not support UDP associate, use version 5");
        } catch (SocksException e) {
            endSession();
            throw e;
        }
    }
}
