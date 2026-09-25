.class public final enum Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
.super Ljava/lang/Enum;
.source "GroupElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/i2p/crypto/eddsa/math/GroupElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Representation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum P1P1:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum P3PrecomputedDouble:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

.field public static final enum PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 50
    new-instance v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v1, "P2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 52
    new-instance v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v2, "P3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 54
    new-instance v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v3, "P3PrecomputedDouble"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3PrecomputedDouble:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 56
    new-instance v3, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v4, "P1P1"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P1P1:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 58
    new-instance v4, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v5, "PRECOMP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 60
    new-instance v5, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const-string v6, "CACHED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 48
    filled-new-array/range {v0 .. v5}, [Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    move-result-object v0

    sput-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->$VALUES:[Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    .locals 1

    .line 48
    const-class v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    return-object p0
.end method

.method public static values()[Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    .locals 1

    .line 48
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->$VALUES:[Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v0}, [Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    return-object v0
.end method
