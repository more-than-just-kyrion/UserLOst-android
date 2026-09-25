package com.trilead.ssh2.crypto.keys;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.Security;

/* JADX INFO: loaded from: classes2.dex */
public class Ed25519Provider extends Provider {
    public static final String KEY_ALGORITHM = "Ed25519";
    private static final Object sInitLock = new Object();
    private static boolean sInitialized = false;

    public Ed25519Provider() {
        super("ConnectBot Ed25519 Provider", 1.0d, "Not for use elsewhere");
        AccessController.doPrivileged(new PrivilegedAction() { // from class: com.trilead.ssh2.crypto.keys.Ed25519Provider$$ExternalSyntheticLambda0
            @Override // java.security.PrivilegedAction
            public final Object run() {
                return this.f$0.m298lambda$new$0$comtrileadssh2cryptokeysEd25519Provider();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-trilead-ssh2-crypto-keys-Ed25519Provider, reason: not valid java name */
    /* synthetic */ Object m298lambda$new$0$comtrileadssh2cryptokeysEd25519Provider() {
        setup();
        return null;
    }

    protected void setup() {
        put("KeyFactory.Ed25519", getClass().getPackage().getName() + ".Ed25519KeyFactory");
        put("KeyPairGenerator.Ed25519", getClass().getPackage().getName() + ".Ed25519KeyPairGenerator");
        put("Alg.Alias.KeyFactory.1.3.101.112", "Ed25519");
        put("Alg.Alias.KeyFactory.EdDSA", "Ed25519");
        put("Alg.Alias.KeyFactory.OID.1.3.101.112", "Ed25519");
        put("Alg.Alias.KeyPairGenerator.1.3.101.112", "Ed25519");
        put("Alg.Alias.KeyPairGenerator.EdDSA", "Ed25519");
        put("Alg.Alias.KeyPairGenerator.OID.1.3.101.112", "Ed25519");
    }

    public static void insertIfNeeded() {
        synchronized (sInitLock) {
            if (!sInitialized) {
                Security.addProvider(new Ed25519Provider());
                sInitialized = true;
            }
        }
    }
}
