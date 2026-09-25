.class final enum Lcom/iiordanov/android/drawing/RectList$OverlapType;
.super Ljava/lang/Enum;
.source "RectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/android/drawing/RectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OverlapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iiordanov/android/drawing/RectList$OverlapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iiordanov/android/drawing/RectList$OverlapType;

.field public static final enum COALESCIBLE:Lcom/iiordanov/android/drawing/RectList$OverlapType;

.field public static final enum CONTAINED_BY:Lcom/iiordanov/android/drawing/RectList$OverlapType;

.field public static final enum CONTAINS:Lcom/iiordanov/android/drawing/RectList$OverlapType;

.field public static final enum NONE:Lcom/iiordanov/android/drawing/RectList$OverlapType;

.field public static final enum PARTIAL:Lcom/iiordanov/android/drawing/RectList$OverlapType;

.field public static final enum SAME:Lcom/iiordanov/android/drawing/RectList$OverlapType;


# direct methods
.method private static synthetic $values()[Lcom/iiordanov/android/drawing/RectList$OverlapType;
    .locals 6

    .line 28
    sget-object v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;->NONE:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    sget-object v1, Lcom/iiordanov/android/drawing/RectList$OverlapType;->SAME:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    sget-object v2, Lcom/iiordanov/android/drawing/RectList$OverlapType;->CONTAINS:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    sget-object v3, Lcom/iiordanov/android/drawing/RectList$OverlapType;->CONTAINED_BY:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    sget-object v4, Lcom/iiordanov/android/drawing/RectList$OverlapType;->COALESCIBLE:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    sget-object v5, Lcom/iiordanov/android/drawing/RectList$OverlapType;->PARTIAL:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    filled-new-array/range {v0 .. v5}, [Lcom/iiordanov/android/drawing/RectList$OverlapType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/android/drawing/RectList$OverlapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;->NONE:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 30
    new-instance v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;

    const-string v1, "SAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/android/drawing/RectList$OverlapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;->SAME:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 31
    new-instance v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;

    const-string v1, "CONTAINS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/android/drawing/RectList$OverlapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;->CONTAINS:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 32
    new-instance v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;

    const-string v1, "CONTAINED_BY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/android/drawing/RectList$OverlapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;->CONTAINED_BY:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 33
    new-instance v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;

    const-string v1, "COALESCIBLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/android/drawing/RectList$OverlapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;->COALESCIBLE:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 34
    new-instance v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;

    const-string v1, "PARTIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iiordanov/android/drawing/RectList$OverlapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;->PARTIAL:Lcom/iiordanov/android/drawing/RectList$OverlapType;

    .line 28
    invoke-static {}, Lcom/iiordanov/android/drawing/RectList$OverlapType;->$values()[Lcom/iiordanov/android/drawing/RectList$OverlapType;

    move-result-object v0

    sput-object v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;->$VALUES:[Lcom/iiordanov/android/drawing/RectList$OverlapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iiordanov/android/drawing/RectList$OverlapType;
    .locals 1

    .line 28
    const-class v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iiordanov/android/drawing/RectList$OverlapType;

    return-object p0
.end method

.method public static values()[Lcom/iiordanov/android/drawing/RectList$OverlapType;
    .locals 1

    .line 28
    sget-object v0, Lcom/iiordanov/android/drawing/RectList$OverlapType;->$VALUES:[Lcom/iiordanov/android/drawing/RectList$OverlapType;

    invoke-virtual {v0}, [Lcom/iiordanov/android/drawing/RectList$OverlapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iiordanov/android/drawing/RectList$OverlapType;

    return-object v0
.end method
