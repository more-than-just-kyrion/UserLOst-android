package org.apache.commons.compress.archivers.sevenz;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.compress.PasswordRequiredException;

/* JADX INFO: loaded from: classes3.dex */
final class AES256SHA256Decoder extends AbstractCoder {

    private static final class AES256SHA256DecoderInputStream extends InputStream {
        private final String archiveName;
        private CipherInputStream cipherInputStream;
        private final Coder coder;
        private final InputStream in;
        private boolean isInitialized;
        private final byte[] passwordBytes;

        private AES256SHA256DecoderInputStream(InputStream inputStream, Coder coder, String str, byte[] bArr) {
            this.in = inputStream;
            this.coder = coder;
            this.archiveName = str;
            this.passwordBytes = bArr;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            CipherInputStream cipherInputStream = this.cipherInputStream;
            if (cipherInputStream != null) {
                cipherInputStream.close();
            }
        }

        private CipherInputStream init() throws IOException {
            byte[] bArrSha256Password;
            if (this.isInitialized) {
                return this.cipherInputStream;
            }
            if (this.coder.properties == null) {
                throw new IOException("Missing AES256 properties in " + this.archiveName);
            }
            if (this.coder.properties.length < 2) {
                throw new IOException("AES256 properties too short in " + this.archiveName);
            }
            int i = this.coder.properties[0];
            int i2 = i & 255;
            int i3 = i & 63;
            int i4 = this.coder.properties[1];
            int i5 = ((i2 >> 6) & 1) + (i4 & 15);
            int i6 = ((i2 >> 7) & 1) + ((i4 & 255) >> 4);
            int i7 = i6 + 2;
            if (i7 + i5 > this.coder.properties.length) {
                throw new IOException("Salt size + IV size too long in " + this.archiveName);
            }
            byte[] bArr = new byte[i6];
            System.arraycopy(this.coder.properties, 2, bArr, 0, i6);
            byte[] bArr2 = new byte[16];
            System.arraycopy(this.coder.properties, i7, bArr2, 0, i5);
            byte[] bArr3 = this.passwordBytes;
            if (bArr3 == null) {
                throw new PasswordRequiredException(this.archiveName);
            }
            if (i3 == 63) {
                bArrSha256Password = new byte[32];
                System.arraycopy(bArr, 0, bArrSha256Password, 0, i6);
                byte[] bArr4 = this.passwordBytes;
                System.arraycopy(bArr4, 0, bArrSha256Password, i6, Math.min(bArr4.length, 32 - i6));
            } else {
                bArrSha256Password = AES256SHA256Decoder.sha256Password(bArr3, i3, bArr);
            }
            SecretKeySpec secretKeySpecNewSecretKeySpec = AES256Options.newSecretKeySpec(bArrSha256Password);
            try {
                Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
                cipher.init(2, secretKeySpecNewSecretKeySpec, new IvParameterSpec(bArr2));
                CipherInputStream cipherInputStream = new CipherInputStream(this.in, cipher);
                this.cipherInputStream = cipherInputStream;
                this.isInitialized = true;
                return cipherInputStream;
            } catch (GeneralSecurityException e) {
                throw new IllegalStateException("Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)", e);
            }
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            return init().read();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            return init().read(bArr, i, i2);
        }
    }

    private static final class AES256SHA256DecoderOutputStream extends OutputStream {
        private final byte[] cipherBlockBuffer;
        private final int cipherBlockSize;
        private final CipherOutputStream cipherOutputStream;
        private int count;

        private AES256SHA256DecoderOutputStream(AES256Options aES256Options, OutputStream outputStream) {
            this.cipherOutputStream = new CipherOutputStream(outputStream, aES256Options.getCipher());
            int blockSize = aES256Options.getCipher().getBlockSize();
            this.cipherBlockSize = blockSize;
            this.cipherBlockBuffer = new byte[blockSize];
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.count > 0) {
                this.cipherOutputStream.write(this.cipherBlockBuffer);
            }
            this.cipherOutputStream.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.cipherOutputStream.flush();
        }

