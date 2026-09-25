.class public final enum Lcom/termux/app/ExtraKeysView$SpecialButton;
.super Ljava/lang/Enum;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/app/ExtraKeysView$SpecialButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/app/ExtraKeysView$SpecialButton;

.field public static final enum ALT:Lcom/termux/app/ExtraKeysView$SpecialButton;

.field public static final enum CTRL:Lcom/termux/app/ExtraKeysView$SpecialButton;

.field public static final enum FN:Lcom/termux/app/ExtraKeysView$SpecialButton;


# direct methods
.method private static synthetic $values()[Lcom/termux/app/ExtraKeysView$SpecialButton;
    .locals 3

    .line 126
    sget-object v0, Lcom/termux/app/ExtraKeysView$SpecialButton;->CTRL:Lcom/termux/app/ExtraKeysView$SpecialButton;

    sget-object v1, Lcom/termux/app/ExtraKeysView$SpecialButton;->ALT:Lcom/termux/app/ExtraKeysView$SpecialButton;

    sget-object v2, Lcom/termux/app/ExtraKeysView$SpecialButton;->FN:Lcom/termux/app/ExtraKeysView$SpecialButton;

    filled-new-array {v0, v1, v2}, [Lcom/termux/app/ExtraKeysView$SpecialButton;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 127
    new-instance v0, Lcom/termux/app/ExtraKeysView$SpecialButton;

    const-string v1, "CTRL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/app/ExtraKeysView$SpecialButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/app/ExtraKeysView$SpecialButton;->CTRL:Lcom/termux/app/ExtraKeysView$SpecialButton;

    new-instance v0, Lcom/termux/app/ExtraKeysView$SpecialButton;

    const-string v1, "ALT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/termux/app/ExtraKeysView$SpecialButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/app/ExtraKeysView$SpecialButton;->ALT:Lcom/termux/app/ExtraKeysView$SpecialButton;

    new-instance v0, Lcom/termux/app/ExtraKeysView$SpecialButton;

    const-string v1, "FN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/termux/app/ExtraKeysView$SpecialButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/app/ExtraKeysView$SpecialButton;->FN:Lcom/termux/app/ExtraKeysView$SpecialButton;

    .line 126
    invoke-static {}, Lcom/termux/app/ExtraKeysView$SpecialButton;->$values()[Lcom/termux/app/ExtraKeysView$SpecialButton;

    move-result-object v0

    sput-object v0, Lcom/termux/app/ExtraKeysView$SpecialButton;->$VALUES:[Lcom/termux/app/ExtraKeysView$SpecialButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/app/ExtraKeysView$SpecialButton;
    .locals 1

    .line 126
    const-class v0, Lcom/termux/app/ExtraKeysView$SpecialButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/app/ExtraKeysView$SpecialButton;

    return-object p0
.end method

.method public static values()[Lcom/termux/app/ExtraKeysView$SpecialButton;
    .locals 1

    .line 126
    sget-object v0, Lcom/termux/app/ExtraKeysView$SpecialButton;->$VALUES:[Lcom/termux/app/ExtraKeysView$SpecialButton;

    invoke-virtual {v0}, [Lcom/termux/app/ExtraKeysView$SpecialButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/app/ExtraKeysView$SpecialButton;

    return-object v0
.end method
