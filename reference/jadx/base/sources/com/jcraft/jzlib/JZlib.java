package com.jcraft.jzlib;

/* JADX INFO: loaded from: classes2.dex */
public final class JZlib {
    public static final int DEF_WBITS = 15;
    public static final int MAX_WBITS = 15;
    public static final byte Z_ASCII = 1;
    public static final int Z_BEST_COMPRESSION = 9;
    public static final int Z_BEST_SPEED = 1;
    public static final byte Z_BINARY = 0;
    public static final int Z_BUF_ERROR = -5;
    public static final int Z_DATA_ERROR = -3;
    public static final int Z_DEFAULT_COMPRESSION = -1;
    public static final int Z_DEFAULT_STRATEGY = 0;
    public static final int Z_ERRNO = -1;
    public static final int Z_FILTERED = 1;
    public static final int Z_FINISH = 4;
    public static final int Z_FULL_FLUSH = 3;
    public static final int Z_HUFFMAN_ONLY = 2;
    public static final int Z_MEM_ERROR = -4;
    public static final int Z_NEED_DICT = 2;
    public static final int Z_NO_COMPRESSION = 0;
    public static final int Z_NO_FLUSH = 0;
    public static final int Z_OK = 0;
    public static final int Z_PARTIAL_FLUSH = 1;
    public static final int Z_STREAM_END = 1;
    public static final int Z_STREAM_ERROR = -2;
    public static final int Z_SYNC_FLUSH = 2;
    public static final byte Z_UNKNOWN = 2;
    public static final int Z_VERSION_ERROR = -6;
    private static final String version = "1.1.0";
    public static final WrapperType W_NONE = WrapperType.NONE;
    public static final WrapperType W_ZLIB = WrapperType.ZLIB;
    public static final WrapperType W_GZIP = WrapperType.GZIP;
    public static final WrapperType W_ANY = WrapperType.ANY;

    public enum WrapperType {
        NONE,
        ZLIB,
        GZIP,
        ANY
    }

    public static String version() {
        return version;
    }

    public static long adler32_combine(long j, long j2, long j3) {
        return Adler32.combine(j, j2, j3);
    }

    public static long crc32_combine(long j, long j2, long j3) {
        return CRC32.combine(j, j2, j3);
    }
}
