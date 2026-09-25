.class public Lio/moatwel/util/SharedKeyHelper;
.super Ljava/lang/Object;
.source "SharedKeyHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSharedKeySeed(Lio/moatwel/crypto/PublicKey;Lio/moatwel/crypto/PrivateKey;Lio/moatwel/crypto/eddsa/HashDelegate;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/moatwel/crypto/eddsa/DecodeException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lio/moatwel/crypto/PublicKey;->getRaw()[B

    move-result-object p0

    invoke-static {p0}, Lio/moatwel/crypto/eddsa/EncodedPoint;->from([B)Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object p0

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/EncodedPoint;->decode()Lio/moatwel/crypto/eddsa/Point;

    move-result-object p0

    .line 19
    invoke-virtual {p1, p2}, Lio/moatwel/crypto/PrivateKey;->getScalarSeed(Lio/moatwel/crypto/eddsa/HashDelegate;)Ljava/math/BigInteger;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lio/moatwel/crypto/eddsa/Point;->scalarMultiply(Ljava/math/BigInteger;)Lio/moatwel/crypto/eddsa/Point;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/Point;->encode()Lio/moatwel/crypto/eddsa/EncodedPoint;

    move-result-object p0

    invoke-virtual {p0}, Lio/moatwel/crypto/eddsa/EncodedPoint;->getValue()[B

    move-result-object p0

    return-object p0
.end method
