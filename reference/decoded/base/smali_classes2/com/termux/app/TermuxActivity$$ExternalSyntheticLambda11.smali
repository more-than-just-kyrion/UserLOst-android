.class public final synthetic Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:[Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;->f$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;->f$2:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;->f$0:Lcom/termux/app/TermuxActivity;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda11;->f$2:[Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, p1}, Lcom/termux/app/TermuxActivity;->$r8$lambda$sQylct0aVqFGJav30SEaNRG-WHM(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;)V

    return-void
.end method
