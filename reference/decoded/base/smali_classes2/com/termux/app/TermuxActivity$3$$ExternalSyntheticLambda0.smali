.class public final synthetic Lcom/termux/app/TermuxActivity$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxActivity$3;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxActivity$3;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$3$$ExternalSyntheticLambda0;->f$0:Lcom/termux/app/TermuxActivity$3;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$3$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$3$$ExternalSyntheticLambda0;->f$0:Lcom/termux/app/TermuxActivity$3;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity$3$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/termux/app/TermuxActivity$3;->$r8$lambda$Ia-SU7iIOMSZfGBL0d2AQxeywss(Lcom/termux/app/TermuxActivity$3;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
