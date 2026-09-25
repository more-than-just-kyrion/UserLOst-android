package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
class DTLSRecordLayer implements DatagramTransport {
    private static final int MAX_FRAGMENT_LENGTH = 16384;
    private static final int RECORD_HEADER_LENGTH = 13;
    private static final long RETRANSMIT_TIMEOUT = 240000;
    private static final long TCP_MSL = 120000;
    private final TlsContext context;
    private DTLSEpoch currentEpoch;
    private final TlsPeer peer;
    private DTLSEpoch pendingEpoch;
    private volatile int plaintextLimit;
    private DTLSEpoch readEpoch;
    private final DatagramTransport transport;
    private DTLSEpoch writeEpoch;
    private final ByteQueue recordQueue = new ByteQueue();
    private volatile boolean closed = false;
    private volatile boolean failed = false;
    private volatile ProtocolVersion readVersion = null;
    private volatile ProtocolVersion writeVersion = null;
    private DTLSHandshakeRetransmit retransmit = null;
    private DTLSEpoch retransmitEpoch = null;
    private long retransmitExpiry = 0;
    private volatile boolean inHandshake = true;

    private static long getMacSequenceNumber(int i, long j) {
        return ((((long) i) & BodyPartID.bodyIdMax) << 48) | j;
    }

    DTLSRecordLayer(DatagramTransport datagramTransport, TlsContext tlsContext, TlsPeer tlsPeer, short s) {
        this.transport = datagramTransport;
        this.context = tlsContext;
        this.peer = tlsPeer;
        DTLSEpoch dTLSEpoch = new DTLSEpoch(0, new TlsNullCipher(tlsContext));
        this.currentEpoch = dTLSEpoch;
        this.pendingEpoch = null;
        this.readEpoch = dTLSEpoch;
        this.writeEpoch = dTLSEpoch;
        setPlaintextLimit(16384);
    }

    void setPlaintextLimit(int i) {
        this.plaintextLimit = i;
    }

    int getReadEpoch() {
        return this.readEpoch.getEpoch();
    }

    ProtocolVersion getReadVersion() {
        return this.readVersion;
    }

    void setReadVersion(ProtocolVersion protocolVersion) {
        this.readVersion = protocolVersion;
    }

    void setWriteVersion(ProtocolVersion protocolVersion) {
        this.writeVersion = protocolVersion;
    }

    void initPendingEpoch(TlsCipher tlsCipher) {
        if (this.pendingEpoch != null) {
            throw new IllegalStateException();
        }
        this.pendingEpoch = new DTLSEpoch(this.writeEpoch.getEpoch() + 1, tlsCipher);
    }

    void handshakeSuccessful(DTLSHandshakeRetransmit dTLSHandshakeRetransmit) {
        DTLSEpoch dTLSEpoch = this.readEpoch;
        DTLSEpoch dTLSEpoch2 = this.currentEpoch;
        if (dTLSEpoch == dTLSEpoch2 || this.writeEpoch == dTLSEpoch2) {
            throw new IllegalStateException();
        }
        if (dTLSHandshakeRetransmit != null) {
            this.retransmit = dTLSHandshakeRetransmit;
            this.retransmitEpoch = dTLSEpoch2;
            this.retransmitExpiry = System.currentTimeMillis() + RETRANSMIT_TIMEOUT;
        }
        this.inHandshake = false;
        this.currentEpoch = this.pendingEpoch;
        this.pendingEpoch = null;
    }

    void resetWriteEpoch() {
        DTLSEpoch dTLSEpoch = this.retransmitEpoch;
        if (dTLSEpoch != null) {
            this.writeEpoch = dTLSEpoch;
        } else {
            this.writeEpoch = this.currentEpoch;
        }
    }

    @Override // org.spongycastle.crypto.tls.DatagramTransport
    public int getReceiveLimit() throws IOException {
        return Math.min(this.plaintextLimit, this.readEpoch.getCipher().getPlaintextLimit(this.transport.getReceiveLimit() - 13));
    }

