package net.sourceforge.jsocks;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes2.dex */
public class Socks5Proxy extends Proxy implements Cloneable {
    private Hashtable<Integer, Authentication> authMethods;
    boolean resolveAddrLocally;
    private int selectedMethod;
    UDPEncapsulation udp_encapsulation;

    public Socks5Proxy(InetAddress inetAddress, int i) {
        super(inetAddress, i);
        this.authMethods = new Hashtable<>();
        this.resolveAddrLocally = true;
        this.udp_encapsulation = null;
        this.version = 5;
        setAuthenticationMethod(0, new AuthenticationNone());
    }

    public Socks5Proxy(String str, int i) throws UnknownHostException {
        super(str, i);
        this.authMethods = new Hashtable<>();
        this.resolveAddrLocally = true;
        this.udp_encapsulation = null;
        this.version = 5;
        setAuthenticationMethod(0, new AuthenticationNone());
    }

    public Object clone() {
        Socks5Proxy socks5Proxy = new Socks5Proxy(this.proxyIP, this.proxyPort);
        socks5Proxy.authMethods = (Hashtable) this.authMethods.clone();
        socks5Proxy.resolveAddrLocally = this.resolveAddrLocally;
        socks5Proxy.chainProxy = this.chainProxy;
        return socks5Proxy;
    }

    @Override // net.sourceforge.jsocks.Proxy
    protected Proxy copy() {
        Socks5Proxy socks5Proxy = new Socks5Proxy(this.proxyIP, this.proxyPort);
        socks5Proxy.authMethods = this.authMethods;
        socks5Proxy.chainProxy = this.chainProxy;
        socks5Proxy.resolveAddrLocally = this.resolveAddrLocally;
        return socks5Proxy;
    }

    @Override // net.sourceforge.jsocks.Proxy
    protected ProxyMessage formMessage(InputStream inputStream) throws IOException {
        return new Socks5Message(inputStream);
    }

    @Override // net.sourceforge.jsocks.Proxy
    protected ProxyMessage formMessage(int i, InetAddress inetAddress, int i2) {
        return new Socks5Message(i, inetAddress, i2);
    }

    @Override // net.sourceforge.jsocks.Proxy
    protected ProxyMessage formMessage(int i, String str, int i2) throws UnknownHostException {
        if (this.resolveAddrLocally) {
            return formMessage(i, InetAddress.getByName(str), i2);
        }
        return new Socks5Message(i, str, i2);
    }

    public Authentication getAuthenticationMethod(int i) {
        Authentication authentication = this.authMethods.get(new Integer(i));
        if (authentication == null) {
            return null;
        }
        return authentication;
    }

    public boolean resolveAddrLocally() {
        return this.resolveAddrLocally;
    }

    public boolean resolveAddrLocally(boolean z) {
        boolean z2 = this.resolveAddrLocally;
        this.resolveAddrLocally = z;
        return z2;
    }

    public boolean setAuthenticationMethod(int i, Authentication authentication) {
        if (i < 0 || i > 255) {
            return false;
        }
        if (authentication == null) {
            return this.authMethods.remove(new Integer(i)) != null;
        }
        this.authMethods.put(new Integer(i), authentication);
        return true;
    }

    @Override // net.sourceforge.jsocks.Proxy
    protected void startSession() throws SocksException {
        super.startSession();
        Socket socket = this.proxySocket;
        try {
            byte size = (byte) this.authMethods.size();
            byte[] bArr = new byte[size + 2];
            bArr[0] = (byte) this.version;
            bArr[1] = size;
            Enumeration<Integer> enumerationKeys = this.authMethods.keys();
            int i = 2;
            while (enumerationKeys.hasMoreElements()) {
                bArr[i] = (byte) enumerationKeys.nextElement().intValue();
                i++;
            }
            this.out.write(bArr);
            this.out.flush();
            int i2 = this.in.read();
            int i3 = this.in.read();
            this.selectedMethod = i3;
            if (i2 < 0 || i3 < 0) {
                endSession();
                throw new SocksException(Proxy.SOCKS_PROXY_IO_ERROR, "Connection to proxy lost.");
            }
            int i4 = this.version;
            int i5 = this.selectedMethod;
            if (i5 == 255) {
                socket.close();
                throw new SocksException(262144);
            }
            Authentication authenticationMethod = getAuthenticationMethod(i5);
            if (authenticationMethod == null) {
                throw new SocksException(Proxy.SOCKS_JUST_ERROR, "Speciefied Authentication not found!");
            }
            Object[] objArrDoSocksAuthentication = authenticationMethod.doSocksAuthentication(this.selectedMethod, socket);
            if (objArrDoSocksAuthentication == null) {
                throw new SocksException(Proxy.SOCKS_AUTH_FAILURE);
            }
            this.in = (InputStream) objArrDoSocksAuthentication[0];
            this.out = (OutputStream) objArrDoSocksAuthentication[1];
            if (objArrDoSocksAuthentication.length > 2) {
                this.udp_encapsulation = (UDPEncapsulation) objArrDoSocksAuthentication[2];
            }
        } catch (SocketException unused) {
            throw new SocksException(131072);
        } catch (UnknownHostException unused2) {
            throw new SocksException(131072);
        } catch (SocksException e) {
            throw e;
        } catch (IOException e2) {
            throw new SocksException(Proxy.SOCKS_PROXY_IO_ERROR, "" + e2);
        }
    }
}
