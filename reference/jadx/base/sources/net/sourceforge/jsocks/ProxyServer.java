package net.sourceforge.jsocks;

import androidx.core.app.NotificationManagerCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PushbackInputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.NoRouteToHostException;
import java.net.ServerSocket;
import java.net.Socket;
import net.sourceforge.jsocks.server.ServerAuthenticator;

/* JADX INFO: loaded from: classes2.dex */
public class ProxyServer implements Runnable {
    static final int ABORT_MODE = 3;
    static final int ACCEPT_MODE = 1;
    static final int BUF_SIZE = 8192;
    static final int PIPE_MODE = 2;
    static final int START_MODE = 0;
    static int acceptTimeout = 180000;
    static final String[] command_names = {"CONNECT", "BIND", "UDP_ASSOCIATE"};
    protected static int iddleTimeout = 180000;
    static PrintStream log;
    static Proxy proxy;
    ServerAuthenticator auth;
    InputStream in;
    long lastReadTime;
    int mode;
    ProxyMessage msg;
    OutputStream out;
    Thread pipe_thread1;
    Thread pipe_thread2;
    UDPRelayServer relayServer;
    InputStream remote_in;
    OutputStream remote_out;
    Socket remote_sock;
    Socket sock;
    ServerSocket ss;

    static final String command2String(int i) {
        if (i > 0 && i < 4) {
            return command_names[i - 1];
        }
        return "Unknown Command " + i;
    }

    public static Proxy getProxy() {
        return proxy;
    }

    static final void log(ProxyMessage proxyMessage) {
        log("Request version:" + proxyMessage.version + "\tCommand: " + command2String(proxyMessage.command));
        log("IP:" + proxyMessage.ip + "\tPort:" + proxyMessage.port + (proxyMessage.version == 4 ? "\tUser:" + proxyMessage.user : ""));
    }

    static final void log(String str) {
        PrintStream printStream = log;
        if (printStream != null) {
            printStream.println(str);
            log.flush();
        }
    }

    public static void setAcceptTimeout(int i) {
        acceptTimeout = i;
    }

    public static void setDatagramSize(int i) {
        UDPRelayServer.setDatagramSize(i);
    }

    public static void setIddleTimeout(int i) {
        iddleTimeout = i;
    }

    public static void setLog(OutputStream outputStream) {
        if (outputStream == null) {
            log = null;
        } else {
            log = new PrintStream(outputStream, true);
        }
        UDPRelayServer.log = log;
    }

    public static void setProxy(Proxy proxy2) {
        proxy = proxy2;
        UDPRelayServer.proxy = proxy2;
    }

    public static void setUDPTimeout(int i) {
        UDPRelayServer.setTimeout(i);
    }

    public ProxyServer(ServerAuthenticator serverAuthenticator) {
        this.msg = null;
        this.sock = null;
        this.remote_sock = null;
        this.ss = null;
        this.relayServer = null;
        this.auth = serverAuthenticator;
    }

    protected ProxyServer(ServerAuthenticator serverAuthenticator, Socket socket) {
        this.msg = null;
        this.remote_sock = null;
        this.ss = null;
        this.relayServer = null;
        this.auth = serverAuthenticator;
        this.sock = socket;
        this.mode = 0;
    }

    private synchronized void abort() {
        if (this.mode == 3) {
            return;
        }
        this.mode = 3;
        try {
            log("Aborting operation");
            Socket socket = this.remote_sock;
            if (socket != null) {
                socket.close();
            }
            Socket socket2 = this.sock;
            if (socket2 != null) {
                socket2.close();
            }
            UDPRelayServer uDPRelayServer = this.relayServer;
            if (uDPRelayServer != null) {
                uDPRelayServer.stop();
            }
            ServerSocket serverSocket = this.ss;
            if (serverSocket != null) {
                serverSocket.close();
            }
            Thread thread = this.pipe_thread1;
            if (thread != null) {
                thread.interrupt();
            }
            Thread thread2 = this.pipe_thread2;
            if (thread2 != null) {
                thread2.interrupt();
            }
        } catch (IOException unused) {
        }
    }

    private void doAccept() throws IOException {
        ProxyMessage socks4Message;
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (true) {
            Socket socketAccept = this.ss.accept();
            if (socketAccept.getInetAddress().equals(this.msg.ip)) {
                this.ss.close();
                this.remote_sock = socketAccept;
                this.remote_in = socketAccept.getInputStream();
                this.remote_out = socketAccept.getOutputStream();
                this.remote_sock.setSoTimeout(iddleTimeout);
                log("Accepted from " + socketAccept.getInetAddress() + ":" + socketAccept.getPort());
                if (this.msg.version == 5) {
                    socks4Message = new Socks5Message(0, socketAccept.getInetAddress(), socketAccept.getPort());
                } else {
                    socks4Message = new Socks4Message(90, socketAccept.getInetAddress(), socketAccept.getPort());
                }
                socks4Message.write(this.out);
                return;
            }
            if (this.ss instanceof SocksServerSocket) {
                socketAccept.close();
                this.ss.close();
                throw new SocksException(1);
            }
            int i = acceptTimeout;
            if (i != 0) {
                int iCurrentTimeMillis = i - ((int) (System.currentTimeMillis() - jCurrentTimeMillis));
                if (iCurrentTimeMillis <= 0) {
                    throw new InterruptedIOException("In doAccept()");
                }
                this.ss.setSoTimeout(iCurrentTimeMillis);
            }
            socketAccept.close();
        }
    }

