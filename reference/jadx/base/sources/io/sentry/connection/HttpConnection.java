package io.sentry.connection;

import io.sentry.environment.SentryEnvironment;
import io.sentry.event.Event;
import io.sentry.marshaller.Marshaller;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class HttpConnection extends AbstractConnection {
    public static final int HTTP_TOO_MANY_REQUESTS = 429;
    private static final String SENTRY_AUTH = "X-Sentry-Auth";
    private static final String USER_AGENT = "User-Agent";
    private boolean bypassSecurity;
    private int connectionTimeout;
    private EventSampler eventSampler;
    private Marshaller marshaller;
    private final Proxy proxy;
    private int readTimeout;
    private final URL sentryUrl;
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) HttpConnection.class);
    private static final int DEFAULT_CONNECTION_TIMEOUT = (int) TimeUnit.SECONDS.toMillis(1);
    private static final int DEFAULT_READ_TIMEOUT = (int) TimeUnit.SECONDS.toMillis(5);
    private static final HostnameVerifier NAIVE_VERIFIER = new HostnameVerifier() { // from class: io.sentry.connection.HttpConnection.1
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    };

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public HttpConnection(URL url, String str, String str2, Proxy proxy, EventSampler eventSampler) {
        super(str, str2);
        this.connectionTimeout = DEFAULT_CONNECTION_TIMEOUT;
        this.readTimeout = DEFAULT_READ_TIMEOUT;
        this.bypassSecurity = false;
        this.sentryUrl = url;
        this.proxy = proxy;
        this.eventSampler = eventSampler;
    }

    public static URL getSentryApiUrl(URI uri, String str) {
        try {
            return new URL(uri.toString() + "api/" + str + "/store/");
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Couldn't build a valid URL from the Sentry API.", e);
        }
    }

    protected HttpURLConnection getConnection() {
        HttpURLConnection httpURLConnection;
        try {
            Proxy proxy = this.proxy;
            if (proxy != null) {
                httpURLConnection = (HttpURLConnection) this.sentryUrl.openConnection(proxy);
            } else {
                httpURLConnection = (HttpURLConnection) this.sentryUrl.openConnection();
            }
            if (this.bypassSecurity && (httpURLConnection instanceof HttpsURLConnection)) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(NAIVE_VERIFIER);
            }
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setConnectTimeout(this.connectionTimeout);
            httpURLConnection.setReadTimeout(this.readTimeout);
            httpURLConnection.setRequestProperty("User-Agent", SentryEnvironment.getSentryName());
            httpURLConnection.setRequestProperty(SENTRY_AUTH, getAuthHeader());
            if (this.marshaller.getContentType() != null) {
                httpURLConnection.setRequestProperty("Content-Type", this.marshaller.getContentType());
            }
            if (this.marshaller.getContentEncoding() != null) {
                httpURLConnection.setRequestProperty("Content-Encoding", this.marshaller.getContentEncoding());
            }
            return httpURLConnection;
        } catch (IOException e) {
            throw new IllegalStateException("Couldn't set up a connection to the Sentry server.", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[Catch: all -> 0x002b, IOException -> 0x008b, TRY_LEAVE, TryCatch #2 {all -> 0x002b, blocks: (B:8:0x0011, B:14:0x002f, B:17:0x0038, B:20:0x0049, B:21:0x0051, B:23:0x0059, B:26:0x0079, B:29:0x0082, B:30:0x0089, B:32:0x008b, B:34:0x0091, B:36:0x0097, B:39:0x009f, B:40:0x00a4), top: B:49:0x0011, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0079 A[Catch: all -> 0x002b, IOException -> 0x008b, TRY_ENTER, TryCatch #2 {all -> 0x002b, blocks: (B:8:0x0011, B:14:0x002f, B:17:0x0038, B:20:0x0049, B:21:0x0051, B:23:0x0059, B:26:0x0079, B:29:0x0082, B:30:0x0089, B:32:0x008b, B:34:0x0091, B:36:0x0097, B:39:0x009f, B:40:0x00a4), top: B:49:0x0011, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    /* JADX WARN: Code duplicated, block: B:29:0x0082 A[Catch: all -> 0x002b, IOException -> 0x008b, TryCatch #2 {all -> 0x002b, blocks: (B:8:0x0011, B:14:0x002f, B:17:0x0038, B:20:0x0049, B:21:0x0051, B:23:0x0059, B:26:0x0079, B:29:0x0082, B:30:0x0089, B:32:0x008b, B:34:0x0091, B:36:0x0097, B:39:0x009f, B:40:0x00a4), top: B:49:0x0011, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0091 A[Catch: all -> 0x002b, TryCatch #2 {all -> 0x002b, blocks: (B:8:0x0011, B:14:0x002f, B:17:0x0038, B:20:0x0049, B:21:0x0051, B:23:0x0059, B:26:0x0079, B:29:0x0082, B:30:0x0089, B:32:0x008b, B:34:0x0091, B:36:0x0097, B:39:0x009f, B:40:0x00a4), top: B:49:0x0011, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x009d  */
    @Override // io.sentry.connection.AbstractConnection
    protected void doSend(Event event) throws ConnectionException {
        Long lValueOf;
        Integer numValueOf;
        String errorMessageFromStream;
        EventSampler eventSampler = this.eventSampler;
        if (eventSampler != null && !eventSampler.shouldSendEvent(event)) {
            return;
        }
        HttpURLConnection connection = getConnection();
        try {
            try {
                connection.connect();
                OutputStream outputStream = connection.getOutputStream();
                this.marshaller.marshall(event, outputStream);
                outputStream.close();
                connection.getInputStream().close();
                connection.disconnect();
            } catch (IOException e) {
                String headerField = connection.getHeaderField("Retry-After");
                if (headerField != null) {
                    try {
                        lValueOf = Long.valueOf((long) (Double.parseDouble(headerField) * 1000.0d));
                    } catch (NumberFormatException unused) {
                        lValueOf = null;
                        numValueOf = Integer.valueOf(connection.getResponseCode());
                        if (numValueOf.intValue() == 403) {
                            logger.debug("Event '" + event.getId() + "' was rejected by the Sentry server due to a filter.");
                            connection.disconnect();
                        } else {
                            if (numValueOf.intValue() != 429) {
                                throw new TooManyRequestsException("Too many requests to Sentry: https://docs.sentry.io/learn/quotas/", e, lValueOf, numValueOf);
                            }
                            InputStream errorStream = connection.getErrorStream();
                            errorMessageFromStream = errorStream != null ? getErrorMessageFromStream(errorStream) : null;
                            if (errorMessageFromStream != null || errorMessageFromStream.isEmpty()) {
                                errorMessageFromStream = "An exception occurred while submitting the event to the Sentry server.";
                            }
                            throw new ConnectionException(errorMessageFromStream, e, lValueOf, numValueOf);
                        }
                    }
                } else {
                    lValueOf = null;
                }
                try {
                    numValueOf = Integer.valueOf(connection.getResponseCode());
                    try {
                        if (numValueOf.intValue() == 403) {
                            logger.debug("Event '" + event.getId() + "' was rejected by the Sentry server due to a filter.");
                            connection.disconnect();
                        } else {
                            if (numValueOf.intValue() != 429) {
                                throw new TooManyRequestsException("Too many requests to Sentry: https://docs.sentry.io/learn/quotas/", e, lValueOf, numValueOf);
                            }
                            InputStream errorStream2 = connection.getErrorStream();
                            if (errorStream2 != null) {
                            }
                            if (errorMessageFromStream != null) {
                                errorMessageFromStream = "An exception occurred while submitting the event to the Sentry server.";
                            } else {
                                errorMessageFromStream = "An exception occurred while submitting the event to the Sentry server.";
                            }
                            throw new ConnectionException(errorMessageFromStream, e, lValueOf, numValueOf);
                        }
                    } catch (IOException unused2) {
                    }
                } catch (IOException unused3) {
                    numValueOf = null;
                }
            }
        } catch (Throwable th) {
            connection.disconnect();
            throw th;
        }
    }

    private String getErrorMessageFromStream(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, UTF_8));
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (!z) {
                    sb.append(StringUtils.LF);
                }
                sb.append(line);
                z = false;
            } catch (Exception e) {
                logger.error("Exception while reading the error message from the connection.", (Throwable) e);
            }
        }
        return sb.toString();
    }

    @Deprecated
    public void setTimeout(int i) {
        this.connectionTimeout = i;
    }

    public void setConnectionTimeout(int i) {
        this.connectionTimeout = i;
    }

    public void setReadTimeout(int i) {
        this.readTimeout = i;
    }

    public void setMarshaller(Marshaller marshaller) {
        this.marshaller = marshaller;
    }

    public void setBypassSecurity(boolean z) {
        this.bypassSecurity = z;
    }
}
