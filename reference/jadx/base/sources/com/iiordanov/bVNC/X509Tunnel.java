package com.iiordanov.bVNC;

import android.os.Handler;
import android.os.Message;
import android.util.Base64;
import android.util.Log;
import com.undatech.opaque.RfbConnectable;
import java.io.ByteArrayInputStream;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes2.dex */
public class X509Tunnel extends TLSTunnelBase {
    private static final String TAG = "X509Tunnel";
    Certificate cert;
    Handler handler;
    RfbConnectable rfb;

    public X509Tunnel(Socket socket, String str, Handler handler, RfbConnectable rfbConnectable) throws CertificateException {
        super(socket);
        Log.i(TAG, "X509Tunnel began.");
        this.rfb = rfbConnectable;
        this.handler = handler;
        if (str != null && !str.equals("")) {
            this.cert = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(Base64.decode(str, 0)));
        }
        Log.i(TAG, "X509Tunnel ended.");
    }

    private boolean tlsIsOrNewerThan1_2(String[] strArr) {
        boolean z = false;
        for (String str : strArr) {
            if (str.matches("TLSv1.[2-9]") || str.matches("TLSv[2-9].*")) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.iiordanov.bVNC.TLSTunnelBase
    protected void setParam(SSLSocket sSLSocket) {
        ArrayList arrayList = new ArrayList();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        String[] enabledProtocols = sSLSocket.getEnabledProtocols();
        Log.d(TAG, "Supported TLS Protocols: " + Arrays.toString(enabledProtocols));
        for (int i = 0; i < supportedCipherSuites.length; i++) {
            if (!supportedCipherSuites[i].matches(".*DH_anon.*") && (!tlsIsOrNewerThan1_2(enabledProtocols) || !supportedCipherSuites[i].equals("TLS_FALLBACK_SCSV"))) {
                Log.d(TAG, "Adding cipher: " + supportedCipherSuites[i]);
                arrayList.add(supportedCipherSuites[i]);
            } else {
                Log.d(TAG, "Omitting cipher: " + supportedCipherSuites[i]);
            }
        }
        sSLSocket.setEnabledCipherSuites((String[]) arrayList.toArray(new String[0]));
    }

    @Override // com.iiordanov.bVNC.TLSTunnelBase
    protected void initContext(SSLContext sSLContext) throws GeneralSecurityException {
        sSLContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.iiordanov.bVNC.X509Tunnel.1
            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                throw new CertificateException("no clients");
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                if (x509CertificateArr == null || x509CertificateArr.length < 1) {
                    throw new CertificateException("no certs");
                }
                if (x509CertificateArr == null || x509CertificateArr.length > 1) {
                    throw new CertificateException("cert path too long");
                }
                if (X509Tunnel.this.cert == null) {
                    Message message = new Message();
                    message.setTarget(X509Tunnel.this.handler);
                    message.what = 1;
                    message.obj = x509CertificateArr[0];
                    X509Tunnel.this.handler.sendMessage(message);
                    synchronized (X509Tunnel.this.rfb) {
                        while (!X509Tunnel.this.rfb.isCertificateAccepted()) {
                            try {
                                X509Tunnel.this.rfb.wait();
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    return;
                }
                try {
                    x509CertificateArr[0].verify(X509Tunnel.this.cert.getPublicKey());
                } catch (Exception unused) {
                }
                if (!X509Tunnel.this.cert.equals(x509CertificateArr[0])) {
                    throw new CertificateException("certificate does not match");
                }
            }
        }}, null);
    }
}
