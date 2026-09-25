package org.spongycastle.cert.dane;

/* JADX INFO: loaded from: classes3.dex */
public class DANEEntryStoreBuilder {
    private final DANEEntryFetcherFactory daneEntryFetcher;

    public DANEEntryStoreBuilder(DANEEntryFetcherFactory dANEEntryFetcherFactory) {
        this.daneEntryFetcher = dANEEntryFetcherFactory;
    }

    public DANEEntryStore build(String str) throws DANEException {
        return new DANEEntryStore(this.daneEntryFetcher.build(str).getEntries());
    }
}
