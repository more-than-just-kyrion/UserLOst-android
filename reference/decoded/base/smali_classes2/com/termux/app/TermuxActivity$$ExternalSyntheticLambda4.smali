.class public final synthetic Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:[Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;->f$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;->f$2:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;->f$0:Lcom/termux/app/TermuxActivity;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda4;->f$2:[Ljava/lang/CharSequence;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/termux/app/TermuxActivity;->$r8$lambda$2WG_gLifsrUkxGbtfd77reJkWx4(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method
