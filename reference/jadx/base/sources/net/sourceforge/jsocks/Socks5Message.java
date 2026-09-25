package net.sourceforge.jsocks;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class Socks5Message extends ProxyMessage {
    public static final int SOCKS_ATYP_DOMAINNAME = 3;
    public static final int SOCKS_ATYP_IPV4 = 1;
    public static final int SOCKS_ATYP_IPV6 = 4;
    public static final int SOCKS_IPV6_LENGTH = 16;
    public static final int SOCKS_VERSION = 5;
    static boolean doResolveIP = true;
    public int addrType;
    byte[] data;

    public static boolean resolveIP() {
        return doResolveIP;
    }

    public static boolean resolveIP(boolean z) {
        boolean z2 = doResolveIP;
        doResolveIP = z;
        return z2;
    }

    public Socks5Message(InputStream inputStream) throws IOException {
        this(inputStream, true);
    }

    public Socks5Message(InputStream inputStream, boolean z) throws IOException {
        read(inputStream, z);
    }

    public Socks5Message(int i) {
        super(i, null, 0);
        this.data = new byte[]{5, (byte) i, 0};
    }

    public Socks5Message(int i, InetAddress inetAddress, int i2) {
        byte[] address;
        super(i, inetAddress, i2);
        this.host = inetAddress == null ? "0.0.0.0" : inetAddress.getHostName();
        this.version = 5;
        if (inetAddress == null) {
            address = new byte[]{0, 0, 0, 0};
        } else {
            address = inetAddress.getAddress();
        }
        this.addrType = address.length == 4 ? 1 : 4;
        byte[] bArr = new byte[address.length + 6];
        this.data = bArr;
        bArr[0] = 5;
        bArr[1] = (byte) this.command;
        byte[] bArr2 = this.data;
        bArr2[2] = 0;
        bArr2[3] = (byte) this.addrType;
        System.arraycopy(address, 0, bArr2, 4, address.length);
        byte[] bArr3 = this.data;
        bArr3[bArr3.length - 2] = (byte) (i2 >> 8);
        bArr3[bArr3.length - 1] = (byte) i2;
    }

    public Socks5Message(int i, String str, int i2) {
        super(i, null, i2);
        this.host = str;
        this.version = 5;
        this.addrType = 3;
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[bytes.length + 7];
        this.data = bArr;
        bArr[0] = 5;
        bArr[1] = (byte) this.command;
        byte[] bArr2 = this.data;
        bArr2[2] = 0;
        bArr2[3] = 3;
        bArr2[4] = (byte) bytes.length;
        System.arraycopy(bytes, 0, bArr2, 5, bytes.length);
        byte[] bArr3 = this.data;
        bArr3[bArr3.length - 2] = (byte) (i2 >> 8);
        bArr3[bArr3.length - 1] = (byte) i2;
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public InetAddress getInetAddress() throws UnknownHostException {
        if (this.ip != null) {
            return this.ip;
        }
        InetAddress byName = InetAddress.getByName(this.host);
        this.ip = byName;
        return byName;
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public void read(InputStream inputStream) throws IOException {
        read(inputStream, true);
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public void read(InputStream inputStream, boolean z) throws IOException {
        this.data = null;
        this.ip = null;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.version = dataInputStream.readUnsignedByte();
        this.command = dataInputStream.readUnsignedByte();
        if (z && this.command != 0) {
            throw new SocksException(this.command);
        }
        dataInputStream.readUnsignedByte();
        int unsignedByte = dataInputStream.readUnsignedByte();
        this.addrType = unsignedByte;
        if (unsignedByte == 1) {
            byte[] bArr = new byte[4];
            dataInputStream.readFully(bArr);
            this.host = bytes2IPV4(bArr, 0);
        } else if (unsignedByte == 3) {
            byte[] bArr2 = new byte[dataInputStream.readUnsignedByte()];
            dataInputStream.readFully(bArr2);
            this.host = new String(bArr2);
        } else if (unsignedByte == 4) {
            byte[] bArr3 = new byte[16];
            dataInputStream.readFully(bArr3);
            this.host = bytes2IPV6(bArr3, 0);
        } else {
            throw new SocksException(Proxy.SOCKS_JUST_ERROR);
        }
        this.port = dataInputStream.readUnsignedShort();
        if (this.addrType == 3 || !doResolveIP) {
            return;
        }
        try {
            this.ip = InetAddress.getByName(this.host);
        } catch (UnknownHostException unused) {
        }
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public String toString() {
        return "Socks5Message:\nVN   " + this.version + "\nCMD  " + this.command + "\nATYP " + this.addrType + "\nADDR " + this.host + "\nPORT " + this.port + StringUtils.LF;
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public void write(OutputStream outputStream) throws IOException {
        Socks5Message socks5Message;
        if (this.data == null) {
            if (this.addrType == 3) {
                socks5Message = new Socks5Message(this.command, this.host, this.port);
            } else {
                if (this.ip == null) {
                    try {
                        this.ip = InetAddress.getByName(this.host);
                    } catch (UnknownHostException unused) {
                        throw new SocksException(Proxy.SOCKS_JUST_ERROR);
                    }
                }
                socks5Message = new Socks5Message(this.command, this.ip, this.port);
            }
            this.data = socks5Message.data;
        }
        outputStream.write(this.data);
    }
}
