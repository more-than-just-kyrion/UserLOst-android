package com.undatech.opaque.util;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes2.dex */
public class HttpsFileDownloader {
    public static String TAG = HttpsFileDownloader.class.toString();
    OnDownloadFinishedListener listener;
    String url;
    boolean verifySslCerts;

    public interface OnDownloadFinishedListener {
        void onDownload(String str);
    }

    public HttpsFileDownloader(String str, boolean z, OnDownloadFinishedListener onDownloadFinishedListener) {
        this.url = str;
        this.verifySslCerts = z;
        this.listener = onDownloadFinishedListener;
    }

    public static void initDefaultTrustManager(boolean z) {
        Log.d(TAG, "initDefaultTrustManager");
        if (z) {
            try {
                HttpsURLConnection.setDefaultSSLSocketFactory(SSLContext.getInstance("SSL").getSocketFactory());
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.undatech.opaque.util.HttpsFileDownloader.1
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        }};
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void resetDefaultTrustManager() {
        Log.d(TAG, "resetDefaultTrustManager");
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, null, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void initiateDownload() {
        initDefaultTrustManager(this.verifySslCerts);
        new Thread() { // from class: com.undatech.opaque.util.HttpsFileDownloader.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    URLConnection uRLConnectionOpenConnection = new URL(HttpsFileDownloader.this.url).openConnection();
                    StringBuilder sb = new StringBuilder();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnectionOpenConnection.getInputStream(), Charset.forName("UTF-8")));
                    while (true) {
                        try {
                            int i = bufferedReader.read();
                            if (i != -1) {
                                sb.append((char) i);
                            } else {
                                bufferedReader.close();
                                HttpsFileDownloader.resetDefaultTrustManager();
                                HttpsFileDownloader.this.listener.onDownload(sb.toString());
                                return;
                            }
                        } catch (Throwable th) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                        e.printStackTrace();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }
}
