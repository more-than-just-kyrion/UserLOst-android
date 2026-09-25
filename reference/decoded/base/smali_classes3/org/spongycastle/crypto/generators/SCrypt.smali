.class public Lorg/spongycastle/crypto/generators/SCrypt;
.super Ljava/lang/Object;
.source "SCrypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BlockMix([I[I[I[II)V
    .locals 6

    .line 149
    array-length v0, p0

    const/16 v1, 0x10

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x1

    mul-int/lit8 p4, p4, 0x2

    move v3, v2

    move v4, v3

    :goto_0
    if-lez p4, :cond_0

    .line 155
    invoke-static {p1, p0, v3, p2}, Lorg/spongycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    const/16 v5, 0x8

    .line 157
    invoke-static {v5, p2, p1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 158
    invoke-static {p1, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v0, v3

    sub-int v4, v5, v4

    add-int/2addr v3, v1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 164
    :cond_0
    array-length p1, p3

    invoke-static {p3, v2, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static Clear([B)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 179
    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method private static Clear([I)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 187
    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method private static ClearAll([[I)V
    .locals 2

    const/4 v0, 0x0

    .line 193
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 195
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static MFcrypt([B[BIIII)[B
    .locals 4

    mul-int/lit16 v0, p3, 0x80

    mul-int/2addr p4, v0

    .line 72
    invoke-static {p0, p1, p4}, Lorg/spongycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B

    move-result-object p1

    const/4 p4, 0x0

    .line 78
    :try_start_0
    array-length v1, p1

    ushr-int/lit8 v1, v1, 0x2

    .line 79
    new-array p4, v1, [I

    const/4 v2, 0x0

    .line 81
    invoke-static {p1, v2, p4}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI[I)V

    ushr-int/lit8 v0, v0, 0x2

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 87
    invoke-static {p4, v3, p2, p3}, Lorg/spongycastle/crypto/generators/SCrypt;->SMix([IIII)V

    add-int/2addr v3, v0

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p4, p1, v2}, Lorg/spongycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 92
    invoke-static {p0, p1, p5}, Lorg/spongycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([B)V

    .line 97
    invoke-static {p4}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([I)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 96
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([B)V

    .line 97
    invoke-static {p4}, Lorg/spongycastle/crypto/generators/SCrypt;->Clear([I)V

    throw p0
.end method

.method private static SMix([IIII)V
    .locals 10

    mul-int/lit8 v0, p3, 0x20

    const/16 v1, 0x10

    .line 113
    new-array v2, v1, [I

    .line 114
    new-array v1, v1, [I

    .line 115
    new-array v3, v0, [I

    .line 117
    new-array v4, v0, [I

    .line 118
    new-array v5, p2, [[I

    const/4 v6, 0x0

    .line 122
    :try_start_0
    invoke-static {p0, p1, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v6

    :goto_0
    if-ge v7, p2, :cond_0

    .line 126
    invoke-static {v4}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v8

    aput-object v8, v5, v7

    .line 127
    invoke-static {v4, v2, v1, v3, p3}, Lorg/spongycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, p2, -0x1

    move v8, v6

    :goto_1
    if-ge v8, p2, :cond_1

    add-int/lit8 v9, v0, -0x10

    .line 133
    aget v9, v4, v9

    and-int/2addr v9, v7

    .line 134
    aget-object v9, v5, v9

    invoke-static {v4, v9, v6, v4}, Lorg/spongycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    .line 135
    invoke-static {v4, v2, v1, v3, p3}, Lorg/spongycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 138
    :cond_1
    invoke-static {v4, v6, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {v5}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 143
    filled-new-array {v4, v2, v1, v3}, [[I

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    return-void

    :catchall_0
    move-exception p0

    .line 142
    invoke-static {v5}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    .line 143
    filled-new-array {v4, v2, v1, v3}, [[I

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    throw p0
.end method

.method private static SingleIterationPBKDF2([B[BI)[B
    .locals 2

    .line 103
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, p0, p1, v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    mul-int/lit8 p2, p2, 0x8

    .line 105
    invoke-virtual {v0, p2}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 106
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p0

    return-object p0
.end method

.method private static Xor([I[II[I)V
    .locals 3

    .line 169
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 171
    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generate([B[BIIII)[B
    .locals 3

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-le p2, v0, :cond_5

    if-ne p3, v0, :cond_1

    const/high16 v1, 0x10000

    if-gt p2, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cost parameter N must be > 1 and < 65536."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-lt p3, v0, :cond_4

    mul-int/lit16 v1, p3, 0x400

    const v2, 0x7fffffff

    .line 56
    div-int/2addr v2, v1

    if-lt p4, v0, :cond_3

    if-gt p4, v2, :cond_3

    if-lt p5, v0, :cond_2

    .line 66
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/crypto/generators/SCrypt;->MFcrypt([B[BIIII)[B

    move-result-object p0

    return-object p0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Generated key length dkLen must be >= 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Parallelisation parameter p must be >= 1 and <= "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (based on block size r of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Block size r must be >= 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cost parameter N must be > 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Salt S must be provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Passphrase P must be provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
