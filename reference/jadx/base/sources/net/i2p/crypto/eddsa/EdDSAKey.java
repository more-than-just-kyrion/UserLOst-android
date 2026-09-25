package net.i2p.crypto.eddsa;

import net.i2p.crypto.eddsa.spec.EdDSAParameterSpec;

/* JADX INFO: loaded from: classes2.dex */
public interface EdDSAKey {
    public static final String KEY_ALGORITHM = "EdDSA";

    EdDSAParameterSpec getParams();
}
