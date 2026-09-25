package com.jcraft.jzlib;

import java.io.ByteArrayOutputStream;
import okhttp3.internal.ws.WebSocketProtocol;
import org.spongycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
final class Inflate {
    private static final int BAD = 13;
    private static final int BLOCKS = 7;
    private static final int CHECK1 = 11;
    private static final int CHECK2 = 10;
    private static final int CHECK3 = 9;
    private static final int CHECK4 = 8;
    private static final int COMMENT = 21;
    private static final int DICT0 = 6;
    private static final int DICT1 = 5;
    private static final int DICT2 = 4;
    private static final int DICT3 = 3;
    private static final int DICT4 = 2;
    private static final int DONE = 12;
    private static final int EXLEN = 18;
    private static final int EXTRA = 19;
    private static final int FLAG = 1;
    private static final int FLAGS = 23;
    private static final int HCRC = 22;
    private static final int HEAD = 14;
    static final int INFLATE_ANY = 1073741824;
    private static final int LENGTH = 15;
    private static final int MAX_WBITS = 15;
    private static final int METHOD = 0;
    private static final int NAME = 20;
    private static final int OS = 17;
    private static final int PRESET_DICT = 32;
    private static final int TIME = 16;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_DEFLATED = 8;
    private static final int Z_ERRNO = -1;
    static final int Z_FINISH = 4;
    static final int Z_FULL_FLUSH = 3;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    static final int Z_NO_FLUSH = 0;
    private static final int Z_OK = 0;
    static final int Z_PARTIAL_FLUSH = 1;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    static final int Z_SYNC_FLUSH = 2;
    private static final int Z_VERSION_ERROR = -6;
    private static byte[] mark = {0, 0, -1, -1};
    InfBlocks blocks;
    private int flags;
    int marker;
    int method;
    int mode;
    long need;
    int wbits;
    int wrap;
    private final ZStream z;
    long was = -1;
    private int need_bytes = -1;
    private byte[] crcbuf = new byte[4];
    GZIPHeader gheader = null;
    private ByteArrayOutputStream tmp_string = null;

    int inflateReset() {
        ZStream zStream = this.z;
        if (zStream == null) {
            return -2;
        }
        zStream.total_out = 0L;
        zStream.total_in = 0L;
        this.z.msg = null;
        this.mode = 14;
        this.need_bytes = -1;
        this.blocks.reset();
        return 0;
    }

    int inflateEnd() {
        InfBlocks infBlocks = this.blocks;
        if (infBlocks == null) {
            return 0;
        }
        infBlocks.free();
        return 0;
    }

    Inflate(ZStream zStream) {
        this.z = zStream;
    }

