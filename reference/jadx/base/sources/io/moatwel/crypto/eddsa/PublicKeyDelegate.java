package io.moatwel.crypto.eddsa;

import io.moatwel.crypto.PrivateKey;

/* JADX INFO: loaded from: classes2.dex */
public interface PublicKeyDelegate extends HashDelegate {
    byte[] generatePublicKeySeed(PrivateKey privateKey);
}
