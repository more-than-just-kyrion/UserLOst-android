.class Lcom/termux/app/ExtraKeysView$SpecialButtonState;
.super Ljava/lang/Object;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialButtonState"
.end annotation


# instance fields
.field button:Landroid/widget/ToggleButton;

.field isOn:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->isOn:Z

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->button:Landroid/widget/ToggleButton;

    return-void
.end method

.method synthetic constructor <init>(Lcom/termux/app/ExtraKeysView-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/termux/app/ExtraKeysView$SpecialButtonState;-><init>()V

    return-void
.end method
