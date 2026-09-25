.class Lcom/termux/app/TermuxActivity$7;
.super Landroid/widget/ArrayAdapter;
.source "TermuxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/termux/terminal/TerminalSession;",
        ">;"
    }
.end annotation


# instance fields
.field final boldSpan:Landroid/text/style/StyleSpan;

.field final italicSpan:Landroid/text/style/StyleSpan;

.field final synthetic this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$7;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 548
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$7;->boldSpan:Landroid/text/style/StyleSpan;

    .line 549
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$7;->italicSpan:Landroid/text/style/StyleSpan;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 556
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$7;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Lcom/termux/app/TermuxActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 557
    sget v1, Lcom/termux/R$layout;->line_in_drawer:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 560
    :cond_0
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxActivity$7;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/termux/terminal/TerminalSession;

    .line 561
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    .line 563
    sget v2, Lcom/termux/R$id;->row_line:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 564
    iget-object v3, p0, Lcom/termux/app/TermuxActivity$7;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean v3, v3, Lcom/termux/app/TermuxActivity;->mIsUsingBlackUI:Z

    if-eqz v3, :cond_1

    .line 565
    iget-object v3, p0, Lcom/termux/app/TermuxActivity$7;->this$0:Lcom/termux/app/TermuxActivity;

    .line 566
    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/termux/R$drawable;->selected_session_background_black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 565
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 569
    :cond_1
    iget-object v3, p3, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 570
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "] "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_2

    move-object v3, v6

    .line 574
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const-string v6, "\n"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 576
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 577
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v6, p0, Lcom/termux/app/TermuxActivity$7;->boldSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 579
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$7;->italicSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v0, p1, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 581
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_5

    .line 584
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x11

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_2

    .line 586
    :cond_5
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 588
    :goto_2
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$7;->this$0:Lcom/termux/app/TermuxActivity;

    iget-boolean p1, p1, Lcom/termux/app/TermuxActivity;->mIsUsingBlackUI:Z

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    goto :goto_3

    :cond_6
    const/high16 p1, -0x1000000

    :goto_3
    if-nez v1, :cond_8

    .line 589
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result p3

    if-nez p3, :cond_7

    goto :goto_4

    :cond_7
    const/high16 p1, -0x10000

    .line 590
    :cond_8
    :goto_4
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method
