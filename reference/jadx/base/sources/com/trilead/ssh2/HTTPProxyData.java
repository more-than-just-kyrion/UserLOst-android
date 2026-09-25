package com.trilead.ssh2;

import com.trilead.ssh2.crypto.Base64;
import com.trilead.ssh2.transport.ClientServerHello;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public class HTTPProxyData implements ProxyData {
    private final String proxyHost;
    private final String proxyPass;
    private final int proxyPort;
    private final String proxyUser;
    private final String[] requestHeaderLines;

    public HTTPProxyData(String str, int i) {
        this(str, i, null, null);
    }

    public HTTPProxyData(String str, int i, String str2, String str3) {
        this(str, i, str2, str3, null);
    }

    public HTTPProxyData(String str, int i, String str2, String str3, String[] strArr) {
        if (str == null) {
            throw new IllegalArgumentException("proxyHost must be non-null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("proxyPort must be non-negative");
        }
        this.proxyHost = str;
        this.proxyPort = i;
        this.proxyUser = str2;
        this.proxyPass = str3;
        this.requestHeaderLines = strArr;
    }

    @Override // com.trilead.ssh2.ProxyData
    public Socket openConnection(String str, int i, int i2) throws IOException {
        String str2;
        String str3;
        char[] cArrEncode;
        Socket socket = new Socket();
        socket.connect(new InetSocketAddress(InetAddress.getByName(this.proxyHost), this.proxyPort), i2);
        socket.setSoTimeout(0);
        StringBuffer stringBuffer = new StringBuffer("CONNECT ");
        stringBuffer.append(str);
        stringBuffer.append(':');
        stringBuffer.append(i);
        stringBuffer.append(" HTTP/1.0\r\n");
        String str4 = this.proxyUser;
        if (str4 != null && (str3 = this.proxyPass) != null) {
            String str5 = str4 + ":" + str3;
            try {
                cArrEncode = Base64.encode(str5.getBytes("ISO-8859-1"));
            } catch (UnsupportedEncodingException unused) {
                cArrEncode = Base64.encode(str5.getBytes());
            }
            stringBuffer.append("Proxy-Authorization: Basic ");
            stringBuffer.append(cArrEncode);
            stringBuffer.append("\r\n");
        }
        if (this.requestHeaderLines != null) {
            int i3 = 0;
            while (true) {
                String[] strArr = this.requestHeaderLines;
                if (i3 >= strArr.length) {
                    break;
                }
                String str6 = strArr[i3];
                if (str6 != null) {
                    stringBuffer.append(str6);
                    stringBuffer.append("\r\n");
                }
                i3++;
            }
        }
        stringBuffer.append("\r\n");
        OutputStream outputStream = socket.getOutputStream();
        try {
            outputStream.write(stringBuffer.toString().getBytes("ISO-8859-1"));
        } catch (UnsupportedEncodingException unused2) {
            outputStream.write(stringBuffer.toString().getBytes());
        }
        outputStream.flush();
        byte[] bArr = new byte[1024];
        InputStream inputStream = socket.getInputStream();
        int lineRN = ClientServerHello.readLineRN(inputStream, bArr);
        try {
            str2 = new String(bArr, 0, lineRN, "ISO-8859-1");
        } catch (UnsupportedEncodingException unused3) {
            str2 = new String(bArr, 0, lineRN);
        }
        if (!str2.startsWith("HTTP/")) {
            throw new IOException("The proxy did not send back a valid HTTP response.");
        }
        if (str2.length() < 14 || str2.charAt(8) != ' ' || str2.charAt(12) != ' ') {
            throw new IOException("The proxy did not send back a valid HTTP response.");
        }
        try {
            int i4 = Integer.parseInt(str2.substring(9, 12));
            if (i4 < 0 || i4 > 999) {
                throw new IOException("The proxy did not send back a valid HTTP response.");
            }
            if (i4 != 200) {
                throw new HTTPProxyException(str2.substring(13), i4);
            }
            while (ClientServerHello.readLineRN(inputStream, bArr) != 0) {
            }
            return socket;
        } catch (NumberFormatException unused4) {
            throw new IOException("The proxy did not send back a valid HTTP response.");
        }
    }
}
