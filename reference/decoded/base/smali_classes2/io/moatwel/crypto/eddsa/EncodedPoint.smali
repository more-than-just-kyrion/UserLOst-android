.class public abstract Lio/moatwel/crypto/eddsa/EncodedPoint;
.super Ljava/lang/Object;
.source "EncodedPoint.java"


# instance fields
.field protected final value:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/moatwel/crypto/eddsa/EncodedPoint;->value:[B

    return-void
.end method

.method public static from([B)Lio/moatwel/crypto/eddsa/EncodedPoint;
    .locals 3

    .line 20
    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    .line 24
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/EncodedPointEd448;

    invoke-direct {v0, p0}, Lio/moatwel/crypto/eddsa/ed448/EncodedPointEd448;-><init>([B)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ") is not supported."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;

    invoke-direct {v0, p0}, Lio/moatwel/crypto/eddsa/ed25519/EncodedPointEd25519;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract decode()Lio/moatwel/crypto/eddsa/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/moatwel/crypto/eddsa/DecodeException;
        }
    .end annotation
.end method

.method public getValue()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lio/moatwel/crypto/eddsa/EncodedPoint;->value:[B

    return-object v0
.end method
