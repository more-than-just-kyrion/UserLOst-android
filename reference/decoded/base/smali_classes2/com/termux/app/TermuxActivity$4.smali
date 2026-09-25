.class Lcom/termux/app/TermuxActivity$4;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "TermuxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/TermuxActivity;

.field final synthetic val$viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$4;->this$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$4;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$4;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->requestFocus()Z

    goto :goto_0

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$4;->val$viewPager:Landroidx/viewpager/widget/ViewPager;

    sget v0, Lcom/termux/R$id;->text_input:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 311
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method
