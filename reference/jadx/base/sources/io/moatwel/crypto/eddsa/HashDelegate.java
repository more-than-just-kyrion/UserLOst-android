package io.moatwel.crypto.eddsa;

import io.moatwel.crypto.PrivateKey;

/* JADX INFO: loaded from: classes2.dex */
public interface HashDelegate {
    byte[] hashPrivateKey(PrivateKey privateKey);
}
