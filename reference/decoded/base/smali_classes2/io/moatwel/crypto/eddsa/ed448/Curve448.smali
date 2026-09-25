.class public Lio/moatwel/crypto/eddsa/ed448/Curve448;
.super Lio/moatwel/crypto/eddsa/Curve;
.source "Curve448.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/moatwel/crypto/eddsa/ed448/Curve448$CurveHolder;
    }
.end annotation


# static fields
.field private static final BASE:Lio/moatwel/crypto/eddsa/Point;

.field private static final D:Lio/moatwel/crypto/eddsa/Coordinate;

.field private static final L:Ljava/math/BigInteger;

.field private static final P:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x1c0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v2, 0xe0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "1"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448;->P:Ljava/math/BigInteger;

    .line 18
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x1be

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "13818066809895115352007386748515426880336692474882178609894547503885"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448;->L:Ljava/math/BigInteger;

    .line 20
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "-39081"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448;->D:Lio/moatwel/crypto/eddsa/Coordinate;

    .line 23
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/PointEd448;

    new-instance v1, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "224580040295924300187604334099896036246789641632564134246125461686950415467406032909029192869357953282578032075146446173674602635247710"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "298819210078481492676017930443930673437544040154080242095928241372331506189835876003536878655418784733982303233503462500531545062832660"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;-><init>(Ljava/math/BigInteger;)V

    sget-object v3, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ONE:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    sget-object v4, Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;->ONE:Lio/moatwel/crypto/eddsa/ed448/CoordinateEd448;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/moatwel/crypto/eddsa/ed448/PointEd448;-><init>(Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;Lio/moatwel/crypto/eddsa/Coordinate;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448;->BASE:Lio/moatwel/crypto/eddsa/Point;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/moatwel/crypto/eddsa/Curve;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/moatwel/crypto/eddsa/ed448/Curve448$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lio/moatwel/crypto/eddsa/ed448/Curve448;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/moatwel/crypto/eddsa/ed448/Curve448;
    .locals 1

    .line 34
    invoke-static {}, Lio/moatwel/crypto/eddsa/ed448/Curve448$CurveHolder;->access$000()Lio/moatwel/crypto/eddsa/ed448/Curve448;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 64
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getBasePoint()Lio/moatwel/crypto/eddsa/Point;
    .locals 1

    .line 44
    sget-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448;->BASE:Lio/moatwel/crypto/eddsa/Point;

    return-object v0
.end method

.method public getD()Lio/moatwel/crypto/eddsa/Coordinate;
    .locals 1

    .line 59
    sget-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448;->D:Lio/moatwel/crypto/eddsa/Coordinate;

    return-object v0
.end method

.method public getPrimeL()Ljava/math/BigInteger;
    .locals 1

    .line 49
    sget-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448;->L:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimePowerP()Ljava/math/BigInteger;
    .locals 1

    .line 54
    sget-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448;->P:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKeyByteLength()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method
