.class public final synthetic Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda7;->f$0:Lcom/termux/app/TermuxActivity;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$$ExternalSyntheticLambda7;->f$0:Lcom/termux/app/TermuxActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/termux/app/TermuxActivity;->$r8$lambda$uBNUF0XS6GnAVl9LO0F891iflKk(Lcom/termux/app/TermuxActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method