        private void flushBuffer() throws IOException {
            this.cipherOutputStream.write(this.cipherBlockBuffer);
            this.count = 0;
            Arrays.fill(this.cipherBlockBuffer, (byte) 0);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.count;
            int i4 = i2 + i3;
            int i5 = this.cipherBlockSize;
            int i6 = i4 > i5 ? i5 - i3 : i2;
            System.arraycopy(bArr, i, this.cipherBlockBuffer, i3, i6);
            int i7 = this.count + i6;
            this.count = i7;
            if (i7 == this.cipherBlockSize) {
                flushBuffer();
                int i8 = i2 - i6;
                int i9 = this.cipherBlockSize;
                if (i8 >= i9) {
                    int i10 = (i8 / i9) * i9;
                    this.cipherOutputStream.write(bArr, i + i6, i10);
                    i6 += i10;
                }
                int i11 = i2 - i6;
                System.arraycopy(bArr, i + i6, this.cipherBlockBuffer, 0, i11);
                this.count = i11;
            }
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            byte[] bArr = this.cipherBlockBuffer;
            int i2 = this.count;
            int i3 = i2 + 1;
            this.count = i3;
            bArr[i2] = (byte) i;
            if (i3 == this.cipherBlockSize) {
                flushBuffer();
            }
        }
    }

    static byte[] sha256Password(byte[] bArr, int i, byte[] bArr2) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            byte[] bArr3 = new byte[8];
            for (long j = 0; j < (1 << i); j++) {
                messageDigest.update(bArr2);
                messageDigest.update(bArr);
                messageDigest.update(bArr3);
                for (int i2 = 0; i2 < 8; i2++) {
                    byte b = (byte) (bArr3[i2] + 1);
                    bArr3[i2] = b;
                    if (b != 0) {
                        break;
                    }
                }
            }
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("SHA-256 is unsupported by your Java implementation", e);
        }
    }

    static byte[] sha256Password(char[] cArr, int i, byte[] bArr) {
        return sha256Password(utf16Decode(cArr), i, bArr);
    }

    static byte[] utf16Decode(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        ByteBuffer byteBufferEncode = StandardCharsets.UTF_16LE.encode(CharBuffer.wrap(cArr));
        if (byteBufferEncode.hasArray()) {
            return byteBufferEncode.array();
        }
        byte[] bArr = new byte[byteBufferEncode.remaining()];
        byteBufferEncode.get(bArr);
        return bArr;
    }

    AES256SHA256Decoder() {
        super(AES256Options.class);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.AbstractCoder
    InputStream decode(String str, InputStream inputStream, long j, Coder coder, byte[] bArr, int i) {
        return new AES256SHA256DecoderInputStream(inputStream, coder, str, bArr);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.AbstractCoder
    OutputStream encode(OutputStream outputStream, Object obj) throws IOException {
        return new AES256SHA256DecoderOutputStream((AES256Options) obj, outputStream);
    }

    @Override // org.apache.commons.compress.archivers.sevenz.AbstractCoder
    byte[] getOptionsAsProperties(Object obj) throws IOException {
        AES256Options aES256Options = (AES256Options) obj;
        byte[] bArr = new byte[aES256Options.getSalt().length + 2 + aES256Options.getIv().length];
        bArr[0] = (byte) (aES256Options.getNumCyclesPower() | (aES256Options.getSalt().length == 0 ? 0 : 128) | (aES256Options.getIv().length == 0 ? 0 : 64));
        if (aES256Options.getSalt().length != 0 || aES256Options.getIv().length != 0) {
            bArr[1] = (byte) (((aES256Options.getSalt().length == 0 ? 0 : aES256Options.getSalt().length - 1) << 4) | (aES256Options.getIv().length == 0 ? 0 : aES256Options.getIv().length - 1));
            System.arraycopy(aES256Options.getSalt(), 0, bArr, 2, aES256Options.getSalt().length);
            System.arraycopy(aES256Options.getIv(), 0, bArr, aES256Options.getSalt().length + 2, aES256Options.getIv().length);
        }
        return bArr;
    }
}
