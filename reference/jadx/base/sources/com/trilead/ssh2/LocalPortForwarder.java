package com.trilead.ssh2;

import com.trilead.ssh2.channel.ChannelManager;
import com.trilead.ssh2.channel.LocalAcceptThread;
import java.io.IOException;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes2.dex */
public class LocalPortForwarder {
    ChannelManager cm;
    String host_to_connect;
    LocalAcceptThread lat;
    int port_to_connect;

    LocalPortForwarder(ChannelManager channelManager, int i, String str, int i2) throws IOException {
        this.cm = channelManager;
        this.host_to_connect = str;
        this.port_to_connect = i2;
        LocalAcceptThread localAcceptThread = new LocalAcceptThread(channelManager, i, str, i2);
        this.lat = localAcceptThread;
        localAcceptThread.setDaemon(true);
        this.lat.start();
    }

    LocalPortForwarder(ChannelManager channelManager, InetSocketAddress inetSocketAddress, String str, int i) throws IOException {
        this.cm = channelManager;
        this.host_to_connect = str;
        this.port_to_connect = i;
        LocalAcceptThread localAcceptThread = new LocalAcceptThread(channelManager, inetSocketAddress, str, i);
        this.lat = localAcceptThread;
        localAcceptThread.setDaemon(true);
        this.lat.start();
    }

    public void close() {
        this.lat.stopWorking();
    }
}
