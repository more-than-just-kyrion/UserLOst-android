.class Lcom/termux/app/ExtraKeysView$2;
.super Ljava/util/HashMap;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/ExtraKeysView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/termux/app/ExtraKeysView$SpecialButton;",
        "Lcom/termux/app/ExtraKeysView$SpecialButtonState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/ExtraKeysView;


# direct methods
.method constructor <init>(Lcom/termux/app/ExtraKeysView;)V
    .locals 2

    .line 135
    iput-object p1, p0, Lcom/termux/app/ExtraKeysView$2;->this$0:Lcom/termux/app/ExtraKeysView;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 136
    sget-object p1, Lcom/termux/app/ExtraKeysView$SpecialButton;->CTRL:Lcom/termux/app/ExtraKeysView$SpecialButton;

    new-instance v0, Lcom/termux/app/ExtraKeysView$SpecialButtonState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/termux/app/ExtraKeysView$SpecialButtonState;-><init>(Lcom/termux/app/ExtraKeysView-IA;)V

    invoke-virtual {p0, p1, v0}, Lcom/termux/app/ExtraKeysView$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object p1, Lcom/termux/app/ExtraKeysView$SpecialButton;->ALT:Lcom/termux/app/ExtraKeysView$SpecialButton;

    new-instance v0, Lcom/termux/app/ExtraKeysView$SpecialButtonState;

    invoke-direct {v0, v1}, Lcom/termux/app/ExtraKeysView$SpecialButtonState;-><init>(Lcom/termux/app/ExtraKeysView-IA;)V

    invoke-virtual {p0, p1, v0}, Lcom/termux/app/ExtraKeysView$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object p1, Lcom/termux/app/ExtraKeysView$SpecialButton;->FN:Lcom/termux/app/ExtraKeysView$SpecialButton;

    new-instance v0, Lcom/termux/app/ExtraKeysView$SpecialButtonState;

    invoke-direct {v0, v1}, Lcom/termux/app/ExtraKeysView$SpecialButtonState;-><init>(Lcom/termux/app/ExtraKeysView-IA;)V

    invoke-virtual {p0, p1, v0}, Lcom/termux/app/ExtraKeysView$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
