package com.iiordanov.bVNC;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.net.Socket;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Locale;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* JADX INFO: loaded from: classes2.dex */
public class SecureTunnel implements X509TrustManager {
    private static final String TAG = "SecureTunnel";
    String m_address;
    String m_cert;
    boolean m_certMatched = false;
    ConnectionBean m_connection;
    String m_hash;
    int m_idHashAlgorithm;
    Handler m_messageBus;
    int m_port;
    SSLSocket m_sslsock;

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }

    public SecureTunnel(String str, int i, int i2, String str2, String str3, Handler handler) {
        this.m_address = str;
        this.m_port = i;
        this.m_idHashAlgorithm = i2;
        this.m_hash = str2;
        this.m_cert = str3;
        this.m_messageBus = handler;
    }

    public void setup() throws Exception {
        Socket socket = new Socket(this.m_address, this.m_port);
        socket.setTcpNoDelay(true);
        Log.i(TAG, "Generating TLS context.");
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, new TrustManager[]{this}, null);
        SSLSocket sSLSocket = (SSLSocket) sSLContext.getSocketFactory().createSocket(socket, socket.getInetAddress().getHostName(), socket.getPort(), true);
        this.m_sslsock = sSLSocket;
        sSLSocket.setTcpNoDelay(true);
        this.m_sslsock.setSoTimeout(Constants.SOCKET_CONN_TIMEOUT);
        setParam(this.m_sslsock);
        Log.i(TAG, "Performing TLS handshake.");
        this.m_sslsock.startHandshake();
        Log.i(TAG, "Secure tunnel established.");
        SSLSession session = this.m_sslsock.getSession();
        Log.i(TAG, String.format(Locale.US, "Using Protocol:%s CipherSuite:%s", session.getProtocol(), session.getCipherSuite()));
        this.m_sslsock.setSoTimeout(0);
    }

    public SSLSocket getSocket() {
        return this.m_sslsock;
    }

    protected void setParam(SSLSocket sSLSocket) {
        ArrayList arrayList = new ArrayList();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        for (int i = 0; i < supportedCipherSuites.length; i++) {
            if (!supportedCipherSuites[i].contains("EXPORT") && !supportedCipherSuites[i].contains("NULL") && !supportedCipherSuites[i].contains("EMPTY") && supportedCipherSuites[i].contains("TLS")) {
                arrayList.add(supportedCipherSuites[i]);
                Log.i(TAG, "Adding cipher: " + supportedCipherSuites[i]);
            }
        }
        for (int i2 = 0; i2 < supportedCipherSuites.length; i2++) {
            if (!supportedCipherSuites[i2].contains("EXPORT") && !supportedCipherSuites[i2].contains("NULL") && !supportedCipherSuites[i2].contains("EMPTY") && supportedCipherSuites[i2].contains("SSL")) {
                arrayList.add(supportedCipherSuites[i2]);
                Log.i(TAG, "Adding cipher: " + supportedCipherSuites[i2]);
            }
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        X509Certificate x509Certificate;
        if (x509CertificateArr == null || x509CertificateArr.length == 0 || (x509Certificate = x509CertificateArr[0]) == null) {
            throw new CertificateException();
        }
        this.m_messageBus.sendMessage(Message.obtain(this.m_messageBus, 1, x509Certificate));
    }

    public static boolean isSignatureEqual(int i, String str, byte[] bArr) throws Exception {
        if (Utils.isNullOrEmptry(str)) {
            return false;
        }
        String strTrim = str.trim();
        return !Utils.isNullOrEmptry(strTrim) && computeSignatureByAlgorithm(i, bArr).equalsIgnoreCase(strTrim);
    }

    public static String computeSignatureByAlgorithm(int i, byte[] bArr) throws NoSuchAlgorithmException {
        MessageDigest messageDigest;
        if (i == 1) {
            messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
        } else if (i == 2) {
            messageDigest = MessageDigest.getInstance("SHA-1");
        } else if (i == 4) {
            messageDigest = MessageDigest.getInstance("SHA-256");
        } else {
            throw new IllegalArgumentException("Unsupported hash algorithm.");
        }
        return Utils.toHexString(messageDigest.digest(bArr)).trim();
    }
}
