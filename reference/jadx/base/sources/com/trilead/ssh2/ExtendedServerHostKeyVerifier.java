package com.trilead.ssh2;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ExtendedServerHostKeyVerifier implements ServerHostKeyVerifier {
    public abstract void addServerHostKey(String str, int i, String str2, byte[] bArr);

    public abstract List<String> getKnownKeyAlgorithmsForHost(String str, int i);

    public abstract void removeServerHostKey(String str, int i, String str2, byte[] bArr);
}
