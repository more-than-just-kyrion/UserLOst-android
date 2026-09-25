package net.sourceforge.jsocks;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public class Socks4Message extends ProxyMessage {
    public static final int REPLY_BAD_IDENTD = 93;
    public static final int REPLY_NO_CONNECT = 92;
    public static final int REPLY_OK = 90;
    public static final int REPLY_REJECTED = 91;
    public static final int REQUEST_BIND = 2;
    public static final int REQUEST_CONNECT = 1;
    static final int SOCKS_VERSION = 4;
    static final String[] replyMessage = {"Request Granted", "Request Rejected or Failed", "Failed request, can't connect to Identd", "Failed request, bad user name"};
    private byte[] msgBytes;
    private int msgLength;

    static InetAddress bytes2IP(byte[] bArr) {
        try {
            return InetAddress.getByName(bytes2IPV4(bArr, 0));
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    public Socks4Message(InputStream inputStream, boolean z) throws IOException {
        this.msgBytes = null;
        read(inputStream, z);
    }

    public Socks4Message(int i) {
        super(i, null, 0);
        this.user = null;
        this.msgLength = 2;
        this.msgBytes = new byte[]{0, (byte) this.command};
    }

    public Socks4Message(int i, InetAddress inetAddress, int i2) {
        this(0, i, inetAddress, i2, null);
    }

    public Socks4Message(int i, InetAddress inetAddress, int i2, String str) {
        this(4, i, inetAddress, i2, str);
    }

    public Socks4Message(int i, int i2, InetAddress inetAddress, int i3, String str) {
        byte[] address;
        super(i2, inetAddress, i3);
        this.user = str;
        this.version = i;
        int length = str == null ? 8 : str.length() + 9;
        this.msgLength = length;
        byte[] bArr = new byte[length];
        this.msgBytes = bArr;
        bArr[0] = (byte) i;
        bArr[1] = (byte) this.command;
        byte[] bArr2 = this.msgBytes;
        bArr2[2] = (byte) (i3 >> 8);
        bArr2[3] = (byte) i3;
        if (inetAddress != null) {
            address = inetAddress.getAddress();
        } else {
            address = new byte[]{0, 0, 0, 0};
        }
        System.arraycopy(address, 0, this.msgBytes, 4, 4);
        if (str != null) {
            byte[] bytes = str.getBytes();
            System.arraycopy(bytes, 0, this.msgBytes, 8, bytes.length);
            byte[] bArr3 = this.msgBytes;
            bArr3[bArr3.length - 1] = 0;
        }
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public void read(InputStream inputStream) throws IOException {
        read(inputStream, true);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0056  */
    @Override // net.sourceforge.jsocks.ProxyMessage
    public void read(InputStream inputStream, boolean z) throws IOException {
        boolean z2;
        String str;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.version = dataInputStream.readUnsignedByte();
        this.command = dataInputStream.readUnsignedByte();
        if (z && this.command != 90) {
            if (this.command > 90 && this.command < 93) {
                str = replyMessage[this.command - 90];
            } else {
                str = "Unknown Reply Code";
            }
            throw new SocksException(this.command, str);
        }
        this.port = dataInputStream.readUnsignedShort();
        byte[] bArr = new byte[4];
        dataInputStream.readFully(bArr);
        if (bArr[0] == 0) {
            z2 = true;
            if (bArr[1] != 0 || bArr[2] != 0 || bArr[3] == 0) {
                this.ip = bytes2IP(bArr);
                this.host = this.ip.getHostName();
                z2 = false;
            }
        } else {
            this.ip = bytes2IP(bArr);
            this.host = this.ip.getHostName();
            z2 = false;
        }
        if (z) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i = inputStream.read();
            if (i == 0) {
                break;
            } else {
                sb.append((char) i);
            }
        }
        this.user = sb.toString();
        if (!z2) {
            return;
        }
        sb.setLength(0);
        while (true) {
            int i2 = inputStream.read();
            if (i2 != 0) {
                sb.append((char) i2);
            } else {
                this.host = sb.toString();
                return;
            }
        }
    }

    @Override // net.sourceforge.jsocks.ProxyMessage
    public void write(OutputStream outputStream) throws IOException {
        if (this.msgBytes == null) {
            Socks4Message socks4Message = new Socks4Message(this.version, this.command, this.ip, this.port, this.user);
            this.msgBytes = socks4Message.msgBytes;
            this.msgLength = socks4Message.msgLength;
        }
        outputStream.write(this.msgBytes);
    }
}
