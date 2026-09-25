package org.spongycastle.apache.bzip2;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import org.apache.http.message.TokenParser;

/* JADX INFO: loaded from: classes3.dex */
public class CBZip2InputStream extends InputStream implements BZip2Constants {
    private static final int NO_RAND_PART_A_STATE = 5;
    private static final int NO_RAND_PART_B_STATE = 6;
    private static final int NO_RAND_PART_C_STATE = 7;
    private static final int RAND_PART_A_STATE = 2;
    private static final int RAND_PART_B_STATE = 3;
    private static final int RAND_PART_C_STATE = 4;
    private static final int START_BLOCK_STATE = 1;
    private boolean blockRandomised;
    private int blockSize100k;
    private int bsBuff;
    private int bsLive;
    private InputStream bsStream;
    int ch2;
    int chPrev;
    private int computedBlockCRC;
    private int computedCombinedCRC;
    int count;
    int i;
    int i2;
    int j2;
    private int last;
    private int nInUse;
    private int origPtr;
    private int storedBlockCRC;
    private int storedCombinedCRC;
    int tPos;
    char z;
    private CRC mCrc = new CRC();
    private boolean[] inUse = new boolean[256];
    private char[] seqToUnseq = new char[256];
    private char[] unseqToSeq = new char[256];
    private char[] selector = new char[18002];
    private char[] selectorMtf = new char[18002];
    private int[] unzftab = new int[256];
    private int[][] limit = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 6, 258);
    private int[][] base = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 6, 258);
    private int[][] perm = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 6, 258);
    private int[] minLens = new int[6];
    private boolean streamEnd = false;
    private int currentChar = -1;
    private int currentState = 1;
    int rNToGo = 0;
    int rTPos = 0;
    private char[] ll8 = null;
    private int[] tt = null;

    private static void cadvise() {
        System.out.println("CRC Error");
    }

    private static void compressedStreamEOF() {
        cadvise();
    }

    private void makeMaps() {
        this.nInUse = 0;
        for (int i = 0; i < 256; i++) {
            if (this.inUse[i]) {
                char[] cArr = this.seqToUnseq;
                int i2 = this.nInUse;
                cArr[i2] = (char) i;
                this.unseqToSeq[i] = (char) i2;
                this.nInUse = i2 + 1;
            }
        }
    }

    public CBZip2InputStream(InputStream inputStream) throws IOException {
        bsSetStream(inputStream);
        initialize();
        initBlock();
        setupBlock();
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.streamEnd) {
            return -1;
        }
        int i = this.currentChar;
        int i2 = this.currentState;
        if (i2 == 3) {
            setupRandPartB();
        } else if (i2 == 4) {
            setupRandPartC();
        } else if (i2 == 6) {
            setupNoRandPartB();
        } else if (i2 == 7) {
            setupNoRandPartC();
        }
        return i;
    }

    private void initialize() throws IOException {
        char cBsGetUChar = bsGetUChar();
        char cBsGetUChar2 = bsGetUChar();
        if (cBsGetUChar != 'B' && cBsGetUChar2 != 'Z') {
            throw new IOException("Not a BZIP2 marked stream");
        }
        char cBsGetUChar3 = bsGetUChar();
        char cBsGetUChar4 = bsGetUChar();
        if (cBsGetUChar3 != 'h' || cBsGetUChar4 < '1' || cBsGetUChar4 > '9') {
            bsFinishedWithStream();
            this.streamEnd = true;
        } else {
            setDecompressStructureSizes(cBsGetUChar4 - '0');
            this.computedCombinedCRC = 0;
        }
    }

    private void initBlock() {
        char cBsGetUChar = bsGetUChar();
        char cBsGetUChar2 = bsGetUChar();
        char cBsGetUChar3 = bsGetUChar();
        char cBsGetUChar4 = bsGetUChar();
        char cBsGetUChar5 = bsGetUChar();
        char cBsGetUChar6 = bsGetUChar();
        if (cBsGetUChar == 23 && cBsGetUChar2 == 'r' && cBsGetUChar3 == 'E' && cBsGetUChar4 == '8' && cBsGetUChar5 == 'P' && cBsGetUChar6 == 144) {
            complete();
            return;
        }
        if (cBsGetUChar != '1' || cBsGetUChar2 != 'A' || cBsGetUChar3 != 'Y' || cBsGetUChar4 != '&' || cBsGetUChar5 != 'S' || cBsGetUChar6 != 'Y') {
            badBlockHeader();
            this.streamEnd = true;
            return;
        }
        this.storedBlockCRC = bsGetInt32();
        if (bsR(1) == 1) {
            this.blockRandomised = true;
        } else {
            this.blockRandomised = false;
        }
        getAndMoveToFrontDecode();
        this.mCrc.initialiseCRC();
        this.currentState = 1;
    }

    private void endBlock() {
        int finalCRC = this.mCrc.getFinalCRC();
        this.computedBlockCRC = finalCRC;
        if (this.storedBlockCRC != finalCRC) {
            crcError();
        }
        int i = this.computedCombinedCRC;
        this.computedCombinedCRC = ((i >>> 31) | (i << 1)) ^ this.computedBlockCRC;
    }

    private void complete() {
        int iBsGetInt32 = bsGetInt32();
        this.storedCombinedCRC = iBsGetInt32;
        if (iBsGetInt32 != this.computedCombinedCRC) {
            crcError();
        }
        bsFinishedWithStream();
        this.streamEnd = true;
    }

    private static void blockOverrun() {
        cadvise();
    }

    private static void badBlockHeader() {
        cadvise();
    }

    private static void crcError() {
        cadvise();
    }

    private void bsFinishedWithStream() {
        try {
            InputStream inputStream = this.bsStream;
            if (inputStream == null || inputStream == System.in) {
                return;
            }
            this.bsStream.close();
            this.bsStream = null;
        } catch (IOException unused) {
        }
    }

    private void bsSetStream(InputStream inputStream) {
        this.bsStream = inputStream;
        this.bsLive = 0;
        this.bsBuff = 0;
    }

    private int bsR(int i) {
        char c;
        while (true) {
            int i2 = this.bsLive;
            if (i2 < i) {
                try {
                    c = (char) this.bsStream.read();
                } catch (IOException unused) {
                    compressedStreamEOF();
                    c = 0;
                }
                if (c == 65535) {
                    compressedStreamEOF();
                }
                this.bsBuff = (c & 255) | (this.bsBuff << 8);
                this.bsLive += 8;
            } else {
                int i3 = (this.bsBuff >> (i2 - i)) & ((1 << i) - 1);
                this.bsLive = i2 - i;
                return i3;
            }
        }
    }

    private char bsGetUChar() {
        return (char) bsR(8);
    }

    private int bsGetint() {
        return bsR(8) | (((((bsR(8) << 8) | bsR(8)) << 8) | bsR(8)) << 8);
    }

    private int bsGetIntVS(int i) {
        return bsR(i);
    }

    private int bsGetInt32() {
        return bsGetint();
    }

    private void hbCreateDecodeTables(int[] iArr, int[] iArr2, int[] iArr3, char[] cArr, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 <= i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                if (cArr[i7] == i6) {
                    iArr3[i5] = i7;
                    i5++;
                }
            }
        }
        for (int i8 = 0; i8 < 23; i8++) {
            iArr2[i8] = 0;
        }
        for (int i9 = 0; i9 < i3; i9++) {
            int i10 = cArr[i9] + 1;
            iArr2[i10] = iArr2[i10] + 1;
        }
        for (int i11 = 1; i11 < 23; i11++) {
            iArr2[i11] = iArr2[i11] + iArr2[i11 - 1];
        }
        for (int i12 = 0; i12 < 23; i12++) {
            iArr[i12] = 0;
        }
        int i13 = i;
        while (i13 <= i2) {
            int i14 = i13 + 1;
            int i15 = i4 + (iArr2[i14] - iArr2[i13]);
            iArr[i13] = i15 - 1;
            i4 = i15 << 1;
            i13 = i14;
        }
        for (int i16 = i + 1; i16 <= i2; i16++) {
            iArr2[i16] = ((iArr[i16 - 1] + 1) << 1) - iArr2[i16];
        }
    }

    private void recvDecodingTables() {
        char[][] cArr = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 6, 258);
        boolean[] zArr = new boolean[16];
        for (int i = 0; i < 16; i++) {
            if (bsR(1) == 1) {
                zArr[i] = true;
            } else {
                zArr[i] = false;
            }
        }
        for (int i2 = 0; i2 < 256; i2++) {
            this.inUse[i2] = false;
        }
        for (int i3 = 0; i3 < 16; i3++) {
            if (zArr[i3]) {
                for (int i4 = 0; i4 < 16; i4++) {
                    if (bsR(1) == 1) {
                        this.inUse[(i3 * 16) + i4] = true;
                    }
                }
            }
        }
        makeMaps();
        int i5 = this.nInUse + 2;
        int iBsR = bsR(3);
        int iBsR2 = bsR(15);
        for (int i6 = 0; i6 < iBsR2; i6++) {
            int i7 = 0;
            while (bsR(1) == 1) {
                i7++;
            }
            this.selectorMtf[i6] = (char) i7;
        }
        char[] cArr2 = new char[6];
        for (char c = 0; c < iBsR; c = (char) (c + 1)) {
            cArr2[c] = c;
        }
        for (int i8 = 0; i8 < iBsR2; i8++) {
            char c2 = this.selectorMtf[i8];
            char c3 = cArr2[c2];
            while (c2 > 0) {
                int i9 = c2 - 1;
                cArr2[c2] = cArr2[i9];
                c2 = (char) i9;
            }
            cArr2[0] = c3;
            this.selector[i8] = c3;
        }
        for (int i10 = 0; i10 < iBsR; i10++) {
            int iBsR3 = bsR(5);
            for (int i11 = 0; i11 < i5; i11++) {
                while (bsR(1) == 1) {
                    iBsR3 = bsR(1) == 0 ? iBsR3 + 1 : iBsR3 - 1;
                }
                cArr[i10][i11] = (char) iBsR3;
            }
        }
        for (int i12 = 0; i12 < iBsR; i12++) {
            char c4 = TokenParser.SP;
            char c5 = 0;
            for (int i13 = 0; i13 < i5; i13++) {
                char c6 = cArr[i12][i13];
                if (c6 > c5) {
                    c5 = c6;
                }
                if (c6 < c4) {
                    c4 = c6;
                }
            }
            hbCreateDecodeTables(this.limit[i12], this.base[i12], this.perm[i12], cArr[i12], c4, c5, i5);
            this.minLens[i12] = c4;
        }
    }

    private void getAndMoveToFrontDecode() {
        char c;
        int i;
        char c2;
        int i2;
        char c3;
        int i3;
        char c4;
        char[] cArr = new char[256];
        int i4 = this.blockSize100k * 100000;
        this.origPtr = bsGetIntVS(24);
        recvDecodingTables();
        int i5 = this.nInUse + 1;
        int i6 = 0;
        while (true) {
            c = 255;
            if (i6 > 255) {
                break;
            }
            this.unzftab[i6] = 0;
            i6++;
        }
        for (int i7 = 0; i7 <= 255; i7++) {
            cArr[i7] = (char) i7;
        }
        int i8 = -1;
        this.last = -1;
        char c5 = this.selector[0];
        int i9 = this.minLens[c5];
        int iBsR = bsR(i9);
        while (iBsR > this.limit[c5][i9]) {
            i9++;
            while (true) {
                i3 = this.bsLive;
                if (i3 < 1) {
                    try {
                        c4 = (char) this.bsStream.read();
                    } catch (IOException unused) {
                        compressedStreamEOF();
                        c4 = 0;
                    }
                    if (c4 == 65535) {
                        compressedStreamEOF();
                    }
                    this.bsBuff = (c4 & 255) | (this.bsBuff << 8);
                    this.bsLive += 8;
                }
            }
            int i10 = (this.bsBuff >> (i3 - 1)) & 1;
            this.bsLive = i3 - 1;
            iBsR = (iBsR << 1) | i10;
        }
        int i11 = this.perm[c5][iBsR - this.base[c5][i9]];
        int i12 = 49;
        int i13 = 0;
        while (i11 != i5) {
            if (i11 == 0 || i11 == 1) {
                int i14 = 1;
                int i15 = i8;
                while (true) {
                    if (i11 == 0) {
                        i15 += i14;
                    } else if (i11 == 1) {
                        i15 += i14 * 2;
                    }
                    i14 *= 2;
                    if (i12 == 0) {
                        i13++;
                        i12 = 50;
                    }
                    i12 += i8;
                    char c6 = this.selector[i13];
                    int i16 = this.minLens[c6];
                    int iBsR2 = bsR(i16);
                    while (iBsR2 > this.limit[c6][i16]) {
                        i16++;
                        while (true) {
                            i = this.bsLive;
                            if (i < 1) {
                                try {
                                    c2 = (char) this.bsStream.read();
                                } catch (IOException unused2) {
                                    compressedStreamEOF();
                                    c2 = 0;
                                }
                                if (c2 == i8) {
                                    compressedStreamEOF();
                                }
                                this.bsBuff = (this.bsBuff << 8) | (c2 & 255);
                                this.bsLive += 8;
                                i8 = -1;
                            }
                        }
                        int i17 = (this.bsBuff >> (i - 1)) & 1;
                        this.bsLive = i - 1;
                        iBsR2 = (iBsR2 << 1) | i17;
                        i8 = -1;
                    }
                    i11 = this.perm[c6][iBsR2 - this.base[c6][i16]];
                    if (i11 != 0 && i11 != 1) {
                        break;
                    } else {
                        i8 = -1;
                    }
                }
                int i18 = i15 + 1;
                char c7 = this.seqToUnseq[cArr[0]];
                int[] iArr = this.unzftab;
                iArr[c7] = iArr[c7] + i18;
                while (i18 > 0) {
                    int i19 = this.last + 1;
                    this.last = i19;
                    this.ll8[i19] = c7;
                    i18--;
                }
                if (this.last >= i4) {
                    blockOverrun();
                }
                i8 = -1;
                c = 255;
            } else {
                int i20 = this.last + 1;
                this.last = i20;
                if (i20 >= i4) {
                    blockOverrun();
                }
                int i21 = i11 - 1;
                char c8 = cArr[i21];
                int[] iArr2 = this.unzftab;
                char c9 = this.seqToUnseq[c8];
                iArr2[c9] = iArr2[c9] + 1;
                this.ll8[this.last] = c9;
                while (i21 > 3) {
                    int i22 = i21 - 1;
                    cArr[i21] = cArr[i22];
                    int i23 = i21 - 2;
                    cArr[i22] = cArr[i23];
                    int i24 = i21 - 3;
                    cArr[i23] = cArr[i24];
                    cArr[i24] = cArr[i21 - 4];
                    i21 -= 4;
                }
                while (i21 > 0) {
                    cArr[i21] = cArr[i21 - 1];
                    i21--;
                }
                cArr[0] = c8;
                if (i12 == 0) {
                    i13++;
                    i12 = 50;
                }
                i12 += i8;
                char c10 = this.selector[i13];
                int i25 = this.minLens[c10];
                int iBsR3 = bsR(i25);
                while (iBsR3 > this.limit[c10][i25]) {
                    i25++;
                    while (true) {
                        i2 = this.bsLive;
                        if (i2 < 1) {
                            try {
                                c3 = (char) this.bsStream.read();
                            } catch (IOException unused3) {
                                compressedStreamEOF();
                                c3 = 0;
                            }
                            this.bsBuff = (c3 & c) | (this.bsBuff << 8);
                            this.bsLive += 8;
                        }
                    }
                    int i26 = (this.bsBuff >> (i2 - 1)) & 1;
                    this.bsLive = i2 - 1;
                    iBsR3 = (iBsR3 << 1) | i26;
                }
                i11 = this.perm[c10][iBsR3 - this.base[c10][i25]];
            }
        }
    }

    private void setupBlock() {
        int[] iArr = new int[257];
        iArr[0] = 0;
        this.i = 1;
        while (true) {
            int i = this.i;
            if (i > 256) {
                break;
            }
            iArr[i] = this.unzftab[i - 1];
            this.i = i + 1;
        }
        this.i = 1;
        while (true) {
            int i2 = this.i;
            if (i2 > 256) {
                break;
            }
            iArr[i2] = iArr[i2] + iArr[i2 - 1];
            this.i = i2 + 1;
        }
        this.i = 0;
        while (true) {
            int i3 = this.i;
            if (i3 > this.last) {
                break;
            }
            char c = this.ll8[i3];
            this.tt[iArr[c]] = i3;
            iArr[c] = iArr[c] + 1;
            this.i = i3 + 1;
        }
        this.tPos = this.tt[this.origPtr];
        this.count = 0;
        this.i2 = 0;
        this.ch2 = 256;
        if (this.blockRandomised) {
            this.rNToGo = 0;
            this.rTPos = 0;
            setupRandPartA();
            return;
        }
        setupNoRandPartA();
    }

    private void setupRandPartA() {
        if (this.i2 <= this.last) {
            this.chPrev = this.ch2;
            char[] cArr = this.ll8;
            int i = this.tPos;
            this.ch2 = cArr[i];
            this.tPos = this.tt[i];
            if (this.rNToGo == 0) {
                int[] iArr = rNums;
                int i2 = this.rTPos;
                this.rNToGo = iArr[i2];
                int i3 = i2 + 1;
                this.rTPos = i3;
                if (i3 == 512) {
                    this.rTPos = 0;
                }
            }
            int i4 = this.rNToGo - 1;
            this.rNToGo = i4;
            int i5 = this.ch2 ^ (i4 == 1 ? 1 : 0);
            this.ch2 = i5;
            this.i2++;
            this.currentChar = i5;
            this.currentState = 3;
            this.mCrc.updateCRC(i5);
            return;
        }
        endBlock();
        initBlock();
        setupBlock();
    }

    private void setupNoRandPartA() {
        int i = this.i2;
        if (i <= this.last) {
            this.chPrev = this.ch2;
            char[] cArr = this.ll8;
            int i2 = this.tPos;
            char c = cArr[i2];
            this.ch2 = c;
            this.tPos = this.tt[i2];
            this.i2 = i + 1;
            this.currentChar = c;
            this.currentState = 6;
            this.mCrc.updateCRC(c);
            return;
        }
        endBlock();
        initBlock();
        setupBlock();
    }

    private void setupRandPartB() {
        if (this.ch2 != this.chPrev) {
            this.currentState = 2;
            this.count = 1;
            setupRandPartA();
            return;
        }
        int i = this.count + 1;
        this.count = i;
        if (i >= 4) {
            char[] cArr = this.ll8;
            int i2 = this.tPos;
            this.z = cArr[i2];
            this.tPos = this.tt[i2];
            if (this.rNToGo == 0) {
                int[] iArr = rNums;
                int i3 = this.rTPos;
                this.rNToGo = iArr[i3];
                int i4 = i3 + 1;
                this.rTPos = i4;
                if (i4 == 512) {
                    this.rTPos = 0;
                }
            }
            int i5 = this.rNToGo - 1;
            this.rNToGo = i5;
            this.z = (char) (this.z ^ (i5 != 1 ? (char) 0 : (char) 1));
            this.j2 = 0;
            this.currentState = 4;
            setupRandPartC();
            return;
        }
        this.currentState = 2;
        setupRandPartA();
    }

    private void setupRandPartC() {
        if (this.j2 < this.z) {
            int i = this.ch2;
            this.currentChar = i;
            this.mCrc.updateCRC(i);
            this.j2++;
            return;
        }
        this.currentState = 2;
        this.i2++;
        this.count = 0;
        setupRandPartA();
    }

    private void setupNoRandPartB() {
        if (this.ch2 != this.chPrev) {
            this.currentState = 5;
            this.count = 1;
            setupNoRandPartA();
            return;
        }
        int i = this.count + 1;
        this.count = i;
        if (i >= 4) {
            char[] cArr = this.ll8;
            int i2 = this.tPos;
            this.z = cArr[i2];
            this.tPos = this.tt[i2];
            this.currentState = 7;
            this.j2 = 0;
            setupNoRandPartC();
            return;
        }
        this.currentState = 5;
        setupNoRandPartA();
    }

    private void setupNoRandPartC() {
        if (this.j2 < this.z) {
            int i = this.ch2;
            this.currentChar = i;
            this.mCrc.updateCRC(i);
            this.j2++;
            return;
        }
        this.currentState = 5;
        this.i2++;
        this.count = 0;
        setupNoRandPartA();
    }

    private void setDecompressStructureSizes(int i) {
        this.blockSize100k = i;
        if (i == 0) {
            return;
        }
        int i2 = i * 100000;
        this.ll8 = new char[i2];
        this.tt = new int[i2];
    }
}
