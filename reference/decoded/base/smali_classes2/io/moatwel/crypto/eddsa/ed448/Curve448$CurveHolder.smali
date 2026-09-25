.class Lio/moatwel/crypto/eddsa/ed448/Curve448$CurveHolder;
.super Ljava/lang/Object;
.source "Curve448.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/moatwel/crypto/eddsa/ed448/Curve448;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurveHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lio/moatwel/crypto/eddsa/ed448/Curve448;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lio/moatwel/crypto/eddsa/ed448/Curve448;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/moatwel/crypto/eddsa/ed448/Curve448;-><init>(Lio/moatwel/crypto/eddsa/ed448/Curve448$1;)V

    sput-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448$CurveHolder;->INSTANCE:Lio/moatwel/crypto/eddsa/ed448/Curve448;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lio/moatwel/crypto/eddsa/ed448/Curve448;
    .locals 1

    .line 67
    sget-object v0, Lio/moatwel/crypto/eddsa/ed448/Curve448$CurveHolder;->INSTANCE:Lio/moatwel/crypto/eddsa/ed448/Curve448;

    return-object v0
.end method
