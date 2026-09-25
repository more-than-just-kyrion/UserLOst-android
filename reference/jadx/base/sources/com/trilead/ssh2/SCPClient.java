package com.trilead.ssh2;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class SCPClient {
    Connection conn;

    class LenNamePair {
        String filename;
        long length;

        LenNamePair() {
        }
    }

    public SCPClient(Connection connection) {
        if (connection == null) {
            throw new IllegalArgumentException("Cannot accept null argument!");
        }
        this.conn = connection;
    }

    private void readResponse(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i == 0) {
            return;
        }
        if (i == -1) {
            throw new IOException("Remote scp terminated unexpectedly.");
        }
        if (i != 1 && i != 2) {
            throw new IOException("Remote scp sent illegal error code.");
        }
        if (i == 2) {
            throw new IOException("Remote scp terminated with error.");
        }
        throw new IOException("Remote scp terminated with error (" + receiveLine(inputStream) + ").");
    }

    private String receiveLine(InputStream inputStream) throws IOException {
        StringBuffer stringBuffer = new StringBuffer(30);
        while (stringBuffer.length() <= 8192) {
            int i = inputStream.read();
            if (i < 0) {
                throw new IOException("Remote scp terminated unexpectedly.");
            }
            if (i != 10) {
                stringBuffer.append((char) i);
            } else {
                return stringBuffer.toString();
            }
        }
        throw new IOException("Remote scp sent a too long line");
    }

    private LenNamePair parseCLine(String str) throws IOException {
        if (str.length() < 8) {
            throw new IOException("Malformed C line sent by remote SCP binary, line too short.");
        }
        if (str.charAt(4) != ' ' || str.charAt(5) == ' ') {
            throw new IOException("Malformed C line sent by remote SCP binary.");
        }
        int iIndexOf = str.indexOf(32, 5);
        if (iIndexOf == -1) {
            throw new IOException("Malformed C line sent by remote SCP binary.");
        }
        String strSubstring = str.substring(5, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring.length() <= 0 || strSubstring2.length() <= 0) {
            throw new IOException("Malformed C line sent by remote SCP binary.");
        }
        if (strSubstring.length() + 6 + strSubstring2.length() != str.length()) {
            throw new IOException("Malformed C line sent by remote SCP binary.");
        }
        try {
            long j = Long.parseLong(strSubstring);
            if (j < 0) {
                throw new IOException("Malformed C line sent by remote SCP binary, illegal file length.");
            }
            LenNamePair lenNamePair = new LenNamePair();
            lenNamePair.length = j;
            lenNamePair.filename = strSubstring2;
            return lenNamePair;
        } catch (NumberFormatException unused) {
            throw new IOException("Malformed C line sent by remote SCP binary, cannot parse file length.");
        }
    }

    private void sendBytes(Session session, byte[] bArr, String str, String str2) throws IOException {
        OutputStream stdin = session.getStdin();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(session.getStdout(), 512);
        readResponse(bufferedInputStream);
        String str3 = "C" + str2 + " " + bArr.length + " " + str + StringUtils.LF;
        try {
            stdin.write(str3.getBytes("ISO-8859-1"));
        } catch (UnsupportedEncodingException unused) {
            stdin.write(str3.getBytes());
        }
        stdin.flush();
        readResponse(bufferedInputStream);
        stdin.write(bArr, 0, bArr.length);
        stdin.write(0);
        stdin.flush();
        readResponse(bufferedInputStream);
        try {
            stdin.write("E\n".getBytes("ISO-8859-1"));
        } catch (UnsupportedEncodingException unused2) {
            stdin.write("E\n".getBytes());
        }
        stdin.flush();
    }

    private void sendFiles(Session session, String[] strArr, String[] strArr2, String str) throws Throwable {
        String name;
        byte[] bArr = new byte[8192];
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(session.getStdin(), 40000);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(session.getStdout(), 512);
        readResponse(bufferedInputStream);
        for (int i = 0; i < strArr.length; i++) {
            File file = new File(strArr[i]);
            long length = file.length();
            if (strArr2 == null || strArr2.length <= i || (name = strArr2[i]) == null) {
                name = file.getName();
            }
            String str2 = "C" + str + " " + length + " " + name + StringUtils.LF;
            try {
                bufferedOutputStream.write(str2.getBytes("ISO-8859-1"));
            } catch (UnsupportedEncodingException unused) {
                bufferedOutputStream.write(str2.getBytes());
            }
            bufferedOutputStream.flush();
            readResponse(bufferedInputStream);
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                while (length > 0) {
                    int i2 = length > ((long) 8192) ? 8192 : (int) length;
                    try {
                        if (fileInputStream2.read(bArr, 0, i2) != i2) {
                            throw new IOException("Cannot read enough from local file " + strArr[i]);
                        }
                        bufferedOutputStream.write(bArr, 0, i2);
                        length -= (long) i2;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        throw th;
                    }
                }
                fileInputStream2.close();
                bufferedOutputStream.write(0);
                bufferedOutputStream.flush();
                readResponse(bufferedInputStream);
            } catch (Throwable th2) {
                th = th2;
            }
        }
        try {
            bufferedOutputStream.write("E\n".getBytes("ISO-8859-1"));
        } catch (UnsupportedEncodingException unused2) {
            bufferedOutputStream.write("E\n".getBytes("ISO-8859-1"));
        }
        bufferedOutputStream.flush();
    }

    private void receiveFiles(Session session, OutputStream[] outputStreamArr) throws IOException {
        int i;
        String strReceiveLine;
        byte[] bArr = new byte[8192];
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(session.getStdin(), 512);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(session.getStdout(), 40000);
        bufferedOutputStream.write(0);
        bufferedOutputStream.flush();
        for (OutputStream outputStream : outputStreamArr) {
            do {
                i = bufferedInputStream.read();
                if (i < 0) {
                    throw new IOException("Remote scp terminated unexpectedly.");
                }
                strReceiveLine = receiveLine(bufferedInputStream);
            } while (i == 84);
            if (i == 1 || i == 2) {
                throw new IOException("Remote SCP error: " + strReceiveLine);
            }
            if (i == 67) {
                LenNamePair cLine = parseCLine(strReceiveLine);
                bufferedOutputStream.write(0);
                bufferedOutputStream.flush();
                long j = cLine.length;
                while (j > 0) {
                    int i2 = bufferedInputStream.read(bArr, 0, j > ((long) 8192) ? 8192 : (int) j);
                    if (i2 < 0) {
                        throw new IOException("Remote scp terminated connection unexpectedly");
                    }
                    outputStream.write(bArr, 0, i2);
                    j -= (long) i2;
                }
                readResponse(bufferedInputStream);
                bufferedOutputStream.write(0);
                bufferedOutputStream.flush();
            } else {
                throw new IOException("Remote SCP error: " + ((char) i) + strReceiveLine);
            }
        }
    }

    private void receiveFiles(Session session, String[] strArr, String str) throws Throwable {
        int i;
        String strReceiveLine;
        byte[] bArr = new byte[8192];
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(session.getStdin(), 512);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(session.getStdout(), 40000);
        bufferedOutputStream.write(0);
        bufferedOutputStream.flush();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            do {
                i = bufferedInputStream.read();
                if (i < 0) {
                    throw new IOException("Remote scp terminated unexpectedly.");
                }
                strReceiveLine = receiveLine(bufferedInputStream);
            } while (i == 84);
            if (i == 1 || i == 2) {
                throw new IOException("Remote SCP error: " + strReceiveLine);
            }
            if (i == 67) {
                LenNamePair cLine = parseCLine(strReceiveLine);
                bufferedOutputStream.write(0);
                bufferedOutputStream.flush();
                FileOutputStream fileOutputStream = null;
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str + File.separatorChar + cLine.filename));
                    try {
                        long j = cLine.length;
                        while (j > 0) {
                            int i3 = bufferedInputStream.read(bArr, 0, j > ((long) 8192) ? 8192 : (int) j);
                            if (i3 < 0) {
                                throw new IOException("Remote scp terminated connection unexpectedly");
                            }
                            fileOutputStream2.write(bArr, 0, i3);
                            j -= (long) i3;
                        }
                        fileOutputStream2.close();
                        readResponse(bufferedInputStream);
                        bufferedOutputStream.write(0);
                        bufferedOutputStream.flush();
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                throw new IOException("Remote SCP error: " + ((char) i) + strReceiveLine);
            }
        }
    }

    public void put(String str, String str2) throws IOException {
        put(new String[]{str}, str2, "0600");
    }

    public void put(String[] strArr, String str) throws IOException {
        put(strArr, str, "0600");
    }

    public void put(String str, String str2, String str3) throws IOException {
        put(new String[]{str}, str2, str3);
    }

    public void put(String str, String str2, String str3, String str4) throws IOException {
        put(new String[]{str}, new String[]{str2}, str3, str4);
    }

    public void put(byte[] bArr, String str, String str2) throws IOException {
        put(bArr, str, str2, "0600");
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0058 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void put(byte[] bArr, String str, String str2, String str3) throws IOException {
        if (str == null || str2 == null || str3 == null) {
            throw new IllegalArgumentException("Null argument.");
        }
        if (str3.length() != 4) {
            throw new IllegalArgumentException("Invalid mode.");
        }
        for (int i = 0; i < str3.length(); i++) {
            if (!Character.isDigit(str3.charAt(i))) {
                throw new IllegalArgumentException("Invalid mode.");
            }
        }
        String strTrim = str2.trim();
        if (strTrim.length() <= 0) {
            strTrim = ".";
        }
        String str4 = "scp -t -d " + strTrim;
        Session sessionOpenSession = null;
        try {
            sessionOpenSession = this.conn.openSession();
            sessionOpenSession.execCommand(str4);
            sendBytes(sessionOpenSession, bArr, str, str3);
            if (sessionOpenSession != null) {
                sessionOpenSession.close();
            }
        } catch (IOException e) {
            throw new IOException("Error during SCP transfer.", e);
        }
    }

    public void put(String[] strArr, String str, String str2) throws IOException {
        put(strArr, (String[]) null, str, str2);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x006f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void put(String[] strArr, String[] strArr2, String str, String str2) throws IOException {
        if (strArr == null || str == null || str2 == null) {
            throw new IllegalArgumentException("Null argument.");
        }
        if (str2.length() != 4) {
            throw new IllegalArgumentException("Invalid mode.");
        }
        for (int i = 0; i < str2.length(); i++) {
            if (!Character.isDigit(str2.charAt(i))) {
                throw new IllegalArgumentException("Invalid mode.");
            }
        }
        if (strArr.length == 0) {
            return;
        }
        String strTrim = str.trim();
        if (strTrim.length() <= 0) {
            strTrim = ".";
        }
        String str3 = "scp -t -d " + strTrim;
        for (String str4 : strArr) {
            if (str4 == null) {
                throw new IllegalArgumentException("Cannot accept null filename.");
            }
        }
        Session sessionOpenSession = null;
        try {
            sessionOpenSession = this.conn.openSession();
            sessionOpenSession.execCommand(str3);
            sendFiles(sessionOpenSession, strArr, strArr2, str2);
            if (sessionOpenSession != null) {
                sessionOpenSession.close();
            }
        } catch (IOException e) {
            throw new IOException("Error during SCP transfer.", e);
        }
    }

    public void get(String str, String str2) throws IOException {
        get(new String[]{str}, str2);
    }

    public void get(String str, OutputStream outputStream) throws IOException {
        get(new String[]{str}, new OutputStream[]{outputStream});
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x005d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void get(String[] strArr, OutputStream[] outputStreamArr) throws IOException {
        if (strArr == null || outputStreamArr == null) {
            throw new IllegalArgumentException("Null argument.");
        }
        if (strArr.length != outputStreamArr.length) {
            throw new IllegalArgumentException("Length of arguments does not match.");
        }
        if (strArr.length == 0) {
            return;
        }
        String str = "scp -f";
        for (String str2 : strArr) {
            if (str2 == null) {
                throw new IllegalArgumentException("Cannot accept null filename.");
            }
            String strTrim = str2.trim();
            if (strTrim.length() == 0) {
                throw new IllegalArgumentException("Cannot accept empty filename.");
            }
            str = str + " " + strTrim;
        }
        Session sessionOpenSession = null;
        try {
            sessionOpenSession = this.conn.openSession();
            sessionOpenSession.execCommand(str);
            receiveFiles(sessionOpenSession, outputStreamArr);
            if (sessionOpenSession != null) {
                sessionOpenSession.close();
            }
        } catch (IOException e) {
            throw new IOException("Error during SCP transfer.", e);
        }
    }

    public void get(String[] strArr, String str) throws IOException {
        if (strArr == null || str == null) {
            throw new IllegalArgumentException("Null argument.");
        }
        if (strArr.length == 0) {
            return;
        }
        String str2 = "scp -f";
        for (String str3 : strArr) {
            if (str3 == null) {
                throw new IllegalArgumentException("Cannot accept null filename.");
            }
            String strTrim = str3.trim();
            if (strTrim.length() == 0) {
                throw new IllegalArgumentException("Cannot accept empty filename.");
            }
            str2 = str2 + " " + strTrim;
        }
        Session sessionOpenSession = null;
        try {
            try {
                sessionOpenSession = this.conn.openSession();
                sessionOpenSession.execCommand(str2);
                receiveFiles(sessionOpenSession, strArr, str);
                if (sessionOpenSession != null) {
                    sessionOpenSession.close();
                }
            } catch (IOException e) {
                throw new IOException("Error during SCP transfer.", e);
            }
        } catch (Throwable th) {
            if (sessionOpenSession != null) {
                sessionOpenSession.close();
            }
            throw th;
        }
    }
}
