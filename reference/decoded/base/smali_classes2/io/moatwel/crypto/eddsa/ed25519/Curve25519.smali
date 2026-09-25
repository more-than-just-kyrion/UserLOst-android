.class public Lio/moatwel/crypto/eddsa/ed25519/Curve25519;
.super Lio/moatwel/crypto/eddsa/Curve;
.source "Curve25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/moatwel/crypto/eddsa/ed25519/Curve25519$CurveHolder;
    }
.end annotation


# static fields
.field private static final BASE:Lio/moatwel/crypto/eddsa/Point;

.field private static final D:Lio/moatwel/crypto/eddsa/Coordinate;

.field private static final L:Ljava/math/BigInteger;

.field private static final P:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "19"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->P:Ljava/math/BigInteger;

    .line 18
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v2, 0xfc

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "27742317777372353535851937790883648493"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->L:Ljava/math/BigInteger;

    .line 20
    new-instance v1, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "-121665"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "121666"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    sput-object v1, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->D:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 24
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;

    new-instance v1, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "15112221349535400772501151409588531511454012693041857206046113283949847762202"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "46316835694926478169428394003475163141307993866256225615783033603165251855960"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    sget-object v3, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;->ONE:Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    new-instance v4, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "46827403850823179245072216630277197565144205554125654976674165829533817101731"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lio/moatwel/crypto/eddsa/ed25519/CoordinateEd25519;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lio/moatwel/crypto/eddsa/ed25519/PointEd25519;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->BASE:Lio/moatwel/crypto/eddsa/Point;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lio/moatwel/crypto/eddsa/Curve;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/moatwel/crypto/eddsa/ed25519/Curve25519$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/moatwel/crypto/eddsa/ed25519/Curve25519;
    .locals 1

    .line 36
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519$CurveHolder;->access$000()Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getA()Ljava/math/BigInteger;
    .locals 2

    .line 66
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "-1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBasePoint()Lio/moatwel/crypto/eddsa/Point;
    .locals 1

    .line 46
    sget-object v0, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->BASE:Lio/moatwel/crypto/eddsa/Point;

    return-object v0
.end method

.method public final getD()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 1

    .line 61
    sget-object v0, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->D:Lio/moatwel/crypto/eddsa/Coordinate;

    return-object v0
.end method

.method public final getPrimeL()Ljava/math/BigInteger;
    .locals 1

    .line 51
    sget-object v0, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->L:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getPrimePowerP()Ljava/math/BigInteger;
    .locals 1

    .line 56
    sget-object v0, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;->P:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getPublicKeyByteLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method