    @Override // org.spongycastle.crypto.tls.DatagramTransport
    public int getSendLimit() throws IOException {
        return Math.min(this.plaintextLimit, this.writeEpoch.getCipher().getPlaintextLimit(this.transport.getSendLimit() - 13));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:100:0x0120 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:0x0120 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:0x0120 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:103:0x0102 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x0075  */
    /* JADX WARN: Code duplicated, block: B:41:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:60:0x00db  */
    /* JADX WARN: Code duplicated, block: B:62:0x00df  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:69:0x00fc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:73:0x010b  */
    /* JADX WARN: Code duplicated, block: B:76:0x0110  */
    /* JADX WARN: Code duplicated, block: B:96:0x0036 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0036 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.spongycastle.crypto.tls.DTLSEpoch, org.spongycastle.crypto.tls.DTLSHandshakeRetransmit] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    @Override // org.spongycastle.crypto.tls.DatagramTransport
    public int receive(byte[] bArr, int i, int i2, int i3) throws IOException {
        DTLSEpoch dTLSEpoch;
        DTLSEpoch dTLSEpoch2;
        DTLSEpoch dTLSEpoch3;
        long uint48;
        ProtocolVersion version;
        byte[] bArrDecodeCiphertext;
        int i4;
        DTLSEpoch dTLSEpoch4;
        short s;
        short s2;
        DTLSHandshakeRetransmit dTLSHandshakeRetransmit;
        ?? r1 = 0;
        byte[] bArr2 = null;
        while (true) {
            int iMin = Math.min(i2, getReceiveLimit()) + 13;
            if (bArr2 == null || bArr2.length < iMin) {
                bArr2 = new byte[iMin];
            }
            if (this.retransmit != null && System.currentTimeMillis() > this.retransmitExpiry) {
                this.retransmit = r1;
                this.retransmitEpoch = r1;
            }
            int iReceiveRecord = receiveRecord(bArr2, 0, iMin, i3);
            if (iReceiveRecord < 0) {
                return iReceiveRecord;
            }
            if (iReceiveRecord >= 13 && iReceiveRecord == TlsUtils.readUint16(bArr2, 11) + 13) {
                short uint8 = TlsUtils.readUint8(bArr2, 0);
                switch (uint8) {
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                        int uint16 = TlsUtils.readUint16(bArr2, 3);
                        if (uint16 == this.readEpoch.getEpoch()) {
                            dTLSEpoch3 = this.readEpoch;
                        } else {
                            if (uint8 == 22 && (dTLSEpoch2 = this.retransmitEpoch) != null && uint16 == dTLSEpoch2.getEpoch()) {
                                dTLSEpoch3 = this.retransmitEpoch;
                            } else {
                                dTLSEpoch = r1;
                            }
                            if (dTLSEpoch == 0) {
                                uint48 = TlsUtils.readUint48(bArr2, 5);
                                if (dTLSEpoch.getReplayWindow().shouldDiscard(uint48)) {
                                    version = TlsUtils.readVersion(bArr2, 1);
                                    if (version.isDTLS() && (this.readVersion == null || this.readVersion.equals(version))) {
                                        bArrDecodeCiphertext = dTLSEpoch.getCipher().decodeCiphertext(getMacSequenceNumber(dTLSEpoch.getEpoch(), uint48), uint8, bArr2, 13, iReceiveRecord - 13);
                                        dTLSEpoch.getReplayWindow().reportAuthenticated(uint48);
                                        if (bArrDecodeCiphertext.length <= this.plaintextLimit) {
                                            if (this.readVersion == null) {
                                                this.readVersion = version;
                                            }
                                            switch (uint8) {
                                                case 20:
                                                    for (i4 = 0; i4 < bArrDecodeCiphertext.length; i4++) {
                                                        if (TlsUtils.readUint8(bArrDecodeCiphertext, i4) == 1 && (dTLSEpoch4 = this.pendingEpoch) != null) {
                                                            this.readEpoch = dTLSEpoch4;
                                                        }
                                                    }
                                                    break;
                                                case 21:
                                                    if (bArrDecodeCiphertext.length == 2) {
                                                        s = bArrDecodeCiphertext[0];
                                                        s2 = bArrDecodeCiphertext[1];
                                                        this.peer.notifyAlertReceived(s, s2);
                                                        if (s != 2) {
                                                            failed();
                                                            throw new TlsFatalAlert(s2);
                                                        }
                                                        if (s2 == 0) {
                                                            closeTransport();
                                                        }
                                                    }
                                                    break;
                                                case 22:
                                                    if (!this.inHandshake) {
                                                        dTLSHandshakeRetransmit = this.retransmit;
                                                        if (dTLSHandshakeRetransmit != null) {
                                                            dTLSHandshakeRetransmit.receivedHandshakeRecord(uint16, bArrDecodeCiphertext, 0, bArrDecodeCiphertext.length);
                                                        }
                                                    }
                                                    break;
                                                case 23:
                                                    if (!this.inHandshake) {
                                                    }
                                                    break;
                                                case 24:
                                                    break;
                                                default:
                                                    break;
                                            }
                                        }
                                        r1 = 0;
                                    }
                                }
                            }
                        }
                        dTLSEpoch = dTLSEpoch3;
                        if (dTLSEpoch == 0) {
                            uint48 = TlsUtils.readUint48(bArr2, 5);
                            if (dTLSEpoch.getReplayWindow().shouldDiscard(uint48)) {
                                version = TlsUtils.readVersion(bArr2, 1);
                                if (version.isDTLS()) {
                                    bArrDecodeCiphertext = dTLSEpoch.getCipher().decodeCiphertext(getMacSequenceNumber(dTLSEpoch.getEpoch(), uint48), uint8, bArr2, 13, iReceiveRecord - 13);
                                    dTLSEpoch.getReplayWindow().reportAuthenticated(uint48);
                                    if (bArrDecodeCiphertext.length <= this.plaintextLimit) {
                                        if (this.readVersion == null) {
                                            this.readVersion = version;
                                        }
                                        switch (uint8) {
                                            case 20:
                                                while (i4 < bArrDecodeCiphertext.length) {
                                                    if (TlsUtils.readUint8(bArrDecodeCiphertext, i4) == 1) {
                                                        this.readEpoch = dTLSEpoch4;
                                                    }
                                                }
                                                break;
                                            case 21:
                                                if (bArrDecodeCiphertext.length == 2) {
                                                    s = bArrDecodeCiphertext[0];
                                                    s2 = bArrDecodeCiphertext[1];
                                                    this.peer.notifyAlertReceived(s, s2);
                                                    if (s != 2) {
                                                        failed();
                                                        throw new TlsFatalAlert(s2);
                                                    }
                                                    if (s2 == 0) {
                                                        closeTransport();
                                                    }
                                                }
                                                break;
                                            case 22:
                                                if (!this.inHandshake) {
                                                    dTLSHandshakeRetransmit = this.retransmit;
                                                    if (dTLSHandshakeRetransmit != null) {
                                                        dTLSHandshakeRetransmit.receivedHandshakeRecord(uint16, bArrDecodeCiphertext, 0, bArrDecodeCiphertext.length);
                                                    }
                                                }
                                                break;
                                            case 23:
                                                if (!this.inHandshake) {
                                                }
                                                break;
                                            case 24:
                                                break;
                                            default:
                                                break;
                                        }
                                    }
                                    r1 = 0;
                                }
                            }
                        }
                        break;
                    default:
                        break;
                }
            }
        }
        if (!this.inHandshake && this.retransmit != null) {
            this.retransmit = null;
            this.retransmitEpoch = null;
        }
        System.arraycopy(bArrDecodeCiphertext, 0, bArr, i, bArrDecodeCiphertext.length);
        return bArrDecodeCiphertext.length;
    }

    @Override // org.spongycastle.crypto.tls.DatagramTransport
    public void send(byte[] bArr, int i, int i2) throws IOException {
        short s;
        DTLSEpoch dTLSEpoch;
        if (this.inHandshake || this.writeEpoch == this.retransmitEpoch) {
            if (TlsUtils.readUint8(bArr, i) == 20) {
                if (this.inHandshake) {
                    dTLSEpoch = this.pendingEpoch;
                } else {
                    dTLSEpoch = this.writeEpoch == this.retransmitEpoch ? this.currentEpoch : null;
                }
                if (dTLSEpoch == null) {
                    throw new IllegalStateException();
                }
                sendRecord((short) 20, new byte[]{1}, 0, 1);
                this.writeEpoch = dTLSEpoch;
            }
            s = 22;
        } else {
            s = 23;
        }
        sendRecord(s, bArr, i, i2);
    }

    @Override // org.spongycastle.crypto.tls.DatagramTransport
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        if (this.inHandshake) {
            warn((short) 90, "User canceled handshake");
        }
        closeTransport();
    }

    void fail(short s) {
        if (this.closed) {
            return;
        }
        try {
            raiseAlert((short) 2, s, null, null);
        } catch (Exception unused) {
        }
        this.failed = true;
        closeTransport();
    }

    void failed() {
        if (this.closed) {
            return;
        }
        this.failed = true;
        closeTransport();
    }

    void warn(short s, String str) throws IOException {
        raiseAlert((short) 1, s, str, null);
    }

    private void closeTransport() {
        if (this.closed) {
            return;
        }
        try {
            if (!this.failed) {
                warn((short) 0, null);
            }
            this.transport.close();
        } catch (Exception unused) {
        }
        this.closed = true;
    }

    private void raiseAlert(short s, short s2, String str, Throwable th) throws IOException {
        this.peer.notifyAlertRaised(s, s2, str, th);
        sendRecord((short) 21, new byte[]{(byte) s, (byte) s2}, 0, 2);
    }

    private int receiveRecord(byte[] bArr, int i, int i2, int i3) throws IOException {
        int uint16;
        int uint17;
        if (this.recordQueue.available() > 0) {
            if (this.recordQueue.available() >= 13) {
                byte[] bArr2 = new byte[2];
                this.recordQueue.read(bArr2, 0, 2, 11);
                uint17 = TlsUtils.readUint16(bArr2, 0);
            } else {
                uint17 = 0;
            }
            int iMin = Math.min(this.recordQueue.available(), uint17 + 13);
            this.recordQueue.removeData(bArr, i, iMin, 0);
            return iMin;
        }
        int iReceive = this.transport.receive(bArr, i, i2, i3);
        if (iReceive < 13 || iReceive <= (uint16 = TlsUtils.readUint16(bArr, i + 11) + 13)) {
            return iReceive;
        }
        this.recordQueue.addData(bArr, i + uint16, iReceive - uint16);
        return uint16;
    }

    private void sendRecord(short s, byte[] bArr, int i, int i2) throws IOException {
        if (this.writeVersion == null) {
            return;
        }
        if (i2 > this.plaintextLimit) {
            throw new TlsFatalAlert((short) 80);
        }
        if (i2 < 1 && s != 23) {
            throw new TlsFatalAlert((short) 80);
        }
        int epoch = this.writeEpoch.getEpoch();
        long jAllocateSequenceNumber = this.writeEpoch.allocateSequenceNumber();
        byte[] bArrEncodePlaintext = this.writeEpoch.getCipher().encodePlaintext(getMacSequenceNumber(epoch, jAllocateSequenceNumber), s, bArr, i, i2);
        int length = bArrEncodePlaintext.length + 13;
        byte[] bArr2 = new byte[length];
        TlsUtils.writeUint8(s, bArr2, 0);
        TlsUtils.writeVersion(this.writeVersion, bArr2, 1);
        TlsUtils.writeUint16(epoch, bArr2, 3);
        TlsUtils.writeUint48(jAllocateSequenceNumber, bArr2, 5);
        TlsUtils.writeUint16(bArrEncodePlaintext.length, bArr2, 11);
        System.arraycopy(bArrEncodePlaintext, 0, bArr2, 13, bArrEncodePlaintext.length);
        this.transport.send(bArr2, 0, length);
    }
}
