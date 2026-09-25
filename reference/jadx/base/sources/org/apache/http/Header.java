package org.apache.http;

/* JADX INFO: loaded from: classes3.dex */
public interface Header extends NameValuePair {
    HeaderElement[] getElements() throws ParseException;
}
