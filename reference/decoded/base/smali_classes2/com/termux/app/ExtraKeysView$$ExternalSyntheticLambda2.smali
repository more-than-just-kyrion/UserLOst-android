.class public final synthetic Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/ExtraKeysView;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Lcom/termux/app/ExtraKeyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/ExtraKeysView;Landroid/widget/Button;Lcom/termux/app/ExtraKeyButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda2;->f$0:Lcom/termux/app/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda2;->f$2:Lcom/termux/app/ExtraKeyButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda2;->f$0:Lcom/termux/app/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda2;->f$2:Lcom/termux/app/ExtraKeyButton;

    invoke-static {v0, v1, v2, p1}, Lcom/termux/app/ExtraKeysView;->$r8$lambda$WF18sE_3gjhQifVbXhEYG6clFCY(Lcom/termux/app/ExtraKeysView;Landroid/widget/Button;Lcom/termux/app/ExtraKeyButton;Landroid/view/View;)V

    return-void
.end method
