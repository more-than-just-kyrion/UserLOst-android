.class public abstract Lio/moatwel/crypto/Signature;
.super Ljava/lang/Object;
.source "Signature.java"


# instance fields
.field protected final r:[B

.field protected final s:[B


# direct methods
.method protected constructor <init>([B[B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/moatwel/crypto/Signature;->r:[B

    .line 16
    iput-object p2, p0, Lio/moatwel/crypto/Signature;->s:[B

    return-void
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lio/moatwel/crypto/Signature;->r:[B

    iget-object v1, p0, Lio/moatwel/crypto/Signature;->s:[B

    invoke-static {v0, v1}, Lio/moatwel/util/ByteUtils;->join([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lio/moatwel/util/HexEncoder;->getString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getR()[B
    .locals 1

    .line 20
    iget-object v0, p0, Lio/moatwel/crypto/Signature;->r:[B

    return-object v0
.end method

.method public getS()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lio/moatwel/crypto/Signature;->s:[B

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    .line 28
    iget-object v0, p0, Lio/moatwel/crypto/Signature;->r:[B

    iget-object v1, p0, Lio/moatwel/crypto/Signature;->s:[B

    invoke-static {v0, v1}, Lio/moatwel/util/ByteUtils;->join([B[B)[B

    move-result-object v0

    return-object v0
.end method
