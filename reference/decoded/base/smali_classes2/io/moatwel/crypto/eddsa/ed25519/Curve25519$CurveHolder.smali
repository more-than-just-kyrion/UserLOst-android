.class Lio/moatwel/crypto/eddsa/ed25519/Curve25519$CurveHolder;
.super Ljava/lang/Object;
.source "Curve25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/moatwel/crypto/eddsa/ed25519/Curve25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurveHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lio/moatwel/crypto/eddsa/ed25519/Curve25519;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed25519/Curve25519;-><init>(Lio/moatwel/crypto/eddsa/ed25519/Curve25519$1;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed25519/Curve25519$CurveHolder;->INSTANCE:Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lio/moatwel/crypto/eddsa/ed25519/Curve25519;
    .locals 1

    .line 69
    sget-object v0, Lio/moatwel/crypto/eddsa/ed25519/Curve25519$CurveHolder;->INSTANCE:Lio/moatwel/crypto/eddsa/ed25519/Curve25519;

    return-object v0
.end method
