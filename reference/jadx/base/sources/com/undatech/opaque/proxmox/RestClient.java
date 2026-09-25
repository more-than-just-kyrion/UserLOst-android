package com.undatech.opaque.proxmox;

import android.os.Handler;
import android.os.Message;
import android.util.Base64;
import android.util.Log;
import com.undatech.opaque.Connection;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.Socket;
import java.net.URLEncoder;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes2.dex */
public class RestClient {
    public static final String TAG = MySSLSocketFactory.class.getName();
    private static HttpClient client = new DefaultHttpClient();
    private Connection connection;
    private Handler handler;
    private ArrayList<NameValuePair> headers;
    private String message;
    private ArrayList<NameValuePair> params;
    private String response;
    private int responseCode;
    private String url;

    public enum RequestMethod {
        GET,
        POST
    }

    public class MySSLSocketFactory extends SSLSocketFactory {
        Certificate cert;
        SSLContext sslContext;

        public MySSLSocketFactory(KeyStore keyStore, String str, final Handler handler) throws NoSuchAlgorithmException, UnrecoverableKeyException, KeyManagementException, KeyStoreException, CertificateException {
            super(keyStore);
            this.cert = null;
            this.sslContext = SSLContext.getInstance("TLS");
            if (str != null && !str.equals("")) {
                this.cert = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(Base64.decode(str, 0)));
            }
            this.sslContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.undatech.opaque.proxmox.RestClient.MySSLSocketFactory.1
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str2) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return null;
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str2) throws CertificateException {
                    if (MySSLSocketFactory.this.cert == null) {
                        synchronized (handler) {
                            Message message = new Message();
                            message.setTarget(handler);
                            message.what = 1;
                            message.obj = x509CertificateArr[0];
                            handler.sendMessage(message);
                            while (RestClient.this.connection.getOvirtCaData().isEmpty()) {
                                try {
                                    handler.wait();
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                    Log.d(RestClient.TAG, "The x509 cert was not accepted.");
                                    throw new CertificateException("The x509 cert was not accepted.");
                                }
                            }
                            Log.d(RestClient.TAG, "The x509 cert was accepted.");
                        }
                        return;
                    }
                    try {
                        x509CertificateArr[0].verify(MySSLSocketFactory.this.cert.getPublicKey());
                    } catch (Exception unused) {
                    }
                    if (!MySSLSocketFactory.this.cert.equals(x509CertificateArr[0])) {
                        throw new CertificateException("The x509 cert does not match.");
                    }
                }
            }}, null);
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
        public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
            return this.sslContext.getSocketFactory().createSocket(socket, str, i, z);
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
        public Socket createSocket() throws IOException {
            return this.sslContext.getSocketFactory().createSocket();
        }
    }

    public String getErrorMessage() {
        return this.message;
    }

    public String getResponse() {
        return this.response;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public RestClient(Connection connection, Handler handler) {
        this.connection = connection;
        this.handler = handler;
    }

    public void resetState(String str) {
        this.url = str;
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            client.getConnectionManager().getSchemeRegistry().register(new Scheme("https", new MySSLSocketFactory(keyStore, this.connection.getOvirtCaData().trim(), this.handler), 8006));
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.params = new ArrayList<>();
        this.headers = new ArrayList<>();
    }

    public void addHeader(String str, String str2) {
        this.headers.add(new BasicNameValuePair(str, str2));
    }

    public void addParam(String str, String str2) {
        this.params.add(new BasicNameValuePair(str, str2));
    }

    /* JADX INFO: renamed from: com.undatech.opaque.proxmox.RestClient$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$undatech$opaque$proxmox$RestClient$RequestMethod;

        static {
            int[] iArr = new int[RequestMethod.values().length];
            $SwitchMap$com$undatech$opaque$proxmox$RestClient$RequestMethod = iArr;
            try {
                iArr[RequestMethod.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$undatech$opaque$proxmox$RestClient$RequestMethod[RequestMethod.POST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void execute(RequestMethod requestMethod) throws IOException {
        String str;
        int i = AnonymousClass1.$SwitchMap$com$undatech$opaque$proxmox$RestClient$RequestMethod[requestMethod.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return;
            }
            HttpPost httpPost = new HttpPost(this.url);
            for (NameValuePair nameValuePair : this.headers) {
                httpPost.addHeader(nameValuePair.getName(), nameValuePair.getValue());
            }
            if (!this.params.isEmpty()) {
                httpPost.setEntity(new UrlEncodedFormEntity(this.params, "UTF-8"));
            }
            executeRequest(httpPost, this.url);
            return;
        }
        if (this.params.isEmpty()) {
            str = "";
        } else {
            str = "?";
            for (NameValuePair nameValuePair2 : this.params) {
                String str2 = nameValuePair2.getName() + "=" + URLEncoder.encode(nameValuePair2.getValue(), "UTF-8");
                if (str.length() > 1) {
                    str = str + "&" + str2;
                } else {
                    str = str + str2;
                }
            }
        }
        HttpGet httpGet = new HttpGet(this.url + str);
        for (NameValuePair nameValuePair3 : this.headers) {
            httpGet.addHeader(nameValuePair3.getName(), nameValuePair3.getValue());
        }
        executeRequest(httpGet, this.url);
    }

    private void executeRequest(HttpUriRequest httpUriRequest, String str) throws IOException {
        HttpParams params = client.getParams();
        HttpConnectionParams.setConnectionTimeout(params, 60000);
        HttpConnectionParams.setSoTimeout(params, 60000);
        HttpResponse httpResponseExecute = client.execute(httpUriRequest);
        this.responseCode = httpResponseExecute.getStatusLine().getStatusCode();
        this.message = httpResponseExecute.getStatusLine().getReasonPhrase();
        HttpEntity entity = httpResponseExecute.getEntity();
        if (entity != null) {
            InputStream content = entity.getContent();
            this.response = convertStreamToString(content);
            content.close();
        }
    }

    private static String convertStreamToString(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line + StringUtils.LF);
                    } catch (IOException e) {
                        e.printStackTrace();
                        inputStream.close();
                    }
                } catch (Throwable th) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
        inputStream.close();
        return sb.toString();
    }
}
