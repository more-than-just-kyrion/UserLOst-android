package com.trilead.ssh2;

/* JADX INFO: loaded from: classes2.dex */
public interface InteractiveCallback {
    String[] replyToChallenge(String str, String str2, int i, String[] strArr, boolean[] zArr) throws Exception;
}
