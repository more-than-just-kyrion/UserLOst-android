package com.trilead.ssh2;

import java.security.KeyPair;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface AuthAgentCallback {
    boolean addIdentity(KeyPair keyPair, String str, boolean z, int i);

    KeyPair getKeyPair(byte[] bArr);

    boolean isAgentLocked();

    boolean removeAllIdentities();

    boolean removeIdentity(byte[] bArr);

    boolean requestAgentUnlock(String str);

    Map<String, byte[]> retrieveIdentities();

    boolean setAgentLock(String str);
}
