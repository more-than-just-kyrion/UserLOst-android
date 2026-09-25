package io.moatwel.crypto.eddsa.ed448;

import io.moatwel.crypto.eddsa.Coordinate;
import io.moatwel.crypto.eddsa.EncodedCoordinate;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
class EncodedCoordinateEd448 extends EncodedCoordinate {
    EncodedCoordinateEd448(byte[] bArr) {
        super(bArr);
    }

    @Override // io.moatwel.crypto.eddsa.EncodedCoordinate
    public Coordinate decode() {
        return new CoordinateEd448(new BigInteger(1, ByteUtils.reverse(this.value)));
    }
}
