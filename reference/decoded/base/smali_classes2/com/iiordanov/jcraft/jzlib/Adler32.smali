.class final Lcom/iiordanov/jcraft/jzlib/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"


# static fields
.field private static final BASE:I = 0xfff1

.field private static final NMAX:I = 0x15b0


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method adler32(J[BII)J
    .locals 8

    if-nez p3, :cond_0

    const-wide/16 p1, 0x1

    return-wide p1

    :cond_0
    const-wide/32 v0, 0xffff

    and-long v2, p1, v0

    const/16 v4, 0x10

    shr-long/2addr p1, v4

    and-long/2addr p1, v0

    :goto_0
    if-lez p5, :cond_5

    const/16 v0, 0x15b0

    if-ge p5, v0, :cond_1

    move v0, p5

    :cond_1
    sub-int/2addr p5, v0

    :goto_1
    if-lt v0, v4, :cond_2

    add-int/lit8 v1, p4, 0x1

    .line 55
    aget-byte v5, p3, p4

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 v5, p4, 0x2

    .line 56
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long/2addr v2, v6

    add-long/2addr p1, v2

    add-int/lit8 v1, p4, 0x3

    .line 57
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 v5, p4, 0x4

    .line 58
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long/2addr v2, v6

    add-long/2addr p1, v2

    add-int/lit8 v1, p4, 0x5

    .line 59
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 v5, p4, 0x6

    .line 60
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long/2addr v2, v6

    add-long/2addr p1, v2

    add-int/lit8 v1, p4, 0x7

    .line 61
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 v5, p4, 0x8

    .line 62
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long/2addr v2, v6

    add-long/2addr p1, v2

    add-int/lit8 v1, p4, 0x9

    .line 63
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 v5, p4, 0xa

    .line 64
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long/2addr v2, v6

    add-long/2addr p1, v2

    add-int/lit8 v1, p4, 0xb

    .line 65
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 v5, p4, 0xc

    .line 66
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long/2addr v2, v6

    add-long/2addr p1, v2

    add-int/lit8 v1, p4, 0xd

    .line 67
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 v5, p4, 0xe

    .line 68
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long/2addr v2, v6

    add-long/2addr p1, v2

    add-int/lit8 v1, p4, 0xf

    .line 69
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 p4, p4, 0x10

    .line 70
    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 v0, v0, -0x10

    goto/16 :goto_1

    :cond_2
    if-eqz v0, :cond_4

    :cond_3
    add-int/lit8 v1, p4, 0x1

    .line 75
    aget-byte p4, p3, p4

    and-int/lit16 p4, p4, 0xff

    int-to-long v5, p4

    add-long/2addr v2, v5

    add-long/2addr p1, v2

    add-int/lit8 v0, v0, -0x1

    move p4, v1

    if-nez v0, :cond_3

    :cond_4
    const-wide/32 v0, 0xfff1

    .line 79
    rem-long/2addr v2, v0

    .line 80
    rem-long/2addr p1, v0

    goto/16 :goto_0

    :cond_5
    shl-long/2addr p1, v4

    or-long/2addr p1, v2

    return-wide p1
.end method
