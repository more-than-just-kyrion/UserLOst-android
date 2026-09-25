package com.trilead.ssh2;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class HTTPProxyException extends IOException {
    private static final long serialVersionUID = 2241537397104426186L;
    public final int httpErrorCode;
    public final String httpResponse;

    public HTTPProxyException(String str, int i) {
        super("HTTP Proxy Error (" + i + " " + str + ")");
        this.httpResponse = str;
        this.httpErrorCode = i;
    }
}
