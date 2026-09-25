package com.trilead.ssh2.crypto.dh;

import com.trilead.ssh2.crypto.digest.HashForSSH2Types;
import com.trilead.ssh2.log.Logger;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GenericDhExchange {
    private static final Logger log = Logger.getLogger(GenericDhExchange.class);
    BigInteger sharedSecret;

    public abstract byte[] getE();

    public abstract String getHashAlgo();

    protected abstract byte[] getServerE();

    public abstract void init(String str) throws IOException;

    public abstract void setF(byte[] bArr) throws IOException;

    protected GenericDhExchange() {
    }

    public static GenericDhExchange getInstance(String str) {
        if (Curve25519Exchange.NAME.equals(str) || Curve25519Exchange.ALT_NAME.equals(str)) {
            return new Curve25519Exchange();
        }
        if (str.startsWith("ecdh-sha2-")) {
            return new EcDhExchange();
        }
        return new DhExchange();
    }

    public BigInteger getK() {
        BigInteger bigInteger = this.sharedSecret;
        if (bigInteger != null) {
            return bigInteger;
        }
        throw new IllegalStateException("Shared secret not yet known, need f first!");
    }

    public byte[] calculateH(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws UnsupportedEncodingException {
        HashForSSH2Types hashForSSH2Types = new HashForSSH2Types(getHashAlgo());
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(90, "Client: '" + new String(bArr) + "'");
            logger.log(90, "Server: '" + new String(bArr2) + "'");
        }
        hashForSSH2Types.updateByteString(bArr);
        hashForSSH2Types.updateByteString(bArr2);
        hashForSSH2Types.updateByteString(bArr3);
        hashForSSH2Types.updateByteString(bArr4);
        hashForSSH2Types.updateByteString(bArr5);
        hashForSSH2Types.updateByteString(getE());
        hashForSSH2Types.updateByteString(getServerE());
        hashForSSH2Types.updateBigInt(this.sharedSecret);
        return hashForSSH2Types.getDigest();
    }
}
