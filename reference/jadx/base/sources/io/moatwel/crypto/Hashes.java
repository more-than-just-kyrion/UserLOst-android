package io.moatwel.crypto;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Security;
import org.spongycastle.crypto.digests.SHAKEDigest;
import org.spongycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes2.dex */
public class Hashes {
    static {
        Security.addProvider(new BouncyCastleProvider());
    }

    public static byte[] hash(HashAlgorithm hashAlgorithm, byte[]... bArr) {
        return hash(hashAlgorithm, hashAlgorithm.getDefaultBitLength() / 8, bArr);
    }

    /* JADX INFO: renamed from: io.moatwel.crypto.Hashes$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$moatwel$crypto$HashAlgorithm;

        static {
            int[] iArr = new int[HashAlgorithm.values().length];
            $SwitchMap$io$moatwel$crypto$HashAlgorithm = iArr;
            try {
                iArr[HashAlgorithm.SHAKE_128.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$moatwel$crypto$HashAlgorithm[HashAlgorithm.SHAKE_256.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static byte[] hash(HashAlgorithm hashAlgorithm, int i, byte[]... bArr) {
        int i2 = AnonymousClass1.$SwitchMap$io$moatwel$crypto$HashAlgorithm[hashAlgorithm.ordinal()];
        if (i2 == 1 || i2 == 2) {
            return hashVariableOutput(hashAlgorithm, i, bArr);
        }
        if (hashAlgorithm.getDefaultBitLength() / 8 == i) {
            return hash(hashAlgorithm.getName(), bArr);
        }
        throw new IllegalStateException("Specified output byte length(" + i + ") is not available on this hash algorithm(" + hashAlgorithm.getName() + ").");
    }

    private static byte[] hash(String str, byte[]... bArr) throws RuntimeException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str, BouncyCastleProvider.PROVIDER_NAME);
            for (byte[] bArr2 : bArr) {
                messageDigest.update(bArr2);
            }
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException | NoSuchProviderException e) {
            throw new RuntimeException("Hashing error: " + e.getMessage(), e);
        }
    }

    private static byte[] hashVariableOutput(HashAlgorithm hashAlgorithm, int i, byte[]... bArr) {
        SHAKEDigest sHAKEDigest = new SHAKEDigest(hashAlgorithm.getDefaultBitLength());
        for (byte[] bArr2 : bArr) {
            sHAKEDigest.update(bArr2, 0, bArr2.length);
        }
        byte[] bArr3 = new byte[i];
        sHAKEDigest.doFinal(bArr3, 0, i);
        return bArr3;
    }
}
