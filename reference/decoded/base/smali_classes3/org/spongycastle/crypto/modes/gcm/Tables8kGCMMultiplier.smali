.class public Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private M:[[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 11

    .line 13
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [I

    aput v4, v0, v1

    aput v2, v0, v6

    aput v3, v0, v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 22
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v6

    const/16 v7, 0x8

    aget-object v0, v0, v7

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asInts([B[I)V

    move p1, v4

    :goto_1
    if-lt p1, v6, :cond_2

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, v0, v6

    add-int v8, p1, p1

    aget-object v8, v0, v8

    aget-object v0, v0, p1

    invoke-static {v8, v0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    shr-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v0, p1, v6

    aget-object v0, v0, v6

    aget-object p1, p1, v5

    aget-object p1, p1, v7

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    :goto_2
    if-lt v4, v6, :cond_3

    .line 37
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object p1, p1, v5

    add-int v0, v4, v4

    aget-object v0, p1, v0

    aget-object p1, p1, v4

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    shr-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    move p1, v1

    :goto_4
    if-ge p1, v2, :cond_5

    move v0, v6

    :goto_5
    if-ge v0, p1, :cond_4

    .line 47
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v5

    aget-object v8, v4, p1

    aget-object v9, v4, v0

    add-int v10, p1, v0

    aget-object v4, v4, v10

    invoke-static {v8, v9, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([I[I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    add-int/2addr p1, p1

    goto :goto_4

    :cond_5
    add-int/lit8 p1, v5, 0x1

    if-ne p1, v3, :cond_6

    return-void

    :cond_6
    if-le p1, v6, :cond_7

    move v0, v7

    :goto_6
    if-lez v0, :cond_7

    .line 61
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int/lit8 v8, v5, -0x1

    aget-object v8, v4, v8

    aget-object v8, v8, v0

    aget-object v4, v4, p1

    aget-object v4, v4, v0

    invoke-static {v8, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I[I)V

    shr-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    move v5, p1

    goto :goto_3
.end method

.method public multiplyH([B)V
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x4

    .line 71
    new-array v2, v1, [I

    const/16 v3, 0xf

    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_0

    move-object/from16 v5, p0

    .line 75
    iget-object v6, v5, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v7, v3, v3

    aget-object v8, v6, v7

    aget-byte v9, v0, v3

    and-int/lit8 v10, v9, 0xf

    aget-object v8, v8, v10

    .line 76
    aget v10, v2, v4

    aget v11, v8, v4

    xor-int/2addr v10, v11

    aput v10, v2, v4

    const/4 v11, 0x1

    .line 77
    aget v12, v2, v11

    aget v13, v8, v11

    xor-int/2addr v12, v13

    aput v12, v2, v11

    const/4 v13, 0x2

    .line 78
    aget v14, v2, v13

    aget v15, v8, v13

    xor-int/2addr v14, v15

    aput v14, v2, v13

    const/4 v15, 0x3

    .line 79
    aget v16, v2, v15

    aget v8, v8, v15

    xor-int v8, v16, v8

    aput v8, v2, v15

    add-int/2addr v7, v11

    .line 81
    aget-object v6, v6, v7

    and-int/lit16 v7, v9, 0xf0

    ushr-int/2addr v7, v1

    aget-object v6, v6, v7

    .line 82
    aget v7, v6, v4

    xor-int/2addr v7, v10

    aput v7, v2, v4

    .line 83
    aget v4, v6, v11

    xor-int/2addr v4, v12

    aput v4, v2, v11

    .line 84
    aget v4, v6, v13

    xor-int/2addr v4, v14

    aput v4, v2, v13

    .line 85
    aget v4, v6, v15

    xor-int/2addr v4, v8

    aput v4, v2, v15

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p0

    .line 88
    invoke-static {v2, v0, v4}, Lorg/spongycastle/util/Pack;->intToBigEndian([I[BI)V

    return-void
.end method
