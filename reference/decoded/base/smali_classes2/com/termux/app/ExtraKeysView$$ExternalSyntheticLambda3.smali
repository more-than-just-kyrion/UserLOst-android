.class public final synthetic Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/ExtraKeysView;

.field public final synthetic f$1:Lcom/termux/app/ExtraKeyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/ExtraKeysView;Lcom/termux/app/ExtraKeyButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda3;->f$0:Lcom/termux/app/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda3;->f$1:Lcom/termux/app/ExtraKeyButton;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda3;->f$0:Lcom/termux/app/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda3;->f$1:Lcom/termux/app/ExtraKeyButton;

    invoke-static {v0, v1, p1, p2}, Lcom/termux/app/ExtraKeysView;->$r8$lambda$JPvQKRKBjAakAf610V3PLorrJi8(Lcom/termux/app/ExtraKeysView;Lcom/termux/app/ExtraKeyButton;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
