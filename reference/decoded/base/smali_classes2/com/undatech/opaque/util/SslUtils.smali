.class public Lcom/undatech/opaque/util/SslUtils;
.super Ljava/lang/Object;
.source "SslUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static signature(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/undatech/opaque/util/SslUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    .line 19
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 20
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    new-array v2, v2, [C

    const/4 v3, 0x0

    move v4, v3

    .line 22
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 23
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    mul-int/lit8 v6, v4, 0x3

    .line 24
    div-int/lit8 v7, v5, 0x10

    aget-char v7, v1, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    .line 25
    rem-int/2addr v5, v0

    aget-char v5, v1, v5

    aput-char v5, v2, v7

    add-int/lit8 v6, v6, 0x2

    .line 26
    const-string v5, ":"

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_0
    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    mul-int/lit8 v4, v4, 0x3

    .line 29
    div-int/lit8 v3, p0, 0x10

    aget-char v3, v1, v3

    aput-char v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    .line 30
    rem-int/2addr p0, v0

    aget-char p0, v1, p0

    aput-char p0, v2, v4

    .line 31
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