    int inflateInit(int i) {
        this.z.msg = null;
        this.blocks = null;
        this.wrap = 0;
        if (i < 0) {
            i = -i;
        } else if ((1073741824 & i) != 0) {
            this.wrap = 4;
            int i2 = (-1073741825) & i;
            i = i2 < 48 ? i & 15 : i2;
        } else {
            if ((i & (-32)) != 0) {
                this.wrap = 4;
            } else {
                this.wrap = (i >> 4) + 1;
                if (i < 48) {
                }
            }
        }
        if (i < 8 || i > 15) {
            inflateEnd();
            return -2;
        }
        this.wbits = i;
        this.blocks = new InfBlocks(this.z, 1 << i);
        inflateReset();
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0162  */
    /* JADX WARN: Code duplicated, block: B:103:0x0166  */
    /* JADX WARN: Code duplicated, block: B:110:0x017a  */
    /* JADX WARN: Code duplicated, block: B:183:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:187:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:191:0x0334  */
    /* JADX WARN: Code duplicated, block: B:195:0x036b  */
    /* JADX WARN: Code duplicated, block: B:197:0x0396  */
    /* JADX WARN: Code duplicated, block: B:200:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:201:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:202:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:208:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:225:0x0423  */
    /* JADX WARN: Code duplicated, block: B:236:0x0453 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:237:0x0454  */
    /* JADX WARN: Code duplicated, block: B:240:0x0488 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:241:0x0489  */
    /* JADX WARN: Code duplicated, block: B:244:0x04bc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:245:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:248:0x04f0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:249:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:262:0x0124 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x014b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:266:0x0172 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:270:0x00b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:298:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:299:0x011a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:300:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:301:0x0106 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:302:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:303:0x01a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:304:0x01a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x0070  */
    /* JADX WARN: Code duplicated, block: B:330:0x02c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:331:0x02fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:332:0x0333 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:333:0x036a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:335:0x0437 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x007a  */
    /* JADX WARN: Code duplicated, block: B:40:0x008b  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ed A[Catch: Return -> 0x0110, TryCatch #5 {Return -> 0x0110, blocks: (B:63:0x00e5, B:65:0x00ed, B:67:0x00fd, B:68:0x0106), top: B:268:0x00e5 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0118  */
    /* JADX WARN: Code duplicated, block: B:81:0x012c A[Catch: Return -> 0x0137, TryCatch #2 {Return -> 0x0137, blocks: (B:79:0x0124, B:81:0x012c, B:82:0x0134), top: B:262:0x0124 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x013b  */
    /* JADX WARN: Code duplicated, block: B:89:0x013f  */
    /* JADX WARN: Code duplicated, block: B:95:0x0153 A[Catch: Return -> 0x015e, TryCatch #3 {Return -> 0x015e, blocks: (B:93:0x014b, B:95:0x0153, B:96:0x015b), top: B:264:0x014b }] */
    int inflate(int i) {
        long j;
        int i2;
        int i3;
        long j2;
        GZIPHeader gZIPHeader;
        GZIPHeader gZIPHeader2;
        GZIPHeader gZIPHeader3;
        GZIPHeader gZIPHeader4;
        GZIPHeader gZIPHeader5;
        GZIPHeader gZIPHeader6;
        GZIPHeader gZIPHeader7;
        GZIPHeader gZIPHeader8;
        byte[] byteArray;
        GZIPHeader gZIPHeader9;
        GZIPHeader gZIPHeader10;
        GZIPHeader gZIPHeader11;
        ZStream zStream = this.z;
        int i4 = 0;
        if (zStream == null || zStream.next_in == null) {
            return (i == 4 && this.mode == 14) ? 0 : -2;
        }
        int bytes = -5;
        int i5 = i == 4 ? -5 : 0;
        while (true) {
            switch (this.mode) {
                case 2:
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    byte[] bArr = this.z.next_in;
                    ZStream zStream2 = this.z;
                    int i6 = zStream2.next_in_index;
                    zStream2.next_in_index = i6 + 1;
                    this.need = ((long) ((bArr[i6] & 255) << 24)) & 4278190080L;
                    this.mode = 3;
                    bytes = i5;
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j3 = this.need;
                    byte[] bArr2 = this.z.next_in;
                    ZStream zStream3 = this.z;
                    int i7 = zStream3.next_in_index;
                    zStream3.next_in_index = i7 + 1;
                    this.need = j3 + (((long) ((bArr2[i7] & 255) << 16)) & 16711680);
                    this.mode = 4;
                    bytes = i5;
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j4 = this.need;
                    byte[] bArr3 = this.z.next_in;
                    ZStream zStream4 = this.z;
                    int i8 = zStream4.next_in_index;
                    zStream4.next_in_index = i8 + 1;
                    this.need = j4 + (((long) ((bArr3[i8] & 255) << 8)) & 65280);
                    this.mode = 5;
                    if (this.z.avail_in == 0) {
                        return i5;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j5 = this.need;
                    byte[] bArr4 = this.z.next_in;
                    ZStream zStream5 = this.z;
                    int i9 = zStream5.next_in_index;
                    zStream5.next_in_index = i9 + 1;
                    this.need = j5 + (((long) bArr4[i9]) & 255);
                    this.z.adler.reset(this.need);
                    this.mode = 6;
                    return 2;
                case 3:
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j6 = this.need;
                    byte[] bArr5 = this.z.next_in;
                    ZStream zStream6 = this.z;
                    int i10 = zStream6.next_in_index;
                    zStream6.next_in_index = i10 + 1;
                    this.need = j6 + (((long) ((bArr5[i10] & 255) << 16)) & 16711680);
                    this.mode = 4;
                    bytes = i5;
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j7 = this.need;
                    byte[] bArr6 = this.z.next_in;
                    ZStream zStream7 = this.z;
                    int i11 = zStream7.next_in_index;
                    zStream7.next_in_index = i11 + 1;
                    this.need = j7 + (((long) ((bArr6[i11] & 255) << 8)) & 65280);
                    this.mode = 5;
                    if (this.z.avail_in == 0) {
                        return i5;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j8 = this.need;
                    byte[] bArr7 = this.z.next_in;
                    ZStream zStream8 = this.z;
                    int i12 = zStream8.next_in_index;
                    zStream8.next_in_index = i12 + 1;
                    this.need = j8 + (((long) bArr7[i12]) & 255);
                    this.z.adler.reset(this.need);
                    this.mode = 6;
                    return 2;
                case 4:
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j9 = this.need;
                    byte[] bArr8 = this.z.next_in;
                    ZStream zStream9 = this.z;
                    int i13 = zStream9.next_in_index;
                    zStream9.next_in_index = i13 + 1;
                    this.need = j9 + (((long) ((bArr8[i13] & 255) << 8)) & 65280);
                    this.mode = 5;
                    if (this.z.avail_in == 0) {
                        return i5;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j10 = this.need;
                    byte[] bArr9 = this.z.next_in;
                    ZStream zStream10 = this.z;
                    int i14 = zStream10.next_in_index;
                    zStream10.next_in_index = i14 + 1;
                    this.need = j10 + (((long) bArr9[i14]) & 255);
                    this.z.adler.reset(this.need);
                    this.mode = 6;
                    return 2;
                case 5:
                    i5 = bytes;
                    if (this.z.avail_in == 0) {
                        return i5;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j11 = this.need;
                    byte[] bArr10 = this.z.next_in;
                    ZStream zStream11 = this.z;
                    int i15 = zStream11.next_in_index;
                    zStream11.next_in_index = i15 + 1;
                    this.need = j11 + (((long) bArr10[i15]) & 255);
                    this.z.adler.reset(this.need);
                    this.mode = 6;
                    return 2;
                case 6:
                    this.mode = 13;
                    this.z.msg = "need dictionary";
                    this.marker = 0;
                    return -2;
                case 7:
                    bytes = this.blocks.proc(bytes);
                    if (bytes == -3) {
                        this.mode = 13;
                        this.marker = i4;
                    } else {
                        if (bytes == 0) {
                            bytes = i5;
                        }
                        if (bytes != 1) {
                            return bytes;
                        }
                        this.was = this.z.adler.getValue();
                        this.blocks.reset();
                        if (this.wrap == 0) {
                            this.mode = 12;
                            bytes = i5;
                        } else {
                            this.mode = 8;
                            bytes = i5;
                            if (this.z.avail_in == 0) {
                                return bytes;
                            }
                            this.z.avail_in--;
                            this.z.total_in++;
                            byte[] bArr11 = this.z.next_in;
                            ZStream zStream12 = this.z;
                            int i16 = zStream12.next_in_index;
                            zStream12.next_in_index = i16 + 1;
                            this.need = ((long) ((bArr11[i16] & 255) << 24)) & 4278190080L;
                            this.mode = 9;
                            bytes = i5;
                            if (this.z.avail_in == 0) {
                                return bytes;
                            }
                            this.z.avail_in--;
                            this.z.total_in++;
                            long j12 = this.need;
                            byte[] bArr12 = this.z.next_in;
                            ZStream zStream13 = this.z;
                            int i17 = zStream13.next_in_index;
                            zStream13.next_in_index = i17 + 1;
                            this.need = j12 + (((long) ((bArr12[i17] & 255) << 16)) & 16711680);
                            this.mode = 10;
                            bytes = i5;
                            if (this.z.avail_in == 0) {
                                return bytes;
                            }
                            this.z.avail_in--;
                            this.z.total_in++;
                            long j13 = this.need;
                            byte[] bArr13 = this.z.next_in;
                            ZStream zStream14 = this.z;
                            int i18 = zStream14.next_in_index;
                            zStream14.next_in_index = i18 + 1;
                            this.need = j13 + (((long) ((bArr13[i18] & 255) << 8)) & 65280);
                            this.mode = 11;
                            bytes = i5;
                            if (this.z.avail_in == 0) {
                                return bytes;
                            }
                            this.z.avail_in--;
                            this.z.total_in++;
                            long j14 = this.need;
                            byte[] bArr14 = this.z.next_in;
                            ZStream zStream15 = this.z;
                            int i19 = zStream15.next_in_index;
                            zStream15.next_in_index = i19 + 1;
                            j = j14 + (((long) bArr14[i19]) & 255);
                            this.need = j;
                            i2 = this.flags;
                            if (i2 != 0) {
                                this.need = (((j & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & BodyPartID.bodyIdMax;
                            }
                            i3 = (int) this.was;
                            j2 = this.need;
                            if (i3 != ((int) j2)) {
                                this.z.msg = "incorrect data check";
                            } else if (i2 != 0 && (gZIPHeader = this.gheader) != null) {
                                gZIPHeader.crc = j2;
                            }
                            this.mode = 15;
                            bytes = i5;
                            if (this.wrap == 0 && this.flags != 0) {
                                try {
                                    bytes = readBytes(4, bytes, i5);
                                    if (this.z.msg != null && this.z.msg.equals("incorrect data check")) {
                                        this.mode = 13;
                                        this.marker = 5;
                                    } else if (this.need != (this.z.total_out & BodyPartID.bodyIdMax)) {
                                        this.z.msg = "incorrect length check";
                                        this.mode = 13;
                                    } else {
                                        this.z.msg = null;
                                        this.mode = 12;
                                        return 1;
                                    }
                                    i4 = 0;
                                } catch (Return e) {
                                    return e.r;
                                }
                            } else if (this.z.msg == null && this.z.msg.equals("incorrect data check")) {
                                this.mode = 13;
                                this.marker = 5;
                                i4 = 0;
                            } else {
                                this.mode = 12;
                                return 1;
                            }
                        }
                    }
                    break;
                case 8:
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    byte[] bArr15 = this.z.next_in;
                    ZStream zStream16 = this.z;
                    int i110 = zStream16.next_in_index;
                    zStream16.next_in_index = i110 + 1;
                    this.need = ((long) ((bArr15[i110] & 255) << 24)) & 4278190080L;
                    this.mode = 9;
                    bytes = i5;
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j15 = this.need;
                    byte[] bArr16 = this.z.next_in;
                    ZStream zStream17 = this.z;
                    int i111 = zStream17.next_in_index;
                    zStream17.next_in_index = i111 + 1;
                    this.need = j15 + (((long) ((bArr16[i111] & 255) << 16)) & 16711680);
                    this.mode = 10;
                    bytes = i5;
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j16 = this.need;
                    byte[] bArr17 = this.z.next_in;
                    ZStream zStream18 = this.z;
                    int i112 = zStream18.next_in_index;
                    zStream18.next_in_index = i112 + 1;
                    this.need = j16 + (((long) ((bArr17[i112] & 255) << 8)) & 65280);
                    this.mode = 11;
                    bytes = i5;
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j17 = this.need;
                    byte[] bArr18 = this.z.next_in;
                    ZStream zStream19 = this.z;
                    int i113 = zStream19.next_in_index;
                    zStream19.next_in_index = i113 + 1;
                    j = j17 + (((long) bArr18[i113]) & 255);
                    this.need = j;
                    i2 = this.flags;
                    if (i2 != 0) {
                        this.need = (((j & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & BodyPartID.bodyIdMax;
                    }
                    i3 = (int) this.was;
                    j2 = this.need;
                    if (i3 != ((int) j2)) {
                        this.z.msg = "incorrect data check";
                    } else if (i2 != 0) {
                        gZIPHeader.crc = j2;
                    }
                    this.mode = 15;
                    bytes = i5;
                    if (this.wrap == 0) {
                        break;
                    }
                    if (this.z.msg == null) {
                    }
                    this.mode = 12;
                    return 1;
                case 9:
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j18 = this.need;
                    byte[] bArr19 = this.z.next_in;
                    ZStream zStream110 = this.z;
                    int i114 = zStream110.next_in_index;
                    zStream110.next_in_index = i114 + 1;
                    this.need = j18 + (((long) ((bArr19[i114] & 255) << 16)) & 16711680);
                    this.mode = 10;
                    bytes = i5;
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j19 = this.need;
                    byte[] bArr110 = this.z.next_in;
                    ZStream zStream111 = this.z;
                    int i115 = zStream111.next_in_index;
                    zStream111.next_in_index = i115 + 1;
                    this.need = j19 + (((long) ((bArr110[i115] & 255) << 8)) & 65280);
                    this.mode = 11;
                    bytes = i5;
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j110 = this.need;
                    byte[] bArr111 = this.z.next_in;
                    ZStream zStream112 = this.z;
                    int i116 = zStream112.next_in_index;
                    zStream112.next_in_index = i116 + 1;
                    j = j110 + (((long) bArr111[i116]) & 255);
                    this.need = j;
                    i2 = this.flags;
                    if (i2 != 0) {
                        this.need = (((j & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & BodyPartID.bodyIdMax;
                    }
                    i3 = (int) this.was;
                    j2 = this.need;
                    if (i3 != ((int) j2)) {
                        this.z.msg = "incorrect data check";
                    } else if (i2 != 0) {
                        gZIPHeader.crc = j2;
                    }
                    this.mode = 15;
                    bytes = i5;
                    if (this.wrap == 0) {
                        break;
                    }
                    if (this.z.msg == null) {
                    }
                    this.mode = 12;
                    return 1;
                case 10:
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j111 = this.need;
                    byte[] bArr112 = this.z.next_in;
                    ZStream zStream113 = this.z;
                    int i117 = zStream113.next_in_index;
                    zStream113.next_in_index = i117 + 1;
                    this.need = j111 + (((long) ((bArr112[i117] & 255) << 8)) & 65280);
                    this.mode = 11;
                    bytes = i5;
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j112 = this.need;
                    byte[] bArr113 = this.z.next_in;
                    ZStream zStream114 = this.z;
                    int i118 = zStream114.next_in_index;
                    zStream114.next_in_index = i118 + 1;
                    j = j112 + (((long) bArr113[i118]) & 255);
                    this.need = j;
                    i2 = this.flags;
                    if (i2 != 0) {
                        this.need = (((j & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & BodyPartID.bodyIdMax;
                    }
                    i3 = (int) this.was;
                    j2 = this.need;
                    if (i3 != ((int) j2)) {
                        this.z.msg = "incorrect data check";
                    } else if (i2 != 0) {
                        gZIPHeader.crc = j2;
                    }
                    this.mode = 15;
                    bytes = i5;
                    if (this.wrap == 0) {
                        break;
                    }
                    if (this.z.msg == null) {
                    }
                    this.mode = 12;
                    return 1;
                case 11:
                    if (this.z.avail_in == 0) {
                        return bytes;
                    }
                    this.z.avail_in--;
                    this.z.total_in++;
                    long j113 = this.need;
                    byte[] bArr114 = this.z.next_in;
                    ZStream zStream115 = this.z;
                    int i119 = zStream115.next_in_index;
                    zStream115.next_in_index = i119 + 1;
                    j = j113 + (((long) bArr114[i119]) & 255);
                    this.need = j;
                    i2 = this.flags;
                    if (i2 != 0) {
                        this.need = (((j & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 24) | (((-16777216) & j) >> 24) | ((j & 16711680) >> 8) | ((j & 65280) << 8)) & BodyPartID.bodyIdMax;
                    }
                    i3 = (int) this.was;
                    j2 = this.need;
                    if (i3 != ((int) j2)) {
                        this.z.msg = "incorrect data check";
                    } else if (i2 != 0) {
                        gZIPHeader.crc = j2;
                    }
                    this.mode = 15;
                    bytes = i5;
                    if (this.wrap == 0) {
                        break;
                    }
                    if (this.z.msg == null) {
                    }
                    this.mode = 12;
                    return 1;
                case 12:
                    return 1;
                case 13:
                    return -3;
                case 14:
                    if (this.wrap == 0) {
                        this.mode = 7;
                    } else {
                        try {
                            bytes = readBytes(2, bytes, i5);
                            int i20 = this.wrap;
                            if ((i20 == 4 || (i20 & 2) != 0) && this.need == 35615) {
                                if (i20 == 4) {
                                    this.wrap = 2;
                                }
                                this.z.adler = new CRC32();
                                checksum(2, this.need);
                                if (this.gheader == null) {
                                    this.gheader = new GZIPHeader();
                                }
                                this.mode = 23;
                            } else if ((i20 & 2) != 0) {
                                this.mode = 13;
                                this.z.msg = "incorrect header check";
                            } else {
                                this.flags = i4;
                                long j20 = this.need;
                                int i21 = (int) j20;
                                int i22 = i21 & 255;
                                this.method = i22;
                                int i23 = (int) (j20 >> 8);
                                int i24 = i23 & 255;
                                if (((i20 & 1) == 0 || ((i22 << 8) + i24) % 31 != 0) && (i21 & 15) != 8) {
                                    if (i20 == 4) {
                                        this.z.next_in_index -= 2;
                                        this.z.avail_in += 2;
                                        this.z.total_in -= 2;
                                        this.wrap = i4;
                                        this.mode = 7;
                                    } else {
                                        this.mode = 13;
                                        this.z.msg = "incorrect header check";
                                    }
                                } else if ((i21 & 15) != 8) {
                                    this.mode = 13;
                                    this.z.msg = "unknown compression method";
                                } else {
                                    if (i20 == 4) {
                                        this.wrap = 1;
                                    }
                                    if ((i22 >> 4) + 8 > this.wbits) {
                                        this.mode = 13;
                                        this.z.msg = "invalid window size";
                                    } else {
                                        this.z.adler = new Adler32();
                                        if ((i23 & 32) == 0) {
                                            this.mode = 7;
                                        } else {
                                            this.mode = 2;
                                            if (this.z.avail_in == 0) {
                                                return bytes;
                                            }
                                            this.z.avail_in--;
                                            this.z.total_in++;
                                            byte[] bArr20 = this.z.next_in;
                                            ZStream zStream20 = this.z;
                                            int i25 = zStream20.next_in_index;
                                            zStream20.next_in_index = i25 + 1;
                                            this.need = ((long) ((bArr20[i25] & 255) << 24)) & 4278190080L;
                                            this.mode = 3;
                                            bytes = i5;
                                            if (this.z.avail_in == 0) {
                                                return bytes;
                                            }
                                            this.z.avail_in--;
                                            this.z.total_in++;
                                            long j21 = this.need;
                                            byte[] bArr21 = this.z.next_in;
                                            ZStream zStream21 = this.z;
                                            int i120 = zStream21.next_in_index;
                                            zStream21.next_in_index = i120 + 1;
                                            this.need = j21 + (((long) ((bArr21[i120] & 255) << 16)) & 16711680);
                                            this.mode = 4;
                                            bytes = i5;
                                            if (this.z.avail_in == 0) {
                                                return bytes;
                                            }
                                            this.z.avail_in--;
                                            this.z.total_in++;
                                            long j22 = this.need;
                                            byte[] bArr22 = this.z.next_in;
                                            ZStream zStream22 = this.z;
                                            int i121 = zStream22.next_in_index;
                                            zStream22.next_in_index = i121 + 1;
                                            this.need = j22 + (((long) ((bArr22[i121] & 255) << 8)) & 65280);
                                            this.mode = 5;
                                            if (this.z.avail_in == 0) {
                                                return i5;
                                            }
                                            this.z.avail_in--;
                                            this.z.total_in++;
                                            long j114 = this.need;
                                            byte[] bArr115 = this.z.next_in;
                                            ZStream zStream116 = this.z;
                                            int i122 = zStream116.next_in_index;
                                            zStream116.next_in_index = i122 + 1;
                                            this.need = j114 + (((long) bArr115[i122]) & 255);
                                            this.z.adler.reset(this.need);
                                            this.mode = 6;
                                            return 2;
                                        }
                                    }
                                }
                            }
                        } catch (Return e2) {
                            return e2.r;
                        }
                    }
                    break;
                case 15:
                    if (this.wrap == 0) {
                        break;
                    }
                    if (this.z.msg == null) {
                    }
                    this.mode = 12;
                    return 1;
                case 16:
                    try {
                        bytes = readBytes(4, bytes, i5);
                        gZIPHeader2 = this.gheader;
                        if (gZIPHeader2 != null) {
                            gZIPHeader2.time = this.need;
                        }
                        if ((this.flags & 512) != 0) {
                            checksum(4, this.need);
                        }
                        this.mode = 17;
                        try {
                            bytes = readBytes(2, bytes, i5);
                            gZIPHeader11 = this.gheader;
                            if (gZIPHeader11 != null) {
                                gZIPHeader11.xflags = ((int) this.need) & 255;
                                this.gheader.os = (((int) this.need) >> 8) & 255;
                            }
                            if ((this.flags & 512) != 0) {
                                checksum(2, this.need);
                            }
                            this.mode = 18;
                            if ((this.flags & 1024) != 0) {
                                try {
                                    bytes = readBytes(2, bytes, i5);
                                    gZIPHeader9 = this.gheader;
                                    if (gZIPHeader9 != null) {
                                        gZIPHeader9.extra = new byte[((int) this.need) & 65535];
                                    }
                                    if ((this.flags & 512) != 0) {
                                        checksum(2, this.need);
                                    }
                                } catch (Return e3) {
                                    return e3.r;
                                }
                            } else {
                                gZIPHeader10 = this.gheader;
                                if (gZIPHeader10 != null) {
                                    gZIPHeader10.extra = null;
                                }
                            }
                            this.mode = 19;
                            if ((this.flags & 1024) != 0) {
                                try {
                                    bytes = readBytes(bytes, i5);
                                    if (this.gheader != null) {
                                        byteArray = this.tmp_string.toByteArray();
                                        this.tmp_string = null;
                                        if (byteArray.length == this.gheader.extra.length) {
                                            System.arraycopy(byteArray, i4, this.gheader.extra, i4, byteArray.length);
                                        } else {
                                            this.z.msg = "bad extra field length";
                                            this.mode = 13;
                                        }
                                        break;
                                    }
                                } catch (Return e4) {
                                    return e4.r;
                                }
                            } else {
                                gZIPHeader8 = this.gheader;
                                if (gZIPHeader8 != null) {
                                    gZIPHeader8.extra = null;
                                }
                            }
                            this.mode = 20;
                            if ((this.flags & 2048) != 0) {
                                try {
                                    bytes = readString(bytes, i5);
                                    gZIPHeader6 = this.gheader;
                                    if (gZIPHeader6 != null) {
                                        gZIPHeader6.name = this.tmp_string.toByteArray();
                                    }
                                    this.tmp_string = null;
                                } catch (Return e5) {
                                    return e5.r;
                                }
                            } else {
                                gZIPHeader7 = this.gheader;
                                if (gZIPHeader7 != null) {
                                    gZIPHeader7.name = null;
                                }
                            }
                            this.mode = 21;
                            if ((this.flags & 4096) != 0) {
                                try {
                                    bytes = readString(bytes, i5);
                                    gZIPHeader4 = this.gheader;
                                    if (gZIPHeader4 != null) {
                                        gZIPHeader4.comment = this.tmp_string.toByteArray();
                                    }
                                    this.tmp_string = null;
                                } catch (Return e6) {
                                    return e6.r;
                                }
                            } else {
                                gZIPHeader5 = this.gheader;
                                if (gZIPHeader5 != null) {
                                    gZIPHeader5.comment = null;
                                }
                            }
                            this.mode = 22;
                            if ((this.flags & 512) != 0) {
                                try {
                                    bytes = readBytes(2, bytes, i5);
                                    gZIPHeader3 = this.gheader;
                                    if (gZIPHeader3 != null) {
                                        gZIPHeader3.hcrc = (int) (this.need & WebSocketProtocol.PAYLOAD_SHORT_MAX);
                                    }
                                    if (this.need != (WebSocketProtocol.PAYLOAD_SHORT_MAX & this.z.adler.getValue())) {
                                        this.mode = 13;
                                        this.z.msg = "header crc mismatch";
                                        this.marker = 5;
                                    }
                                } catch (Return e7) {
                                    return e7.r;
                                }
                                break;
                            }
                            this.z.adler = new CRC32();
                            this.mode = 7;
                        } catch (Return e8) {
                            return e8.r;
                        }
                    } catch (Return e9) {
                        return e9.r;
                    }
                    break;
                case 17:
                    bytes = readBytes(2, bytes, i5);
                    gZIPHeader11 = this.gheader;
                    if (gZIPHeader11 != null) {
                        gZIPHeader11.xflags = ((int) this.need) & 255;
                        this.gheader.os = (((int) this.need) >> 8) & 255;
                    }
                    if ((this.flags & 512) != 0) {
                        checksum(2, this.need);
                    }
                    this.mode = 18;
                    if ((this.flags & 1024) != 0) {
                        bytes = readBytes(2, bytes, i5);
                        gZIPHeader9 = this.gheader;
                        if (gZIPHeader9 != null) {
                            gZIPHeader9.extra = new byte[((int) this.need) & 65535];
                        }
                        if ((this.flags & 512) != 0) {
                            checksum(2, this.need);
                        }
                    } else {
                        gZIPHeader10 = this.gheader;
                        if (gZIPHeader10 != null) {
                            gZIPHeader10.extra = null;
                        }
                    }
                    this.mode = 19;
                    if ((this.flags & 1024) != 0) {
                        bytes = readBytes(bytes, i5);
                        if (this.gheader != null) {
                            byteArray = this.tmp_string.toByteArray();
                            this.tmp_string = null;
                            if (byteArray.length == this.gheader.extra.length) {
                                System.arraycopy(byteArray, i4, this.gheader.extra, i4, byteArray.length);
                            } else {
                                this.z.msg = "bad extra field length";
                                this.mode = 13;
                            }
                            break;
                        }
                    } else {
                        gZIPHeader8 = this.gheader;
                        if (gZIPHeader8 != null) {
                            gZIPHeader8.extra = null;
                        }
                    }
                    this.mode = 20;
                    if ((this.flags & 2048) != 0) {
                        bytes = readString(bytes, i5);
                        gZIPHeader6 = this.gheader;
                        if (gZIPHeader6 != null) {
                            gZIPHeader6.name = this.tmp_string.toByteArray();
                        }
                        this.tmp_string = null;
                    } else {
                        gZIPHeader7 = this.gheader;
                        if (gZIPHeader7 != null) {
                            gZIPHeader7.name = null;
                        }
                    }
                    this.mode = 21;
                    if ((this.flags & 4096) != 0) {
                        bytes = readString(bytes, i5);
                        gZIPHeader4 = this.gheader;
                        if (gZIPHeader4 != null) {
                            gZIPHeader4.comment = this.tmp_string.toByteArray();
                        }
                        this.tmp_string = null;
                    } else {
                        gZIPHeader5 = this.gheader;
                        if (gZIPHeader5 != null) {
                            gZIPHeader5.comment = null;
                        }
                    }
                    this.mode = 22;
                    if ((this.flags & 512) != 0) {
                        bytes = readBytes(2, bytes, i5);
                        gZIPHeader3 = this.gheader;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.hcrc = (int) (this.need & WebSocketProtocol.PAYLOAD_SHORT_MAX);
                        }
                        if (this.need != (WebSocketProtocol.PAYLOAD_SHORT_MAX & this.z.adler.getValue())) {
                            this.mode = 13;
                            this.z.msg = "header crc mismatch";
                            this.marker = 5;
                        }
                        break;
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 18:
                    if ((this.flags & 1024) != 0) {
                        bytes = readBytes(2, bytes, i5);
                        gZIPHeader9 = this.gheader;
                        if (gZIPHeader9 != null) {
                            gZIPHeader9.extra = new byte[((int) this.need) & 65535];
                        }
                        if ((this.flags & 512) != 0) {
                            checksum(2, this.need);
                        }
                    } else {
                        gZIPHeader10 = this.gheader;
                        if (gZIPHeader10 != null) {
                            gZIPHeader10.extra = null;
                        }
                    }
                    this.mode = 19;
                    if ((this.flags & 1024) != 0) {
                        bytes = readBytes(bytes, i5);
                        if (this.gheader != null) {
                            byteArray = this.tmp_string.toByteArray();
                            this.tmp_string = null;
                            if (byteArray.length == this.gheader.extra.length) {
                                System.arraycopy(byteArray, i4, this.gheader.extra, i4, byteArray.length);
                            } else {
                                this.z.msg = "bad extra field length";
                                this.mode = 13;
                            }
                            break;
                        }
                    } else {
                        gZIPHeader8 = this.gheader;
                        if (gZIPHeader8 != null) {
                            gZIPHeader8.extra = null;
                        }
                    }
                    this.mode = 20;
                    if ((this.flags & 2048) != 0) {
                        bytes = readString(bytes, i5);
                        gZIPHeader6 = this.gheader;
                        if (gZIPHeader6 != null) {
                            gZIPHeader6.name = this.tmp_string.toByteArray();
                        }
                        this.tmp_string = null;
                    } else {
                        gZIPHeader7 = this.gheader;
                        if (gZIPHeader7 != null) {
                            gZIPHeader7.name = null;
                        }
                    }
                    this.mode = 21;
                    if ((this.flags & 4096) != 0) {
                        bytes = readString(bytes, i5);
                        gZIPHeader4 = this.gheader;
                        if (gZIPHeader4 != null) {
                            gZIPHeader4.comment = this.tmp_string.toByteArray();
                        }
                        this.tmp_string = null;
                    } else {
                        gZIPHeader5 = this.gheader;
                        if (gZIPHeader5 != null) {
                            gZIPHeader5.comment = null;
                        }
                    }
                    this.mode = 22;
                    if ((this.flags & 512) != 0) {
                        bytes = readBytes(2, bytes, i5);
                        gZIPHeader3 = this.gheader;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.hcrc = (int) (this.need & WebSocketProtocol.PAYLOAD_SHORT_MAX);
                        }
                        if (this.need != (WebSocketProtocol.PAYLOAD_SHORT_MAX & this.z.adler.getValue())) {
                            this.mode = 13;
                            this.z.msg = "header crc mismatch";
                            this.marker = 5;
                        }
                        break;
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 19:
                    if ((this.flags & 1024) != 0) {
                        bytes = readBytes(bytes, i5);
                        if (this.gheader != null) {
                            byteArray = this.tmp_string.toByteArray();
                            this.tmp_string = null;
                            if (byteArray.length == this.gheader.extra.length) {
                                System.arraycopy(byteArray, i4, this.gheader.extra, i4, byteArray.length);
                            } else {
                                this.z.msg = "bad extra field length";
                                this.mode = 13;
                            }
                            break;
                        }
                    } else {
                        gZIPHeader8 = this.gheader;
                        if (gZIPHeader8 != null) {
                            gZIPHeader8.extra = null;
                        }
                    }
                    this.mode = 20;
                    if ((this.flags & 2048) != 0) {
                        bytes = readString(bytes, i5);
                        gZIPHeader6 = this.gheader;
                        if (gZIPHeader6 != null) {
                            gZIPHeader6.name = this.tmp_string.toByteArray();
                        }
                        this.tmp_string = null;
                    } else {
                        gZIPHeader7 = this.gheader;
                        if (gZIPHeader7 != null) {
                            gZIPHeader7.name = null;
                        }
                    }
                    this.mode = 21;
                    if ((this.flags & 4096) != 0) {
                        bytes = readString(bytes, i5);
                        gZIPHeader4 = this.gheader;
                        if (gZIPHeader4 != null) {
                            gZIPHeader4.comment = this.tmp_string.toByteArray();
                        }
                        this.tmp_string = null;
                    } else {
                        gZIPHeader5 = this.gheader;
                        if (gZIPHeader5 != null) {
                            gZIPHeader5.comment = null;
                        }
                    }
                    this.mode = 22;
                    if ((this.flags & 512) != 0) {
                        bytes = readBytes(2, bytes, i5);
                        gZIPHeader3 = this.gheader;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.hcrc = (int) (this.need & WebSocketProtocol.PAYLOAD_SHORT_MAX);
                        }
                        if (this.need != (WebSocketProtocol.PAYLOAD_SHORT_MAX & this.z.adler.getValue())) {
                            this.mode = 13;
                            this.z.msg = "header crc mismatch";
                            this.marker = 5;
                        }
                        break;
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 20:
                    if ((this.flags & 2048) != 0) {
                        bytes = readString(bytes, i5);
                        gZIPHeader6 = this.gheader;
                        if (gZIPHeader6 != null) {
                            gZIPHeader6.name = this.tmp_string.toByteArray();
                        }
                        this.tmp_string = null;
                    } else {
                        gZIPHeader7 = this.gheader;
                        if (gZIPHeader7 != null) {
                            gZIPHeader7.name = null;
                        }
                    }
                    this.mode = 21;
                    if ((this.flags & 4096) != 0) {
                        bytes = readString(bytes, i5);
                        gZIPHeader4 = this.gheader;
                        if (gZIPHeader4 != null) {
                            gZIPHeader4.comment = this.tmp_string.toByteArray();
                        }
                        this.tmp_string = null;
                    } else {
                        gZIPHeader5 = this.gheader;
                        if (gZIPHeader5 != null) {
                            gZIPHeader5.comment = null;
                        }
                    }
                    this.mode = 22;
                    if ((this.flags & 512) != 0) {
                        bytes = readBytes(2, bytes, i5);
                        gZIPHeader3 = this.gheader;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.hcrc = (int) (this.need & WebSocketProtocol.PAYLOAD_SHORT_MAX);
                        }
                        if (this.need != (WebSocketProtocol.PAYLOAD_SHORT_MAX & this.z.adler.getValue())) {
                            this.mode = 13;
                            this.z.msg = "header crc mismatch";
                            this.marker = 5;
                        }
                        break;
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 21:
                    if ((this.flags & 4096) != 0) {
                        bytes = readString(bytes, i5);
                        gZIPHeader4 = this.gheader;
                        if (gZIPHeader4 != null) {
                            gZIPHeader4.comment = this.tmp_string.toByteArray();
                        }
                        this.tmp_string = null;
                    } else {
                        gZIPHeader5 = this.gheader;
                        if (gZIPHeader5 != null) {
                            gZIPHeader5.comment = null;
                        }
                    }
                    this.mode = 22;
                    if ((this.flags & 512) != 0) {
                        bytes = readBytes(2, bytes, i5);
                        gZIPHeader3 = this.gheader;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.hcrc = (int) (this.need & WebSocketProtocol.PAYLOAD_SHORT_MAX);
                        }
                        if (this.need != (WebSocketProtocol.PAYLOAD_SHORT_MAX & this.z.adler.getValue())) {
                            this.mode = 13;
                            this.z.msg = "header crc mismatch";
                            this.marker = 5;
                        }
                        break;
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 22:
                    if ((this.flags & 512) != 0) {
                        bytes = readBytes(2, bytes, i5);
                        gZIPHeader3 = this.gheader;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.hcrc = (int) (this.need & WebSocketProtocol.PAYLOAD_SHORT_MAX);
                        }
                        if (this.need != (WebSocketProtocol.PAYLOAD_SHORT_MAX & this.z.adler.getValue())) {
                            this.mode = 13;
                            this.z.msg = "header crc mismatch";
                            this.marker = 5;
                        }
                        break;
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 23:
                    try {
                        bytes = readBytes(2, bytes, i5);
                        long j23 = this.need;
                        int i26 = (int) j23;
                        this.flags = i26 & 65535;
                        if ((i26 & 255) != 8) {
                            this.z.msg = "unknown compression method";
                            this.mode = 13;
                        } else if ((57344 & i26) != 0) {
                            this.z.msg = "unknown header flags set";
                            this.mode = 13;
                        } else {
                            if ((i26 & 512) != 0) {
                                checksum(2, j23);
                            }
                            this.mode = 16;
                            bytes = readBytes(4, bytes, i5);
                            gZIPHeader2 = this.gheader;
                            if (gZIPHeader2 != null) {
                                gZIPHeader2.time = this.need;
                            }
                            if ((this.flags & 512) != 0) {
                                checksum(4, this.need);
                            }
                            this.mode = 17;
                            bytes = readBytes(2, bytes, i5);
                            gZIPHeader11 = this.gheader;
                            if (gZIPHeader11 != null) {
                                gZIPHeader11.xflags = ((int) this.need) & 255;
                                this.gheader.os = (((int) this.need) >> 8) & 255;
                            }
                            if ((this.flags & 512) != 0) {
                                checksum(2, this.need);
                            }
                            this.mode = 18;
                            if ((this.flags & 1024) != 0) {
                                bytes = readBytes(2, bytes, i5);
                                gZIPHeader9 = this.gheader;
                                if (gZIPHeader9 != null) {
                                    gZIPHeader9.extra = new byte[((int) this.need) & 65535];
                                }
                                if ((this.flags & 512) != 0) {
                                    checksum(2, this.need);
                                }
                            } else {
                                gZIPHeader10 = this.gheader;
                                if (gZIPHeader10 != null) {
                                    gZIPHeader10.extra = null;
                                }
                            }
                            this.mode = 19;
                            if ((this.flags & 1024) != 0) {
                                bytes = readBytes(bytes, i5);
                                if (this.gheader != null) {
                                    byteArray = this.tmp_string.toByteArray();
                                    this.tmp_string = null;
                                    if (byteArray.length == this.gheader.extra.length) {
                                        System.arraycopy(byteArray, i4, this.gheader.extra, i4, byteArray.length);
                                    } else {
                                        this.z.msg = "bad extra field length";
                                        this.mode = 13;
                                    }
                                }
                            } else {
                                gZIPHeader8 = this.gheader;
                                if (gZIPHeader8 != null) {
                                    gZIPHeader8.extra = null;
                                }
                            }
                            this.mode = 20;
                            if ((this.flags & 2048) != 0) {
                                bytes = readString(bytes, i5);
                                gZIPHeader6 = this.gheader;
                                if (gZIPHeader6 != null) {
                                    gZIPHeader6.name = this.tmp_string.toByteArray();
                                }
                                this.tmp_string = null;
                            } else {
                                gZIPHeader7 = this.gheader;
                                if (gZIPHeader7 != null) {
                                    gZIPHeader7.name = null;
                                }
                            }
                            this.mode = 21;
                            if ((this.flags & 4096) != 0) {
                                bytes = readString(bytes, i5);
                                gZIPHeader4 = this.gheader;
                                if (gZIPHeader4 != null) {
                                    gZIPHeader4.comment = this.tmp_string.toByteArray();
                                }
                                this.tmp_string = null;
                            } else {
                                gZIPHeader5 = this.gheader;
                                if (gZIPHeader5 != null) {
                                    gZIPHeader5.comment = null;
                                }
                            }
                            this.mode = 22;
                            if ((this.flags & 512) != 0) {
                                bytes = readBytes(2, bytes, i5);
                                gZIPHeader3 = this.gheader;
                                if (gZIPHeader3 != null) {
                                    gZIPHeader3.hcrc = (int) (this.need & WebSocketProtocol.PAYLOAD_SHORT_MAX);
                                }
                                if (this.need != (WebSocketProtocol.PAYLOAD_SHORT_MAX & this.z.adler.getValue())) {
                                    this.mode = 13;
                                    this.z.msg = "header crc mismatch";
                                    this.marker = 5;
                                }
                            }
                            this.z.adler = new CRC32();
                            this.mode = 7;
                        }
                    } catch (Return e10) {
                        return e10.r;
                    }
                    break;
                default:
                    return -2;
            }
        }
    }

    int inflateSetDictionary(byte[] bArr, int i) {
        int i2;
        int i3;
        ZStream zStream = this.z;
        if (zStream == null) {
            return -2;
        }
        int i4 = this.mode;
        if (i4 != 6 && this.wrap != 0) {
            return -2;
        }
        if (i4 == 6) {
            long value = zStream.adler.getValue();
            this.z.adler.reset();
            this.z.adler.update(bArr, 0, i);
            if (this.z.adler.getValue() != value) {
                return -3;
            }
        }
        this.z.adler.reset();
        int i5 = this.wbits;
        if (i >= (1 << i5)) {
            i2 = (1 << i5) - 1;
            i3 = i - i2;
        } else {
            i2 = i;
            i3 = 0;
        }
        this.blocks.set_dictionary(bArr, i3, i2);
        this.mode = 7;
        return 0;
    }

    int inflateSync() {
        ZStream zStream = this.z;
        if (zStream == null) {
            return -2;
        }
        if (this.mode != 13) {
            this.mode = 13;
            this.marker = 0;
        }
        int i = zStream.avail_in;
        if (i == 0) {
            return -5;
        }
        int i2 = this.z.next_in_index;
        int i3 = this.marker;
        while (i != 0 && i3 < 4) {
            if (this.z.next_in[i2] == mark[i3]) {
                i3++;
            } else {
                i3 = this.z.next_in[i2] != 0 ? 0 : 4 - i3;
            }
            i2++;
            i--;
        }
        this.z.total_in += (long) (i2 - this.z.next_in_index);
        this.z.next_in_index = i2;
        this.z.avail_in = i;
        this.marker = i3;
        if (i3 != 4) {
            return -3;
        }
        long j = this.z.total_in;
        long j2 = this.z.total_out;
        inflateReset();
        this.z.total_in = j;
        this.z.total_out = j2;
        this.mode = 7;
        return 0;
    }

    int inflateSyncPoint() {
        InfBlocks infBlocks;
        if (this.z == null || (infBlocks = this.blocks) == null) {
            return -2;
        }
        return infBlocks.sync_point();
    }

    private int readBytes(int i, int i2, int i3) throws Return {
        if (this.need_bytes == -1) {
            this.need_bytes = i;
            this.need = 0L;
        }
        while (this.need_bytes > 0) {
            if (this.z.avail_in == 0) {
                throw new Return(i2);
            }
            this.z.avail_in--;
            this.z.total_in++;
            long j = this.need;
            byte[] bArr = this.z.next_in;
            ZStream zStream = this.z;
            int i4 = zStream.next_in_index;
            zStream.next_in_index = i4 + 1;
            int i5 = bArr[i4] & 255;
            int i6 = this.need_bytes;
            this.need = j | ((long) (i5 << ((i - i6) * 8)));
            this.need_bytes = i6 - 1;
            i2 = i3;
        }
        if (i == 2) {
            this.need &= WebSocketProtocol.PAYLOAD_SHORT_MAX;
        } else if (i == 4) {
            this.need &= BodyPartID.bodyIdMax;
        }
        this.need_bytes = -1;
        return i2;
    }

    class Return extends Exception {
        int r;

        Return(int i) {
            this.r = i;
        }
    }

    private int readString(int i, int i2) throws Return {
        if (this.tmp_string == null) {
            this.tmp_string = new ByteArrayOutputStream();
        }
        while (this.z.avail_in != 0) {
            this.z.avail_in--;
            this.z.total_in++;
            byte b = this.z.next_in[this.z.next_in_index];
            if (b != 0) {
                this.tmp_string.write(this.z.next_in, this.z.next_in_index, 1);
            }
            this.z.adler.update(this.z.next_in, this.z.next_in_index, 1);
            this.z.next_in_index++;
            if (b == 0) {
                return i2;
            }
            i = i2;
        }
        throw new Return(i);
    }

    private int readBytes(int i, int i2) throws Return {
        if (this.tmp_string == null) {
            this.tmp_string = new ByteArrayOutputStream();
        }
        while (this.need > 0) {
            if (this.z.avail_in == 0) {
                throw new Return(i);
            }
            this.z.avail_in--;
            this.z.total_in++;
            byte b = this.z.next_in[this.z.next_in_index];
            this.tmp_string.write(this.z.next_in, this.z.next_in_index, 1);
            this.z.adler.update(this.z.next_in, this.z.next_in_index, 1);
            this.z.next_in_index++;
            this.need--;
            i = i2;
        }
        return i;
    }

    private void checksum(int i, long j) {
        for (int i2 = 0; i2 < i; i2++) {
            this.crcbuf[i2] = (byte) (255 & j);
            j >>= 8;
        }
        this.z.adler.update(this.crcbuf, 0, i);
    }

    public GZIPHeader getGZIPHeader() {
        return this.gheader;
    }

    boolean inParsingHeader() {
        int i = this.mode;
        if (i == 2 || i == 3 || i == 4 || i == 5 || i == 14) {
            return true;
        }
        switch (i) {
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return true;
            default:
                return false;
        }
    }
}
