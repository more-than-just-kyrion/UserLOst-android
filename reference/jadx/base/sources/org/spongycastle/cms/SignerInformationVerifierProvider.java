package org.spongycastle.cms;

import org.spongycastle.operator.OperatorCreationException;

/* JADX INFO: loaded from: classes3.dex */
public interface SignerInformationVerifierProvider {
    SignerInformationVerifier get(SignerId signerId) throws OperatorCreationException;
}
