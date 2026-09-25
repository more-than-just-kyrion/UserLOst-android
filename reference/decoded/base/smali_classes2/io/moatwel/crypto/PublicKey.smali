.class public Lio/moatwel/crypto/PublicKey;
.super Ljava/lang/Object;
.source "PublicKey.java"


# instance fields
.field private final value:[B


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 17
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/moatwel/crypto/PublicKey;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/moatwel/crypto/PublicKey;->value:[B

    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)Lio/moatwel/crypto/PublicKey;
    .locals 1

    .line 26
    :try_start_0
    new-instance v0, Lio/moatwel/crypto/PublicKey;

    invoke-static {p0}, Lio/moatwel/util/HexEncoder;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lio/moatwel/crypto/PublicKey;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getHexString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/moatwel/crypto/PublicKey;->value:[B

    invoke-static {v0}, Lio/moatwel/util/HexEncoder;->getString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRaw()[B
    .locals 1

    .line 33
    iget-object v0, p0, Lio/moatwel/crypto/PublicKey;->value:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
