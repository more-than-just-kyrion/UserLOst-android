package com.trilead.ssh2;

import com.trilead.ssh2.channel.Channel;
import com.trilead.ssh2.channel.ChannelManager;
import com.trilead.ssh2.channel.LocalAcceptThread;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class LocalStreamForwarder {
    ChannelManager cm;
    Channel cn;
    String host_to_connect;
    LocalAcceptThread lat;
    int port_to_connect;

    LocalStreamForwarder(ChannelManager channelManager, String str, int i) throws IOException {
        this.cm = channelManager;
        this.host_to_connect = str;
        this.port_to_connect = i;
        this.cn = channelManager.openDirectTCPIPChannel(str, i, "127.0.0.1", 0);
    }

    public InputStream getInputStream() {
        return this.cn.getStdoutStream();
    }

    public OutputStream getOutputStream() {
        return this.cn.getStdinStream();
    }

    public void close() throws IOException {
        this.cm.closeChannel(this.cn, "Closed due to user request.", true);
    }
}
