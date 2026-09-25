package net.sourceforge.jsocks;

import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public class Socks4Proxy extends Proxy implements Cloneable {
    String user;

    public Socks4Proxy(InetAddress inetAddress, int i, String str) {
        this(null, inetAddress, i, str);
    }

    public Socks4Proxy(Proxy proxy, InetAddress inetAddress, int i, String str) {
        super(proxy, inetAddress, i);
        this.user = new String(str);
        this.version = 4;
    }

    public Socks4Proxy(String str, int i, String str2) throws UnknownHostException {
        super(str, i);
        this.user = new String(str2);
        this.version = 4;
    }

    public Object clone() {
        Socks4Proxy socks4Proxy = new Socks4Proxy(this.proxyIP, this.proxyPort, this.user);
        socks4Proxy.chainProxy = this.chainProxy;
        return socks4Proxy;
    }

    @Override // net.sourceforge.jsocks.Proxy
    protected Proxy copy() {
        Socks4Proxy socks4Proxy = new Socks4Proxy(this.proxyIP, this.proxyPort, this.user);
        socks4Proxy.chainProxy = this.chainProxy;
        return socks4Proxy;
    }

    @Override // net.sourceforge.jsocks.Proxy
    protected ProxyMessage formMessage(InputStream inputStream) throws IOException {
        return new Socks4Message(inputStream, true);
    }

    @Override // net.sourceforge.jsocks.Proxy
    protected ProxyMessage formMessage(int i, InetAddress inetAddress, int i2) {
        int i3 = 1;
        if (i != 1) {
            i3 = 2;
            if (i != 2) {
                return null;
            }
        }
        return new Socks4Message(i3, inetAddress, i2, this.user);
    }

    @Override // net.sourceforge.jsocks.Proxy
    protected ProxyMessage formMessage(int i, String str, int i2) throws UnknownHostException {
        return formMessage(i, InetAddress.getByName(str), i2);
    }
}
