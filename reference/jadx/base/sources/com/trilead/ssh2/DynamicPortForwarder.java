package com.trilead.ssh2;

import com.trilead.ssh2.channel.ChannelManager;
import com.trilead.ssh2.channel.DynamicAcceptThread;
import java.io.IOException;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes2.dex */
public class DynamicPortForwarder {
    ChannelManager cm;
    DynamicAcceptThread dat;

    DynamicPortForwarder(ChannelManager channelManager, int i) throws IOException {
        this.cm = channelManager;
        DynamicAcceptThread dynamicAcceptThread = new DynamicAcceptThread(channelManager, i);
        this.dat = dynamicAcceptThread;
        dynamicAcceptThread.setDaemon(true);
        this.dat.start();
    }

    DynamicPortForwarder(ChannelManager channelManager, InetSocketAddress inetSocketAddress) throws IOException {
        this.cm = channelManager;
        DynamicAcceptThread dynamicAcceptThread = new DynamicAcceptThread(channelManager, inetSocketAddress);
        this.dat = dynamicAcceptThread;
        dynamicAcceptThread.setDaemon(true);
        this.dat.start();
    }

    public void close() {
        this.dat.stopWorking();
    }
}
