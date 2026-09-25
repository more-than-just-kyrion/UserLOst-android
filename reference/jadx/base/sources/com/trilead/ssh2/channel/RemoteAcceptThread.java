package com.trilead.ssh2.channel;

import com.trilead.ssh2.log.Logger;
import java.io.IOException;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public class RemoteAcceptThread extends Thread {
    private static final Logger log = Logger.getLogger(RemoteAcceptThread.class);
    Channel c;
    String remoteConnectedAddress;
    int remoteConnectedPort;
    String remoteOriginatorAddress;
    int remoteOriginatorPort;
    Socket s;
    String targetAddress;
    int targetPort;

    public RemoteAcceptThread(Channel channel, String str, int i, String str2, int i2, String str3, int i3) {
        this.c = channel;
        this.remoteConnectedAddress = str;
        this.remoteConnectedPort = i;
        this.remoteOriginatorAddress = str2;
        this.remoteOriginatorPort = i2;
        this.targetAddress = str3;
        this.targetPort = i3;
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(20, "RemoteAcceptThread: " + str + "/" + i + ", R: " + str2 + "/" + i2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.c.cm.sendOpenConfirmation(this.c);
            this.s = new Socket(this.targetAddress, this.targetPort);
            Channel channel = this.c;
            StreamForwarder streamForwarder = new StreamForwarder(channel, null, this.s, channel.getStdoutStream(), this.s.getOutputStream(), "RemoteToLocal");
            StreamForwarder streamForwarder2 = new StreamForwarder(this.c, null, null, this.s.getInputStream(), this.c.getStdinStream(), "LocalToRemote");
            streamForwarder.setDaemon(true);
            streamForwarder.start();
            streamForwarder2.run();
            while (streamForwarder.isAlive()) {
                try {
                    streamForwarder.join();
                } catch (InterruptedException unused) {
                }
            }
            this.c.cm.closeChannel(this.c, "EOF on both streams reached.", true);
            this.s.close();
        } catch (IOException e) {
            log.log(50, "IOException in proxy code: " + e.getMessage());
            try {
                this.c.cm.closeChannel(this.c, "IOException in proxy code (" + e.getMessage() + ")", true);
            } catch (IOException unused2) {
            }
            try {
                Socket socket = this.s;
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException unused3) {
            }
        }
    }
}
