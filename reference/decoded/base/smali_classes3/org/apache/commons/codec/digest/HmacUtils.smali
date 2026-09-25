.class public final Lorg/apache/commons/codec/digest/HmacUtils;
.super Ljava/lang/Object;
.source "HmacUtils.java"


# static fields
.field private static final STREAM_BUFFER_LENGTH:I = 0x400


# instance fields
.field private final mac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 884
    invoke-direct {p0, v0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 940
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 927
    invoke-static {p1, p2}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method

.method private constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-object p1, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V
    .locals 0

    .line 910
    invoke-virtual {p1}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V
    .locals 0

    .line 897
    invoke-virtual {p1}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public static getHmacMd5([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static getHmacSha1([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static getHmacSha256([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static getHmacSha384([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static getHmacSha512([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;
    .locals 1

    if-eqz p1, :cond_0

    .line 205
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 206
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 207
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 210
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 201
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;
    .locals 0

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static hmacMd5(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacMd5([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacMd5([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacMd5Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacMd5Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacMd5Hex([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha1(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha1([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha1([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha1Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha1Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha1Hex([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha256(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha256([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha256([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha256Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha256Hex([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha384(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 605
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha384([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha384([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha384Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha384Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha384Hex([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha512(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 719
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha512([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha512([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha512Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 777
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha512Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha512Hex([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAvailable(Ljava/lang/String;)Z
    .locals 0

    .line 805
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAvailable(Lorg/apache/commons/codec/digest/HmacAlgorithms;)Z
    .locals 0

    .line 789
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    const/16 v0, 0x400

    .line 847
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 848
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 851
    invoke-virtual {p0, v1, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 852
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 0

    .line 870
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 871
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-object p0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;[B)Ljavax/crypto/Mac;
    .locals 0

    .line 824
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 825
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-object p0
.end method


# virtual methods
.method public hmac(Ljava/io/File;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 976
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 977
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 976
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public hmac(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 995
    new-array v1, v0, [B

    :goto_0
    const/4 v2, 0x0

    .line 998
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 999
    iget-object v4, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v4, v1, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 1001
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method

.method public hmac(Ljava/lang/String;)[B
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public hmac(Ljava/nio/ByteBuffer;)[B
    .locals 1

    .line 962
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 963
    iget-object p1, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method

.method public hmac([B)[B
    .locals 1

    .line 951
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public hmacHex(Ljava/io/File;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1047
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/File;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hmacHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hmacHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1075
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hmacHex(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0

    .line 1034
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hmacHex([B)Ljava/lang/String;
    .locals 0

    .line 1023
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
