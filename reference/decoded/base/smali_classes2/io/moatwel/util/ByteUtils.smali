.class public Lio/moatwel/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static join([B[B)[B
    .locals 3

    .line 30
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 31
    new-array v0, v0, [B

    .line 32
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static varargs join([[B)[B
    .locals 4

    const/4 v0, 0x0

    .line 38
    new-array v1, v0, [B

    .line 39
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 40
    invoke-static {v1, v3}, Lio/moatwel/util/ByteUtils;->join([B[B)[B

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static paddingZeroOnHead([BI)[B
    .locals 1

    .line 46
    array-length v0, p0

    if-gt v0, p1, :cond_0

    .line 49
    array-length v0, p0

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 50
    invoke-static {p1, p0}, Lio/moatwel/util/ByteUtils;->join([B[B)[B

    move-result-object p0

    return-object p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input byte array must have length which is less than byteLength you want to be."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static paddingZeroOnTail([BI)[B
    .locals 1

    .line 54
    array-length v0, p0

    if-gt v0, p1, :cond_0

    .line 57
    array-length v0, p0

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 58
    invoke-static {p0, p1}, Lio/moatwel/util/ByteUtils;->join([B[B)[B

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input byte array must have length which is less than byteLength you want to be."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readBit(BI)I
    .locals 2

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    .line 73
    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 74
    aput-byte p0, v0, v1

    .line 75
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    ushr-int/2addr p0, p1

    return p0

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "position must be 0 - 7."

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reverse([B)[B
    .locals 6

    .line 20
    array-length v0, p0

    new-array v0, v0, [B

    .line 22
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    .line 23
    array-length v5, p0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aput-byte v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static split([BI)[[B
    .locals 4

    .line 8
    array-length v0, p0

    if-lt v0, p1, :cond_0

    .line 11
    new-array v0, p1, [B

    .line 12
    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 14
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    filled-new-array {v0, v1}, [[B

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Specified index over input length"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
