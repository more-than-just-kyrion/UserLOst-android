package com.trilead.ssh2.transport;

import com.trilead.ssh2.compression.ICompressor;
import com.trilead.ssh2.crypto.cipher.BlockCipher;
import com.trilead.ssh2.crypto.cipher.CipherInputStream;
import com.trilead.ssh2.crypto.cipher.CipherOutputStream;
import com.trilead.ssh2.crypto.cipher.NullCipher;
import com.trilead.ssh2.crypto.digest.MAC;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.Packets;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public class TransportConnection {
    private static final Logger log = Logger.getLogger(TransportConnection.class);
    CipherInputStream cis;
    CipherOutputStream cos;
    ClientServerHello csh;
    byte[] recv_comp_buffer;
    MAC recv_mac;
    byte[] recv_mac_buffer;
    byte[] recv_mac_buffer_cmp;
    final SecureRandom rnd;
    byte[] send_comp_buffer;
    MAC send_mac;
    byte[] send_mac_buffer;
    int send_seq_number = 0;
    int recv_seq_number = 0;
    boolean useRandomPadding = false;
    int send_padd_blocksize = 8;
    int recv_padd_blocksize = 8;
    ICompressor recv_comp = null;
    ICompressor send_comp = null;
    boolean can_recv_compress = false;
    boolean can_send_compress = false;
    final byte[] send_padding_buffer = new byte[256];
    final byte[] send_packet_header_buffer = new byte[5];
    final byte[] recv_padding_buffer = new byte[256];
    final byte[] recv_packet_header_buffer = new byte[5];

    public TransportConnection(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        this.cis = new CipherInputStream(new NullCipher(), inputStream);
        this.cos = new CipherOutputStream(new NullCipher(), outputStream);
        this.rnd = secureRandom;
    }

    public void changeRecvCipher(BlockCipher blockCipher, MAC mac) {
        this.cis.changeCipher(blockCipher);
        this.recv_mac = mac;
        this.recv_mac_buffer = mac != null ? new byte[mac.size()] : null;
        this.recv_mac_buffer_cmp = mac != null ? new byte[mac.size()] : null;
        int blockSize = blockCipher.getBlockSize();
        this.recv_padd_blocksize = blockSize;
        if (blockSize < 8) {
            this.recv_padd_blocksize = 8;
        }
    }

    public void changeSendCipher(BlockCipher blockCipher, MAC mac) {
        if (!(blockCipher instanceof NullCipher)) {
            this.useRandomPadding = true;
        }
        this.cos.changeCipher(blockCipher);
        this.send_mac = mac;
        this.send_mac_buffer = mac != null ? new byte[mac.size()] : null;
        int blockSize = blockCipher.getBlockSize();
        this.send_padd_blocksize = blockSize;
        if (blockSize < 8) {
            this.send_padd_blocksize = 8;
        }
    }

    public void changeRecvCompression(ICompressor iCompressor) {
        this.recv_comp = iCompressor;
        if (iCompressor != null) {
            this.recv_comp_buffer = new byte[iCompressor.getBufferSize()];
            this.can_recv_compress |= this.recv_comp.canCompressPreauth();
        }
    }

    public void changeSendCompression(ICompressor iCompressor) {
        this.send_comp = iCompressor;
        if (iCompressor != null) {
            this.send_comp_buffer = new byte[iCompressor.getBufferSize()];
            this.can_send_compress |= this.send_comp.canCompressPreauth();
        }
    }

    public void sendMessage(byte[] bArr) throws IOException {
        sendMessage(bArr, 0, bArr.length, 0);
    }

    public void sendMessage(byte[] bArr, int i, int i2) throws IOException {
        sendMessage(bArr, i, i2, 0);
    }

    public int getPacketOverheadEstimate() {
        return this.send_padd_blocksize + 8 + this.send_mac_buffer.length;
    }

    public void sendMessage(byte[] bArr, int i, int i2, int i3) throws IOException {
        if (i3 < 4) {
            i3 = 4;
        } else if (i3 > 64) {
            i3 = 64;
        }
        ICompressor iCompressor = this.send_comp;
        if (iCompressor != null && this.can_send_compress) {
            if (this.send_comp_buffer.length < bArr.length + 1024) {
                this.send_comp_buffer = new byte[bArr.length + 1024];
            }
            i2 = iCompressor.compress(bArr, i, i2, this.send_comp_buffer);
            bArr = this.send_comp_buffer;
        }
        MAC mac = this.send_mac;
        boolean z = mac != null && mac.isEncryptThenMac();
        int i4 = (z ? 1 : 5) + i2 + i3;
        int i5 = this.send_padd_blocksize;
        int i6 = i4 % i5;
        if (i6 != 0) {
            i4 += i5 - i6;
        }
        if (i4 < 16) {
            i4 = 16;
        }
        int i7 = i4 - ((z ? 1 : 5) + i2);
        if (this.useRandomPadding) {
            for (int i8 = 0; i8 < i7; i8 += 4) {
                int iNextInt = this.rnd.nextInt();
                byte[] bArr2 = this.send_padding_buffer;
                bArr2[i8] = (byte) iNextInt;
                bArr2[i8 + 1] = (byte) (iNextInt >> 8);
                bArr2[i8 + 2] = (byte) (iNextInt >> 16);
                bArr2[i8 + 3] = (byte) (iNextInt >> 24);
            }
        } else {
            for (int i9 = 0; i9 < i7; i9++) {
                this.send_padding_buffer[i9] = 0;
            }
        }
        int i10 = z ? i4 : i4 - 4;
        byte[] bArr3 = this.send_packet_header_buffer;
        bArr3[0] = (byte) (i4 >> 24);
        bArr3[1] = (byte) (i10 >> 16);
        bArr3[2] = (byte) (i10 >> 8);
        bArr3[3] = (byte) i10;
        bArr3[4] = (byte) i7;
        MAC mac2 = this.send_mac;
        if (mac2 != null && mac2.isEncryptThenMac()) {
            this.cos.writePlain(this.send_packet_header_buffer, 0, 4);
            this.cos.startRecording();
            this.cos.write(this.send_packet_header_buffer, 4, 1);
        } else {
            this.cos.write(this.send_packet_header_buffer, 0, 5);
        }
        this.cos.write(bArr, i, i2);
        this.cos.write(this.send_padding_buffer, 0, i7);
        MAC mac3 = this.send_mac;
        if (mac3 != null) {
            mac3.initMac(this.send_seq_number);
            if (this.send_mac.isEncryptThenMac()) {
                this.send_mac.update(this.send_packet_header_buffer, 0, 4);
                byte[] recordedOutput = this.cos.getRecordedOutput();
                this.send_mac.update(recordedOutput, 0, recordedOutput.length);
            } else {
                this.send_mac.update(this.send_packet_header_buffer, 0, 5);
                this.send_mac.update(bArr, i, i2);
                this.send_mac.update(this.send_padding_buffer, 0, i7);
            }
            this.send_mac.getMac(this.send_mac_buffer, 0);
            CipherOutputStream cipherOutputStream = this.cos;
            byte[] bArr4 = this.send_mac_buffer;
            cipherOutputStream.writePlain(bArr4, 0, bArr4.length);
        }
        this.cos.flush();
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(90, "Sent " + Packets.getMessageName(bArr[i] & 255) + " " + i2 + " bytes payload");
        }
        this.send_seq_number++;
    }

    public int receiveMessage(byte[] bArr, int i, int i2) throws IOException {
        int packetLength;
        MAC mac = this.recv_mac;
        if (mac != null && mac.isEncryptThenMac()) {
            this.cis.readPlain(this.recv_packet_header_buffer, 0, 4);
            packetLength = getPacketLength(this.recv_packet_header_buffer, true);
            this.recv_mac.initMac(this.recv_seq_number);
            this.recv_mac.update(this.recv_packet_header_buffer, 0, 4);
            this.cis.peekPlain(bArr, i, this.recv_mac_buffer.length + packetLength);
            byte[] bArr2 = this.recv_mac_buffer;
            System.arraycopy(bArr, i + packetLength, bArr2, 0, bArr2.length);
            this.recv_mac.update(bArr, i, packetLength);
            this.recv_mac.getMac(this.recv_mac_buffer_cmp, 0);
            checkMacMatches(this.recv_mac_buffer, this.recv_mac_buffer_cmp);
            this.cis.read(this.recv_packet_header_buffer, 4, 1);
        } else {
            this.cis.read(this.recv_packet_header_buffer, 0, 5);
            packetLength = getPacketLength(this.recv_packet_header_buffer, false);
        }
        int i3 = this.recv_packet_header_buffer[4] & 255;
        int iCalculatePayloadLength = calculatePayloadLength(i2, packetLength, i3);
        this.cis.read(bArr, i, iCalculatePayloadLength);
        this.cis.read(this.recv_padding_buffer, 0, i3);
        if (this.recv_mac != null) {
            CipherInputStream cipherInputStream = this.cis;
            byte[] bArr3 = this.recv_mac_buffer;
            cipherInputStream.readPlain(bArr3, 0, bArr3.length);
            if (!this.recv_mac.isEncryptThenMac()) {
                this.recv_mac.initMac(this.recv_seq_number);
                this.recv_mac.update(this.recv_packet_header_buffer, 0, 5);
                this.recv_mac.update(bArr, i, iCalculatePayloadLength);
                this.recv_mac.update(this.recv_padding_buffer, 0, i3);
                this.recv_mac.getMac(this.recv_mac_buffer_cmp, 0);
                checkMacMatches(this.recv_mac_buffer, this.recv_mac_buffer_cmp);
            }
        }
        this.recv_seq_number++;
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(90, "Received " + Packets.getMessageName(bArr[i] & 255) + " " + iCalculatePayloadLength + " bytes payload");
        }
        ICompressor iCompressor = this.recv_comp;
        if (iCompressor == null || !this.can_recv_compress) {
            return iCalculatePayloadLength;
        }
        int[] iArr = {iCalculatePayloadLength};
        if (iCompressor.uncompress(bArr, i, iArr) == null) {
            throw new IOException("Error while inflating remote data");
        }
        return iArr[0];
    }

    private static int calculatePayloadLength(int i, int i2, int i3) throws IOException {
        int i4 = (i2 - i3) - 1;
        if (i4 < 0) {
            throw new IOException("Illegal padding_length in packet from remote (" + i3 + ")");
        }
        if (i4 < i) {
            return i4;
        }
        throw new IOException("Receive buffer too small (" + i + ", need " + i4 + ")");
    }

    private static void checkMacMatches(byte[] bArr, byte[] bArr2) throws IOException {
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i |= bArr[i2] ^ bArr2[i2];
        }
        if (i != 0) {
            throw new IOException("Remote sent corrupt MAC.");
        }
    }

    private static int getPacketLength(byte[] bArr, boolean z) throws IOException {
        int i = (bArr[3] & 255) | ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8);
        if (i <= 35000) {
            if (i >= (z ? 8 : 12)) {
                return i;
            }
        }
        throw new IOException("Illegal packet size! (" + i + ")");
    }

    public void startCompression() {
        this.can_recv_compress = true;
        this.can_send_compress = true;
    }

    public void resetSendSequenceNumber() {
        this.send_seq_number = 0;
    }

    public void resetReceiveSequenceNumber() {
        this.recv_seq_number = 0;
    }
}
