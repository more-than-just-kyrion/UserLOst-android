package com.trilead.ssh2.transport;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class ClientServerHello {
    String client_line = "SSH-2.0-TrileadSSH2Java_213";
    String server_line;
    String server_versioncomment;

    public static final int readLineRN(InputStream inputStream, byte[] bArr) throws IOException {
        int i = 0;
        boolean z = false;
        int i2 = 0;
        while (true) {
            int i3 = inputStream.read();
            if (i3 == -1) {
                throw new IOException("Premature connection close");
            }
            int i4 = i + 1;
            bArr[i] = (byte) i3;
            if (i3 == 13) {
                z = true;
            } else {
                if (i3 == 10) {
                    return i2;
                }
                if (z) {
                    throw new IOException("Malformed line sent by the server, the line does not end correctly.");
                }
                i2++;
                if (i4 >= bArr.length) {
                    throw new IOException("The server sent a too long line.");
                }
            }
            i = i4;
        }
    }

    public ClientServerHello(InputStream inputStream, OutputStream outputStream) throws IOException {
        try {
            outputStream.write(("SSH-2.0-TrileadSSH2Java_213\r\n").getBytes("ISO-8859-1"));
        } catch (UnsupportedEncodingException unused) {
            outputStream.write((this.client_line + "\r\n").getBytes());
        }
        outputStream.flush();
        byte[] bArr = new byte[512];
        for (int i = 0; i < 50; i++) {
            int lineRN = readLineRN(inputStream, bArr);
            try {
                this.server_line = new String(bArr, 0, lineRN, "ISO-8859-1");
            } catch (UnsupportedEncodingException unused2) {
                this.server_line = new String(bArr, 0, lineRN);
            }
            if (this.server_line.startsWith("SSH-")) {
                break;
            }
        }
        if (!this.server_line.startsWith("SSH-")) {
            throw new IOException("Malformed server identification string. There was no line starting with 'SSH-' amongst the first 50 lines.");
        }
        if (this.server_line.startsWith("SSH-1.99-")) {
            this.server_versioncomment = this.server_line.substring(9);
        } else {
            if (this.server_line.startsWith("SSH-2.0-")) {
                this.server_versioncomment = this.server_line.substring(8);
                return;
            }
            throw new IOException("Server uses incompatible protocol, it is not SSH-2 compatible.");
        }
    }

    public byte[] getClientString() {
        try {
            return this.client_line.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException unused) {
            return this.client_line.getBytes();
        }
    }

    public byte[] getServerString() {
        try {
            return this.server_line.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException unused) {
            return this.server_line.getBytes();
        }
    }
}
