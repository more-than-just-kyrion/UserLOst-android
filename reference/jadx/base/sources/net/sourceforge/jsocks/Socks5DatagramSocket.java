package net.sourceforge.jsocks;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes2.dex */
public class Socks5DatagramSocket extends DatagramSocket {
    UDPEncapsulation encapsulation;
    Socks5Proxy proxy;
    InetAddress relayIP;
    int relayPort;
    private boolean server_mode;

    public Socks5DatagramSocket() throws IOException {
        this(Proxy.defaultProxy, 0, null);
    }

    Socks5DatagramSocket(boolean z, UDPEncapsulation uDPEncapsulation, InetAddress inetAddress, int i) throws IOException {
        this.server_mode = z;
        this.relayIP = inetAddress;
        this.relayPort = i;
        this.encapsulation = uDPEncapsulation;
        this.proxy = null;
    }

    public Socks5DatagramSocket(int i) throws IOException {
        this(Proxy.defaultProxy, i, null);
    }

    public Socks5DatagramSocket(int i, InetAddress inetAddress) throws IOException {
        this(Proxy.defaultProxy, i, inetAddress);
    }

    public Socks5DatagramSocket(Proxy proxy, int i, InetAddress inetAddress) throws IOException {
        super(i, inetAddress);
        this.server_mode = false;
        if (proxy == null) {
            throw new SocksException(65536);
        }
        if (!(proxy instanceof Socks5Proxy)) {
            throw new SocksException(-1, "Datagram Socket needs Proxy version 5");
        }
        if (proxy.chainProxy != null) {
            throw new SocksException(Proxy.SOCKS_JUST_ERROR, "Datagram Sockets do not support proxy chaining.");
        }
        Socks5Proxy socks5Proxy = (Socks5Proxy) proxy.copy();
        this.proxy = socks5Proxy;
        ProxyMessage proxyMessageUdpAssociate = socks5Proxy.udpAssociate(super.getLocalAddress(), super.getLocalPort());
        InetAddress inetAddress2 = proxyMessageUdpAssociate.ip;
        this.relayIP = inetAddress2;
        if (inetAddress2.getHostAddress().equals("0.0.0.0")) {
            this.relayIP = this.proxy.proxyIP;
        }
        this.relayPort = proxyMessageUdpAssociate.port;
        this.encapsulation = this.proxy.udp_encapsulation;
    }

    @Override // java.net.DatagramSocket, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.server_mode) {
            this.proxy.endSession();
        }
        super.close();
    }

    private byte[] formHeader(InetAddress inetAddress, int i) {
        Socks5Message socks5Message = new Socks5Message(0, inetAddress, i);
        socks5Message.data[0] = 0;
        return socks5Message.data;
    }

    @Override // java.net.DatagramSocket
    public InetAddress getLocalAddress() {
        if (this.server_mode) {
            return super.getLocalAddress();
        }
        return this.relayIP;
    }

    @Override // java.net.DatagramSocket
    public int getLocalPort() {
        if (this.server_mode) {
            return super.getLocalPort();
        }
        return this.relayPort;
    }

    public boolean isProxyAlive(int i) {
        Socks5Proxy socks5Proxy;
        if (this.server_mode || (socks5Proxy = this.proxy) == null) {
            return false;
        }
        try {
            socks5Proxy.proxySocket.setSoTimeout(i);
            return this.proxy.in.read() >= 0;
        } catch (InterruptedIOException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    @Override // java.net.DatagramSocket
    public void receive(DatagramPacket datagramPacket) throws IOException {
        super.receive(datagramPacket);
        if (this.server_mode) {
            int length = datagramPacket.getLength();
            int soTimeout = getSoTimeout();
            long jCurrentTimeMillis = System.currentTimeMillis();
            while (true) {
                if (this.relayIP.equals(datagramPacket.getAddress()) && this.relayPort == datagramPacket.getPort()) {
                    if (soTimeout == 0) {
                        break;
                    }
                    setSoTimeout(soTimeout);
                    break;
                } else {
                    datagramPacket.setLength(length);
                    if (soTimeout != 0) {
                        int iCurrentTimeMillis = soTimeout - ((int) (System.currentTimeMillis() - jCurrentTimeMillis));
                        if (iCurrentTimeMillis <= 0) {
                            throw new InterruptedIOException("In Socks5DatagramSocket->receive()");
                        }
                        setSoTimeout(iCurrentTimeMillis);
                    }
                    super.receive(datagramPacket);
                }
            }
        } else if (!this.relayIP.equals(datagramPacket.getAddress()) || this.relayPort != datagramPacket.getPort()) {
            return;
        }
        byte[] data = datagramPacket.getData();
        UDPEncapsulation uDPEncapsulation = this.encapsulation;
        if (uDPEncapsulation != null) {
            data = uDPEncapsulation.udpEncapsulate(data, false);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(data, 0, datagramPacket.getLength());
        Socks5Message socks5Message = new Socks5Message(byteArrayInputStream);
        datagramPacket.setPort(socks5Message.port);
        datagramPacket.setAddress(socks5Message.getInetAddress());
        int iAvailable = byteArrayInputStream.available();
        System.arraycopy(data, datagramPacket.getLength() - iAvailable, data, 0, iAvailable);
        datagramPacket.setLength(iAvailable);
    }

    @Override // java.net.DatagramSocket
    public void send(DatagramPacket datagramPacket) throws IOException {
        if (!this.server_mode) {
            super.send(datagramPacket);
            return;
        }
        byte[] bArrFormHeader = formHeader(datagramPacket.getAddress(), datagramPacket.getPort());
        byte[] bArrUdpEncapsulate = new byte[bArrFormHeader.length + datagramPacket.getLength()];
        byte[] data = datagramPacket.getData();
        System.arraycopy(bArrFormHeader, 0, bArrUdpEncapsulate, 0, bArrFormHeader.length);
        System.arraycopy(data, 0, bArrUdpEncapsulate, bArrFormHeader.length, datagramPacket.getLength());
        UDPEncapsulation uDPEncapsulation = this.encapsulation;
        if (uDPEncapsulation != null) {
            bArrUdpEncapsulate = uDPEncapsulation.udpEncapsulate(bArrUdpEncapsulate, true);
        }
        super.send(new DatagramPacket(bArrUdpEncapsulate, bArrUdpEncapsulate.length, this.relayIP, this.relayPort));
    }

    public void send(DatagramPacket datagramPacket, String str) throws IOException {
        datagramPacket.setAddress(InetAddress.getByName(str));
        super.send(datagramPacket);
    }
}
