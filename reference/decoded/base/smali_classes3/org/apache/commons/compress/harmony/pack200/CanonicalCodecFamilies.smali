.class public Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;
.super Ljava/lang/Object;
.source "CanonicalCodecFamilies.java"


# static fields
.field public static deltaDoubleSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaSignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaSignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaSignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaSignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaUnsignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaUnsignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaUnsignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaUnsignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static deltaUnsignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static nonDeltaDoubleSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static nonDeltaSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static nonDeltaSignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static nonDeltaUnsignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static nonDeltaUnsignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static nonDeltaUnsignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static nonDeltaUnsignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static nonDeltaUnsignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x3

    .line 27
    new-array v1, v0, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v2, 0x5

    .line 30
    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x9

    .line 31
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const/16 v5, 0xd

    .line 32
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v1, v7

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 35
    new-array v1, v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v5, 0x11

    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v5, 0x14

    .line 36
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v6

    const/16 v5, 0x17

    .line 37
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v7

    const/16 v5, 0x1a

    .line 38
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v0

    const/16 v5, 0x1d

    .line 39
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v1, v8

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 42
    new-array v1, v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v5, 0x2f

    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v5, 0x30

    .line 43
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v6

    const/16 v5, 0x31

    .line 44
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v7

    const/16 v5, 0x32

    .line 45
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v0

    const/16 v5, 0x33

    .line 46
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v8

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 49
    new-array v1, v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v5, 0x46

    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v5, 0x47

    .line 50
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v6

    const/16 v5, 0x48

    .line 51
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v7

    const/16 v5, 0x49

    .line 52
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v0

    const/16 v5, 0x4a

    .line 53
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v8

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 56
    new-array v1, v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v5, 0x5d

    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v5, 0x5e

    .line 57
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v6

    const/16 v5, 0x5f

    .line 58
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v7

    const/16 v5, 0x60

    .line 59
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v0

    const/16 v5, 0x61

    .line 60
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v8

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaUnsignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 66
    new-array v1, v8, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v5, 0x7

    .line 67
    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0xb

    .line 68
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v7

    const/16 v9, 0xf

    .line 69
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v0

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 72
    new-array v1, v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v9, 0x20

    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v4

    const/16 v9, 0x23

    .line 73
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0x26

    .line 74
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v7

    const/16 v9, 0x29

    .line 75
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v0

    const/16 v9, 0x2c

    .line 76
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v8

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 79
    new-array v1, v3, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v9, 0x34

    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v4

    const/16 v9, 0x36

    .line 80
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0x38

    .line 81
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v7

    const/16 v9, 0x3a

    .line 82
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v0

    const/16 v9, 0x3c

    .line 83
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v8

    const/16 v9, 0x3e

    .line 84
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v2

    const/16 v9, 0x40

    .line 85
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v1, v10

    const/16 v9, 0x42

    .line 86
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v5

    const/16 v9, 0x44

    .line 87
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    const/16 v11, 0x8

    aput-object v9, v1, v11

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 90
    new-array v1, v3, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v9, 0x4b

    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v4

    const/16 v9, 0x4d

    .line 91
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0x4f

    .line 92
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v7

    const/16 v9, 0x51

    .line 93
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v0

    const/16 v9, 0x53

    .line 94
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v8

    const/16 v9, 0x55

    .line 95
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v2

    const/16 v9, 0x57

    .line 96
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v10

    const/16 v9, 0x59

    .line 97
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v5

    const/16 v9, 0x5b

    .line 98
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v11

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 101
    new-array v1, v3, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v9, 0x62

    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v4

    const/16 v9, 0x64

    .line 102
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0x66

    .line 103
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v7

    const/16 v9, 0x68

    .line 104
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v0

    const/16 v9, 0x6a

    .line 105
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v8

    const/16 v9, 0x6c

    .line 106
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v2

    const/16 v9, 0x6e

    .line 107
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v10

    const/16 v9, 0x70

    .line 108
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v5

    const/16 v9, 0x72

    .line 109
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v11

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaUnsignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 115
    new-array v1, v8, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-static {v8}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v4

    .line 116
    invoke-static {v11}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0xc

    .line 117
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v7

    const/16 v9, 0x10

    .line 118
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v0

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 121
    new-array v1, v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v9, 0x21

    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v4

    const/16 v9, 0x24

    .line 122
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0x27

    .line 123
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v7

    const/16 v9, 0x2a

    .line 124
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v0

    const/16 v9, 0x2d

    .line 125
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v8

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 128
    new-array v1, v3, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v9, 0x35

    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v4

    const/16 v9, 0x37

    .line 129
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0x39

    .line 130
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v7

    const/16 v9, 0x3b

    .line 131
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v0

    const/16 v9, 0x3d

    .line 132
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v8

    const/16 v9, 0x3f

    .line 133
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v2

    const/16 v9, 0x41

    .line 134
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v10

    const/16 v9, 0x43

    .line 135
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v5

    const/16 v9, 0x45

    .line 136
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v11

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs3:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 139
    new-array v1, v3, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v9, 0x4c

    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v4

    const/16 v9, 0x4e

    .line 140
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v6

    const/16 v9, 0x50

    .line 141
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v7

    const/16 v9, 0x52

    .line 142
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v0

    const/16 v9, 0x54

    .line 143
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v8

    const/16 v9, 0x56

    .line 144
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v2

    const/16 v9, 0x58

    .line 145
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v10

    const/16 v9, 0x5a

    .line 146
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v5

    const/16 v9, 0x5c

    .line 147
    invoke-static {v9}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v9

    aput-object v9, v1, v11

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs4:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 150
    new-array v1, v3, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v3, 0x63

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v4

    const/16 v3, 0x65

    .line 151
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v6

    const/16 v3, 0x67

    .line 152
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v7

    const/16 v3, 0x69

    .line 153
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v0

    const/16 v3, 0x6b

    .line 154
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v8

    const/16 v3, 0x6d

    .line 155
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v3, 0x6f

    .line 156
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v10

    const/16 v3, 0x71

    .line 157
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v5

    const/16 v3, 0x73

    .line 158
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v11

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaSignedCodecs5:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 161
    new-array v1, v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v3, 0x22

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v4

    const/16 v3, 0x25

    .line 162
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v6

    const/16 v3, 0x28

    .line 163
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v7

    const/16 v3, 0x2b

    .line 164
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v0

    const/16 v3, 0x2e

    .line 165
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v8

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->deltaDoubleSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 171
    new-array v1, v8, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-static {v7}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v4

    .line 172
    invoke-static {v10}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v6

    const/16 v3, 0xa

    .line 173
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v7

    const/16 v3, 0xe

    .line 174
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v0

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 177
    new-array v1, v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v4

    const/16 v3, 0x15

    .line 178
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v6

    const/16 v3, 0x18

    .line 179
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v7

    const/16 v3, 0x1b

    .line 180
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v0

    const/16 v3, 0x1e

    .line 181
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v3

    aput-object v3, v1, v8

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaSignedCodecs2:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 184
    new-array v1, v2, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v2, 0x13

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x16

    .line 185
    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x19

    .line 186
    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x1c

    .line 187
    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    .line 188
    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v0

    aput-object v0, v1, v8

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CanonicalCodecFamilies;->nonDeltaDoubleSignedCodecs1:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
