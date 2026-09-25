package com.trilead.ssh2.channel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import org.connectbot.simplesocks.Socks5Server;

/* JADX INFO: loaded from: classes2.dex */
public class DynamicAcceptThread extends Thread implements IChannelWorkerThread {
    private ChannelManager cm;
    private ServerSocket ss;

    public DynamicAcceptThread(ChannelManager channelManager, int i) throws IOException {
        this.cm = channelManager;
        setName("DynamicAcceptThread");
        this.ss = new ServerSocket(i);
    }

    public DynamicAcceptThread(ChannelManager channelManager, InetSocketAddress inetSocketAddress) throws IOException {
        this.cm = channelManager;
        ServerSocket serverSocket = new ServerSocket();
        this.ss = serverSocket;
        serverSocket.bind(inetSocketAddress);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.cm.registerThread(this);
            while (true) {
                try {
                    Thread thread = new Thread(new DynamicAcceptRunnable(this.ss.accept()));
                    thread.setDaemon(true);
                    thread.start();
                } catch (IOException unused) {
                    stopWorking();
                    return;
                }
            }
        } catch (IOException unused2) {
            stopWorking();
        }
    }

    @Override // com.trilead.ssh2.channel.IChannelWorkerThread
    public void stopWorking() {
        try {
            this.ss.close();
        } catch (IOException unused) {
        }
    }

    class DynamicAcceptRunnable implements Runnable {
        private static final int idleTimeout = 180000;
        private InputStream in;
        private OutputStream out;
        private Socket sock;

        public DynamicAcceptRunnable(Socket socket) {
            this.sock = socket;
            DynamicAcceptThread.this.setName("DynamicAcceptRunnable");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    startSession();
                } catch (IOException unused) {
                }
            } catch (IOException unused2) {
                this.sock.close();
            }
        }

        private void startSession() throws IOException {
            this.sock.setSoTimeout(idleTimeout);
            this.in = this.sock.getInputStream();
            this.out = this.sock.getOutputStream();
            Socks5Server socks5Server = new Socks5Server(this.in, this.out);
            try {
                if (!socks5Server.acceptAuthentication() || !socks5Server.readRequest()) {
                    System.out.println("Could not start SOCKS session");
                } else if (socks5Server.getCommand() == Socks5Server.Command.CONNECT) {
                    onConnect(socks5Server);
                } else {
                    socks5Server.sendReply(Socks5Server.ResponseCode.COMMAND_NOT_SUPPORTED);
                }
            } catch (IOException unused) {
                socks5Server.sendReply(Socks5Server.ResponseCode.GENERAL_FAILURE);
            }
        }

        private void onConnect(Socks5Server socks5Server) throws IOException {
            String hostName = socks5Server.getHostName();
            if (hostName == null) {
                hostName = socks5Server.getAddress().getHostAddress();
            }
            try {
                try {
                    Channel channelOpenDirectTCPIPChannel = DynamicAcceptThread.this.cm.openDirectTCPIPChannel(hostName, socks5Server.getPort(), "127.0.0.1", 0);
                    socks5Server.sendReply(Socks5Server.ResponseCode.SUCCESS);
                    StreamForwarder streamForwarder = new StreamForwarder(channelOpenDirectTCPIPChannel, null, this.sock, channelOpenDirectTCPIPChannel.stdoutStream, this.out, "RemoteToLocal");
                    StreamForwarder streamForwarder2 = new StreamForwarder(channelOpenDirectTCPIPChannel, streamForwarder, this.sock, this.in, channelOpenDirectTCPIPChannel.stdinStream, "LocalToRemote");
                    streamForwarder.setDaemon(true);
                    streamForwarder2.setDaemon(true);
                    streamForwarder.start();
                    streamForwarder2.start();
                } catch (IOException unused) {
                    try {
                        this.sock.close();
                    } catch (IOException unused2) {
                    }
                }
            } catch (IOException unused3) {
                socks5Server.sendReply(Socks5Server.ResponseCode.GENERAL_FAILURE);
                this.sock.close();
            }
        }
    }
}
