.class public final enum Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;
.super Ljava/lang/Enum;
.source "WorkflowModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/md/camera/WorkflowModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkflowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;",
        "",
        "(Ljava/lang/String;I)V",
        "NOT_STARTED",
        "DETECTING",
        "DETECTED",
        "CONFIRMING",
        "CONFIRMED",
        "SEARCHING",
        "SEARCHED",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

.field public static final enum CONFIRMED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

.field public static final enum CONFIRMING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

.field public static final enum DETECTED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

.field public static final enum DETECTING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

.field public static final enum NOT_STARTED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

.field public static final enum SEARCHED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

.field public static final enum SEARCHING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;


# direct methods
.method private static final synthetic $values()[Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;
    .locals 7

    sget-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->NOT_STARTED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    sget-object v1, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->DETECTING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    sget-object v2, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->DETECTED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    sget-object v3, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->CONFIRMING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    sget-object v4, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->CONFIRMED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    sget-object v5, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->SEARCHING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    sget-object v6, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->SEARCHED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    filled-new-array/range {v0 .. v6}, [Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->NOT_STARTED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    .line 50
    new-instance v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    const-string v1, "DETECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->DETECTING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    .line 51
    new-instance v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    const-string v1, "DETECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->DETECTED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    .line 52
    new-instance v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    const-string v1, "CONFIRMING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->CONFIRMING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    .line 53
    new-instance v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    const-string v1, "CONFIRMED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->CONFIRMED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    .line 54
    new-instance v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    const-string v1, "SEARCHING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->SEARCHING:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    .line 55
    new-instance v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    const-string v1, "SEARCHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->SEARCHED:Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-static {}, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->$values()[Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->$VALUES:[Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;
    .locals 1

    const-class v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    return-object p0
.end method

.method public static values()[Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;
    .locals 1

    sget-object v0, Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;->$VALUES:[Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/md/camera/WorkflowModel$WorkflowState;

    return-object v0
.end method