    private void handleException(IOException iOException) {
        int i;
        int i2;
        if (this.msg == null || (i = this.mode) == 3 || i == 2) {
            return;
        }
        int i3 = 1;
        if (iOException instanceof SocksException) {
            i2 = ((SocksException) iOException).errCode;
        } else if (iOException instanceof NoRouteToHostException) {
            i2 = 4;
        } else if (iOException instanceof ConnectException) {
            i2 = 5;
        } else {
            i2 = iOException instanceof InterruptedIOException ? 6 : 1;
        }
        if (i2 <= 8 && i2 >= 0) {
            i3 = i2;
        }
        sendErrorMessage(i3);
    }

    protected void handleRequest(ProxyMessage proxyMessage) throws IOException {
        if (!this.auth.checkRequest(proxyMessage)) {
            throw new SocksException(1);
        }
        if (proxyMessage.ip == null) {
            if (proxyMessage instanceof Socks5Message) {
                proxyMessage.ip = InetAddress.getByName(proxyMessage.host);
            } else {
                throw new SocksException(1);
            }
        }
        log(proxyMessage);
        int i = proxyMessage.command;
        if (i == 1) {
            onConnect(proxyMessage);
        } else if (i == 2) {
            onBind(proxyMessage);
        } else {
            if (i == 3) {
                onUDP(proxyMessage);
                return;
            }
            throw new SocksException(7);
        }
    }

    private void onBind(ProxyMessage proxyMessage) throws IOException {
        ProxyMessage socks4Message;
        int i = 0;
        if (proxy == null) {
            this.ss = new ServerSocket(0);
        } else {
            this.ss = new SocksServerSocket(proxy, proxyMessage.ip, proxyMessage.port);
        }
        this.ss.setSoTimeout(acceptTimeout);
        log("Trying accept on " + this.ss.getInetAddress() + ":" + this.ss.getLocalPort());
        if (proxyMessage.version == 5) {
            socks4Message = new Socks5Message(0, this.ss.getInetAddress(), this.ss.getLocalPort());
        } else {
            socks4Message = new Socks4Message(90, this.ss.getInetAddress(), this.ss.getLocalPort());
        }
        socks4Message.write(this.out);
        this.mode = 1;
        this.pipe_thread1 = Thread.currentThread();
        Thread thread = new Thread(this);
        this.pipe_thread2 = thread;
        thread.start();
        this.sock.setSoTimeout(0);
        while (true) {
            try {
                i = this.in.read();
                if (i < 0) {
                    break;
                }
                int i2 = this.mode;
                if (i2 != 1) {
                    if (i2 == 2) {
                        this.remote_out.write(i);
                        break;
                    }
                    return;
                }
            } catch (EOFException unused) {
                return;
            } catch (InterruptedIOException unused2) {
                if (this.mode != 2) {
                    return;
                }
            }
        }
        if (i < 0) {
            return;
        }
        pipe(this.in, this.remote_out);
    }

    private void onConnect(ProxyMessage proxyMessage) throws IOException {
        ProxyMessage socks4Message;
        Socket socket = new Socket(proxyMessage.ip, proxyMessage.port);
        log("Connected to " + socket.getInetAddress() + ":" + socket.getPort());
        if (proxyMessage instanceof Socks5Message) {
            socks4Message = new Socks5Message(0, socket.getLocalAddress(), socket.getLocalPort());
        } else {
            socks4Message = new Socks4Message(90, socket.getLocalAddress(), socket.getLocalPort());
        }
        socks4Message.write(this.out);
        startPipe(socket);
    }

    private void onUDP(ProxyMessage proxyMessage) throws IOException {
        if (proxyMessage.ip.getHostAddress().equals("0.0.0.0")) {
            proxyMessage.ip = this.sock.getInetAddress();
        }
        log("Creating UDP relay server for " + proxyMessage.ip + ":" + proxyMessage.port);
        this.relayServer = new UDPRelayServer(proxyMessage.ip, proxyMessage.port, Thread.currentThread(), this.sock, this.auth);
        new Socks5Message(0, this.relayServer.relayIP, this.relayServer.relayPort).write(this.out);
        this.relayServer.start();
        this.sock.setSoTimeout(0);
        do {
            try {
            } catch (EOFException unused) {
                return;
            }
        } while (this.in.read() >= 0);
    }

