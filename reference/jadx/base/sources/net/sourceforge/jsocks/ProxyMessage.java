package net.sourceforge.jsocks;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProxyMessage {
    public int command;
    public String host;
    public InetAddress ip;
    public int port;
    public String user;
    public int version;

    static final String bytes2IPV6(byte[] bArr, int i) {
        return null;
    }

    public abstract void read(InputStream inputStream) throws IOException;

    public abstract void read(InputStream inputStream, boolean z) throws IOException;

    public abstract void write(OutputStream outputStream) throws IOException;

    static final String bytes2IPV4(byte[] bArr, int i) {
        String str = "" + (bArr[i] & 255);
        for (int i2 = i + 1; i2 < i + 4; i2++) {
            str = str + "." + (bArr[i2] & 255);
        }
        return str;
    }

    ProxyMessage() {
        this.ip = null;
        this.host = null;
        this.user = null;
    }

    ProxyMessage(int i, InetAddress inetAddress, int i2) {
        this.host = null;
        this.user = null;
        this.command = i;
        this.ip = inetAddress;
        this.port = i2;
    }

    public InetAddress getInetAddress() throws UnknownHostException {
        return this.ip;
    }

    public String toString() {
        return "Proxy Message:\nVersion:" + this.version + "\nCommand:" + this.command + "\nIP:     " + this.ip + "\nPort:   " + this.port + "\nUser:   " + this.user + StringUtils.LF;
    }
}
