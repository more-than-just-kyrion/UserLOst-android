package com.google.crypto.tink.internal;

import com.google.android.gms.security.ProviderInstaller;
import java.lang.reflect.InvocationTargetException;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public final class Random {
    private static final ThreadLocal<SecureRandom> localRandom = new ThreadLocal<SecureRandom>() { // from class: com.google.crypto.tink.internal.Random.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SecureRandom initialValue() {
            return Random.newDefaultSecureRandom();
        }
    };

    private static Provider getConscryptProviderWithReflection() throws GeneralSecurityException {
        try {
            return (Provider) Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
            throw new GeneralSecurityException("Failed to get Conscrypt provider", e);
        }
    }

    private static SecureRandom create() {
        try {
            try {
                try {
                    try {
                        return SecureRandom.getInstance("SHA1PRNG", ProviderInstaller.PROVIDER_NAME);
                    } catch (GeneralSecurityException unused) {
                        return new SecureRandom();
                    }
                } catch (GeneralSecurityException unused2) {
                    return SecureRandom.getInstance("SHA1PRNG", "Conscrypt");
                }
            } catch (GeneralSecurityException unused3) {
                return SecureRandom.getInstance("SHA1PRNG", "AndroidOpenSSL");
            }
        } catch (GeneralSecurityException unused4) {
            return SecureRandom.getInstance("SHA1PRNG", getConscryptProviderWithReflection());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SecureRandom newDefaultSecureRandom() {
        SecureRandom secureRandomCreate = create();
        secureRandomCreate.nextLong();
        return secureRandomCreate;
    }

    public static byte[] randBytes(int size) {
        byte[] bArr = new byte[size];
        localRandom.get().nextBytes(bArr);
        return bArr;
    }

    public static final int randInt(int max) {
        return localRandom.get().nextInt(max);
    }

    public static final int randInt() {
        return localRandom.get().nextInt();
    }

    public static final void validateUsesConscrypt() throws GeneralSecurityException {
        String name = localRandom.get().getProvider().getName();
        if (!name.equals(ProviderInstaller.PROVIDER_NAME) && !name.equals("AndroidOpenSSL") && !name.equals("Conscrypt")) {
            throw new GeneralSecurityException("Requires GmsCore_OpenSSL, AndroidOpenSSL or Conscrypt to generate randomness, but got " + name);
        }
    }

    private Random() {
    }
}
