.class Lio/moatwel/crypto/eddsa/ed25519/SignatureEd25519;
.super Lio/moatwel/crypto/Signature;
.source "SignatureEd25519.java"


# direct methods
.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0x20

    .line 15
    invoke-static {p1, v0}, Lio/moatwel/util/ArrayUtils;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object p1

    invoke-static {p2, v0}, Lio/moatwel/util/ArrayUtils;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/moatwel/crypto/eddsa/ed25519/SignatureEd25519;-><init>([B[B)V

    return-void
.end method

.method constructor <init>([B)V
    .locals 3

    const/16 v0, 0x20

    .line 26
    invoke-static {p1, v0}, Lio/moatwel/util/ByteUtils;->split([BI)[[B

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, v0}, Lio/moatwel/util/ByteUtils;->split([BI)[[B

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p0, v1, p1}, Lio/moatwel/crypto/eddsa/ed25519/SignatureEd25519;-><init>([B[B)V

    return-void
.end method

.method constructor <init>([B[B)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2}, Lio/moatwel/crypto/Signature;-><init>([B[B)V

    .line 20
    array-length p1, p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    array-length p1, p2

    if-ne p1, v0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Signature on Curve25519 must have 32 byte length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
