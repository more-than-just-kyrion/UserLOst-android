package com.trilead.ssh2.crypto.cipher;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class CipherOutputStream {
    private int blockSize;
    private final BufferedOutputStream bo;
    private byte[] buffer;
    private BlockCipher currentCipher;
    private byte[] enc;
    private int pos;
    private boolean recordingOutput;
    private final ByteArrayOutputStream recordingOutputStream = new ByteArrayOutputStream();

    public CipherOutputStream(BlockCipher blockCipher, OutputStream outputStream) {
        if (outputStream instanceof BufferedOutputStream) {
            this.bo = (BufferedOutputStream) outputStream;
        } else {
            this.bo = new BufferedOutputStream(outputStream);
        }
        changeCipher(blockCipher);
    }

    public void flush() throws IOException {
        if (this.pos != 0) {
            throw new IOException("FATAL: cannot flush since crypto buffer is not aligned.");
        }
        this.bo.flush();
    }

    public void changeCipher(BlockCipher blockCipher) {
        this.currentCipher = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.buffer = new byte[blockSize];
        this.enc = new byte[blockSize];
        this.pos = 0;
    }

    public void startRecording() {
        this.recordingOutput = true;
    }

    public byte[] getRecordedOutput() {
        this.recordingOutput = false;
        byte[] byteArray = this.recordingOutputStream.toByteArray();
        this.recordingOutputStream.reset();
        return byteArray;
    }

    private void writeBlock() throws IOException {
        try {
            this.currentCipher.transformBlock(this.buffer, 0, this.enc, 0);
            this.bo.write(this.enc, 0, this.blockSize);
            this.pos = 0;
            if (this.recordingOutput) {
                this.recordingOutputStream.write(this.enc, 0, this.blockSize);
            }
        } catch (Exception e) {
            throw new IOException("Error while decrypting block.", e);
        }
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int iMin = Math.min(this.blockSize - this.pos, i2);
            System.arraycopy(bArr, i, this.buffer, this.pos, iMin);
            int i3 = this.pos + iMin;
            this.pos = i3;
            i += iMin;
            i2 -= iMin;
            if (i3 >= this.blockSize) {
                writeBlock();
            }
        }
    }

    public void write(int i) throws IOException {
        byte[] bArr = this.buffer;
        int i2 = this.pos;
        int i3 = i2 + 1;
        this.pos = i3;
        bArr[i2] = (byte) i;
        if (i3 >= this.blockSize) {
            writeBlock();
        }
    }

    public void writePlain(int i) throws IOException {
        if (this.pos != 0) {
            throw new IOException("Cannot write plain since crypto buffer is not aligned.");
        }
        this.bo.write(i);
    }

    public void writePlain(byte[] bArr, int i, int i2) throws IOException {
        if (this.pos != 0) {
            throw new IOException("Cannot write plain since crypto buffer is not aligned.");
        }
        this.bo.write(bArr, i, i2);
    }
}
