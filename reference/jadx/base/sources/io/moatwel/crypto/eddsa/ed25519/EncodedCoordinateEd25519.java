package io.moatwel.crypto.eddsa.ed25519;

import io.moatwel.crypto.eddsa.Coordinate;
import io.moatwel.crypto.eddsa.EncodedCoordinate;
import io.moatwel.util.ByteUtils;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
class EncodedCoordinateEd25519 extends EncodedCoordinate {
    EncodedCoordinateEd25519(byte[] bArr) {
        super(bArr);
    }

    @Override // io.moatwel.crypto.eddsa.EncodedCoordinate
    public Coordinate decode() {
        return new CoordinateEd25519(new BigInteger(1, ByteUtils.reverse(this.value)));
    }
}
