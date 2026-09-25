package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes3.dex */
public class X0015_CertificateIdForFile extends PKWareExtraHeader {
    static final ZipShort HEADER_ID = new ZipShort(21);
    private PKWareExtraHeader.HashAlgorithm hashAlg;
    private int rcount;

    public X0015_CertificateIdForFile() {
        super(HEADER_ID);
    }

    public PKWareExtraHeader.HashAlgorithm getHashAlgorithm() {
        return this.hashAlg;
    }

    public int getRecordCount() {
        return this.rcount;
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i, int i2) throws ZipException {
        assertMinimalLength(4, i2);
        super.parseFromCentralDirectoryData(bArr, i, i2);
        this.rcount = ZipShort.getValue(bArr, i);
        this.hashAlg = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i + 2));
    }
}
