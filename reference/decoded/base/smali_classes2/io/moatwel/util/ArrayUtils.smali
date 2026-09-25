.class public Lio/moatwel/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reverse([I)[I
    .locals 6

    .line 21
    array-length v0, p0

    new-array v0, v0, [I

    .line 23
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, p0, v2

    .line 24
    array-length v5, p0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aput v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static split([BI)[[B
    .locals 4

    if-ltz p1, :cond_0

    .line 8
    array-length v0, p0

    if-lt v0, p1, :cond_0

    .line 12
    new-array v0, p1, [B

    .line 13
    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 15
    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-static {p0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    filled-new-array {v0, v2}, [[B

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "split index is out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBinaryArray(Ljava/math/BigInteger;)[I
    .locals 10

    .line 53
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 54
    array-length v0, p0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    .line 55
    :goto_0
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    mul-int/lit8 v7, v4, 0x8

    add-int/2addr v7, v5

    .line 57
    aget-byte v8, p0, v4

    and-int/lit16 v9, v8, 0x80

    div-int/lit16 v9, v9, 0x80

    aput v9, v2, v7

    shl-int/lit8 v7, v8, 0x1

    int-to-byte v7, v7

    .line 58
    aput-byte v7, p0, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move p0, v3

    move v1, p0

    :goto_2
    if-ge p0, v0, :cond_3

    .line 63
    aget v4, v2, p0

    if-ne v4, v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    sub-int/2addr v0, v1

    .line 71
    new-array p0, v0, [I

    .line 72
    invoke-static {v2, v1, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static toByteArray(Ljava/math/BigInteger;I)[B
    .locals 3

    .line 31
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 32
    array-length v0, p0

    if-gt v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 41
    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 45
    :goto_0
    new-array v2, p1, [B

    .line 47
    invoke-static {p0, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static toMutualOppositeForm(Ljava/math/BigInteger;)[I
    .locals 5

    .line 77
    invoke-static {p0}, Lio/moatwel/util/ArrayUtils;->toBinaryArray(Ljava/math/BigInteger;)[I

    move-result-object p0

    .line 78
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    .line 80
    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 82
    aget v3, p0, v2

    aput v3, v1, v2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 85
    aget v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 88
    aget p0, p0, v2

    neg-int p0, p0

    aput p0, v1, v0

    return-object v1
.end method
