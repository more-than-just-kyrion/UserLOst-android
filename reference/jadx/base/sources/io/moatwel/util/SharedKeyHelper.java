package io.moatwel.util;

import io.moatwel.crypto.PrivateKey;
import io.moatwel.crypto.PublicKey;
import io.moatwel.crypto.eddsa.DecodeException;
import io.moatwel.crypto.eddsa.EncodedPoint;
import io.moatwel.crypto.eddsa.HashDelegate;

/* JADX INFO: loaded from: classes2.dex */
public class SharedKeyHelper {
    public static byte[] generateSharedKeySeed(PublicKey publicKey, PrivateKey privateKey, HashDelegate hashDelegate) throws DecodeException {
        return EncodedPoint.from(publicKey.getRaw()).decode().scalarMultiply(privateKey.getScalarSeed(hashDelegate)).encode().getValue();
    }
}