    private void pipe(InputStream inputStream, OutputStream outputStream) throws IOException {
        this.lastReadTime = System.currentTimeMillis();
        byte[] bArr = new byte[8192];
        do {
            int i = 0;
            while (i >= 0) {
                if (i != 0) {
                    try {
                        outputStream.write(bArr, 0, i);
                        outputStream.flush();
                    } catch (InterruptedIOException unused) {
                        if (iddleTimeout == 0) {
                            return;
                        }
                    }
                }
                i = inputStream.read(bArr);
                this.lastReadTime = System.currentTimeMillis();
            }
            return;
        } while (System.currentTimeMillis() - this.lastReadTime < iddleTimeout + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
    }

    protected ProxyMessage readMsg(InputStream inputStream) throws IOException {
        PushbackInputStream pushbackInputStream;
        if (inputStream instanceof PushbackInputStream) {
            pushbackInputStream = (PushbackInputStream) inputStream;
        } else {
            pushbackInputStream = new PushbackInputStream(inputStream);
        }
        int i = pushbackInputStream.read();
        pushbackInputStream.unread(i);
        if (i == 5) {
            return new Socks5Message(pushbackInputStream, false);
        }
        if (i == 4) {
            return new Socks4Message(pushbackInputStream, false);
        }
        throw new SocksException(1);
    }

    @Override // java.lang.Runnable
    public void run() {
        ServerAuthenticator serverAuthenticator;
        int i = this.mode;
        if (i == 0) {
            try {
                startSession();
                abort();
                serverAuthenticator = this.auth;
                if (serverAuthenticator != null) {
                    serverAuthenticator.endSession();
                }
            } catch (IOException e) {
                handleException(e);
                abort();
                if (this.auth != null) {
                    serverAuthenticator = this.auth;
                }
            } finally {
                abort();
                ServerAuthenticator serverAuthenticator2 = this.auth;
                if (serverAuthenticator2 != null) {
                    serverAuthenticator2.endSession();
                }
                log("Main thread(client->remote)stopped.");
            }
            return;
        }
        try {
            if (i == 1) {
                try {
                    doAccept();
                    this.mode = 2;
                    this.pipe_thread1.interrupt();
                    pipe(this.remote_in, this.out);
                } catch (IOException e2) {
                    handleException(e2);
                }
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    log("Unexpected MODE " + this.mode);
                }
            } else {
                try {
                    pipe(this.remote_in, this.out);
                } catch (IOException unused) {
                } finally {
                    abort();
                    log("Support thread(remote->client) stopped");
                }
            }
        } finally {
            abort();
            log("Accept thread(remote->client) stopped");
        }
    }

    private void sendErrorMessage(int i) {
        ProxyMessage socks5Message;
        if (this.msg instanceof Socks4Message) {
            socks5Message = new Socks4Message(91);
        } else {
            socks5Message = new Socks5Message(i);
        }
        try {
            socks5Message.write(this.out);
        } catch (IOException unused) {
        }
    }

    public void start(int i) {
        start(i, 5, null);
    }

    public void start(int i, int i2, InetAddress inetAddress) {
        try {
            this.ss = new ServerSocket(i, i2, inetAddress);
            log("Starting SOCKS Proxy on:" + this.ss.getInetAddress().getHostAddress() + ":" + this.ss.getLocalPort());
            while (true) {
                Socket socketAccept = this.ss.accept();
                log("Accepted from:" + socketAccept.getInetAddress().getHostName() + ":" + socketAccept.getPort());
                new Thread(new ProxyServer(this.auth, socketAccept)).start();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void startPipe(Socket socket) {
        this.mode = 2;
        this.remote_sock = socket;
        try {
            this.remote_in = socket.getInputStream();
            this.remote_out = socket.getOutputStream();
            this.pipe_thread1 = Thread.currentThread();
            Thread thread = new Thread(this);
            this.pipe_thread2 = thread;
            thread.start();
            pipe(this.in, this.remote_out);
        } catch (IOException unused) {
        }
    }

    private void startSession() throws IOException {
        this.sock.setSoTimeout(iddleTimeout);
        try {
            ServerAuthenticator serverAuthenticatorStartSession = this.auth.startSession(this.sock);
            this.auth = serverAuthenticatorStartSession;
            if (serverAuthenticatorStartSession == null) {
                log("Authentication failed");
                return;
            }
            this.in = serverAuthenticatorStartSession.getInputStream();
            this.out = this.auth.getOutputStream();
            ProxyMessage msg = readMsg(this.in);
            this.msg = msg;
            handleRequest(msg);
        } catch (IOException e) {
            log("Auth throwed exception:" + e);
            this.auth = null;
        }
    }

    public void stop() {
        try {
            ServerSocket serverSocket = this.ss;
            if (serverSocket != null) {
                serverSocket.close();
            }
        } catch (IOException unused) {
        }
    }
}
