package net.i2p.crypto.eddsa.math.bigint;

import java.io.Serializable;
import java.math.BigInteger;
import net.i2p.crypto.eddsa.math.Encoding;
import net.i2p.crypto.eddsa.math.Field;
import net.i2p.crypto.eddsa.math.FieldElement;

/* JADX INFO: loaded from: classes2.dex */
public class BigIntegerLittleEndianEncoding extends Encoding implements Serializable {
    private static final long serialVersionUID = 3984579843759837L;
    private BigInteger mask;

    @Override // net.i2p.crypto.eddsa.math.Encoding
    public synchronized void setField(Field field) {
        super.setField(field);
        this.mask = BigInteger.ONE.shiftLeft(field.getb() - 1).subtract(BigInteger.ONE);
    }

    @Override // net.i2p.crypto.eddsa.math.Encoding
    public byte[] encode(FieldElement fieldElement) {
        return encode(((BigIntegerFieldElement) fieldElement).bi.and(this.mask));
    }

    public byte[] encode(BigInteger bigInteger) {
        if (this.f == null) {
            throw new IllegalStateException("field not set");
        }
        byte[] byteArray = bigInteger.toByteArray();
        int bVar = this.f.getb() / 8;
        byte[] bArr = new byte[bVar];
        for (int i = 0; i < byteArray.length; i++) {
            bArr[i] = byteArray[(byteArray.length - 1) - i];
        }
        for (int length = byteArray.length; length < bVar; length++) {
            bArr[length] = 0;
        }
        return bArr;
    }

    @Override // net.i2p.crypto.eddsa.math.Encoding
    public FieldElement decode(byte[] bArr) {
        if (this.f == null) {
            throw new IllegalStateException("field not set");
        }
        if (bArr.length != this.f.getb() / 8) {
            throw new IllegalArgumentException("Not a valid encoding");
        }
        return new BigIntegerFieldElement(this.f, toBigInteger(bArr).and(this.mask));
    }

    public BigInteger toBigInteger(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[(bArr.length - 1) - i];
        }
        return new BigInteger(1, bArr2);
    }

    @Override // net.i2p.crypto.eddsa.math.Encoding
    public boolean isNegative(FieldElement fieldElement) {
        return ((BigIntegerFieldElement) fieldElement).bi.testBit(0);
    }
}
