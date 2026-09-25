.class public Lcom/trilead/ssh2/signature/DSASHA1Verify;
.super Ljava/lang/Object;
.source "DSASHA1Verify.java"

# interfaces
.implements Lcom/trilead/ssh2/signature/SSHSignature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/signature/DSASHA1Verify$InstanceHolder;
    }
.end annotation


# static fields
.field public static final ID_SSH_DSS:Ljava/lang/String; = "ssh-dss"

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/trilead/ssh2/signature/DSASHA1Verify;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/trilead/ssh2/signature/DSASHA1Verify-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/trilead/ssh2/signature/DSASHA1Verify;-><init>()V

    return-void
.end method

.method private decodeSignature([B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    array-length v0, p1

    const-string v1, "Peer sent corrupt signature"

    const/16 v2, 0x28

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 155
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 156
    const-string v3, "ssh-dss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 159
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    .line 161
    array-length v3, p1

    if-ne v3, v2, :cond_6

    .line 164
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    const/4 v0, 0x0

    .line 172
    aget-byte v3, p1, v0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-nez v3, :cond_1

    aget-byte v8, p1, v6

    if-nez v8, :cond_1

    aget-byte v9, p1, v5

    if-nez v9, :cond_1

    shl-int/lit8 v3, v3, 0x18

    const/high16 v10, -0x1000000

    and-int/2addr v3, v10

    shl-int/lit8 v8, v8, 0x10

    const/high16 v11, 0xff0000

    and-int/2addr v8, v11

    or-int/2addr v3, v8

    shl-int/lit8 v8, v9, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v3, v8

    .line 173
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    add-int v8, v4, v3

    add-int/lit8 v12, v3, 0x5

    .line 176
    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x18

    and-int/2addr v8, v10

    add-int/lit8 v10, v3, 0x6

    aget-byte v12, p1, v12

    shl-int/lit8 v12, v12, 0x10

    and-int/2addr v11, v12

    or-int/2addr v8, v11

    add-int/lit8 v11, v3, 0x7

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v3, v3, 0x8

    aget-byte v9, p1, v11

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    .line 178
    new-array v9, v8, [B

    .line 179
    invoke-static {p1, v3, v9, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v9

    .line 184
    :cond_1
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    const/16 v8, 0x14

    .line 185
    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_3

    move v9, v6

    goto :goto_2

    :cond_3
    move v9, v0

    .line 188
    :goto_2
    array-length v10, p1

    add-int/lit8 v10, v10, 0x6

    add-int/2addr v10, v3

    add-int/2addr v10, v9

    .line 189
    new-array v10, v10, [B

    const/16 v11, 0x30

    .line 192
    aput-byte v11, v10, v0

    .line 194
    array-length v11, p1

    if-ne v11, v2, :cond_4

    const/16 v1, 0x2c

    .line 197
    aput-byte v1, v10, v6

    add-int/2addr v1, v3

    int-to-byte v1, v1

    .line 198
    aput-byte v1, v10, v6

    add-int/2addr v1, v9

    int-to-byte v1, v1

    .line 199
    aput-byte v1, v10, v6

    .line 202
    aput-byte v5, v10, v5

    .line 205
    aput-byte v8, v10, v7

    add-int v1, v8, v3

    int-to-byte v1, v1

    .line 206
    aput-byte v1, v10, v7

    add-int/2addr v3, v4

    .line 209
    invoke-static {p1, v0, v10, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    aget-byte v0, v10, v7

    add-int/2addr v0, v4

    aput-byte v5, v10, v0

    .line 215
    aget-byte v0, v10, v7

    add-int/lit8 v0, v0, 0x5

    aput-byte v8, v10, v0

    .line 216
    aget-byte v0, v10, v7

    add-int/lit8 v0, v0, 0x5

    aget-byte v1, v10, v0

    add-int/2addr v1, v9

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 219
    aget-byte v0, v10, v7

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v9

    invoke-static {p1, v8, v10, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v10

    .line 195
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Padding in DSA signature!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Peer sent wrong signature format"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static encodeSignature([B)[B
    .locals 10

    .line 110
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 112
    const-string v1, "ssh-dss"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 117
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 118
    new-array v2, v1, [B

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 119
    invoke-static {p0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v1, 0x5

    add-int/lit8 v5, v1, 0x6

    .line 122
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 123
    new-array v6, v3, [B

    .line 124
    invoke-static {p0, v5, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x28

    .line 126
    new-array v5, p0, [B

    const/16 v7, 0x14

    if-ge v1, v7, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-ge v3, v7, :cond_1

    move v7, v3

    :cond_1
    sub-int/2addr v1, v8

    rsub-int/lit8 v9, v8, 0x14

    .line 133
    invoke-static {v2, v1, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, v7

    rsub-int/lit8 v1, v7, 0x28

    .line 134
    invoke-static {v6, v3, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-virtual {v0, v5, v4, p0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 138
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static get()Lcom/trilead/ssh2/signature/DSASHA1Verify;
    .locals 1

    .line 45
    invoke-static {}, Lcom/trilead/ssh2/signature/DSASHA1Verify$InstanceHolder;->-$$Nest$sfgetsInstance()Lcom/trilead/ssh2/signature/DSASHA1Verify;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodePublicKey([B)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 57
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string v1, "ssh-dss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p1

    .line 63
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v3

    .line 67
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    :try_start_0
    const-string v0, "DSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 73
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v4, v3, p1, v1, v2}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 74
    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 76
    :goto_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 68
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Padding in DSA public key!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This is not a ssh-dss public key!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .line 84
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 86
    const-string v1, "ssh-dss"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 90
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 91
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 92
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 94
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    :try_start_0
    const-string p3, "SHA1withDSA"

    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p3

    .line 246
    invoke-virtual {p3, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 247
    invoke-virtual {p3, p1}, Ljava/security/Signature;->update([B)V

    .line 248
    invoke-virtual {p3}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodeSignature([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 250
    :goto_0
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getKeyFormat()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "ssh-dss"

    return-object v0
.end method

.method public verifySignature([B[BLjava/security/PublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-direct {p0, p2}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->decodeSignature([B)[B

    move-result-object p2

    .line 231
    :try_start_0
    const-string v0, "SHA1withDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 233
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 234
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 238
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 236
    :goto_0
    new-instance p2, Ljava/io/IOException;

    const-string p3, "No such algorithm"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
