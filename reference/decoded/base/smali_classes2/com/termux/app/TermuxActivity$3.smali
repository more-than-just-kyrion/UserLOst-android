.class Lcom/termux/app/TermuxActivity$3;
.super Landroidx/viewpager/widget/PagerAdapter;
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


# direct methods
.method public static synthetic $r8$lambda$Ia-SU7iIOMSZfGBL0d2AQxeywss(Lcom/termux/app/TermuxActivity$3;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/termux/app/TermuxActivity$3;->lambda$instantiateItem$0(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$instantiateItem$0(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 280
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 282
    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 284
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_0

    const-string p3, "\r"

    .line 285
    :cond_0
    invoke-virtual {p2, p3}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object p3, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p3, p2}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    .line 289
    :goto_0
    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 300
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 274
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    sget v2, Lcom/termux/R$layout;->extra_keys_main:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/app/ExtraKeysView;

    iput-object v0, p2, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    .line 275
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p2, p2, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity$3;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v1, v1, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-object v1, v1, Lcom/termux/app/TermuxPreferences;->mExtraKeys:Lcom/termux/app/ExtraKeysInfos;

    invoke-virtual {p2, v1}, Lcom/termux/app/ExtraKeysView;->reload(Lcom/termux/app/ExtraKeysInfos;)V

    goto :goto_0

    .line 277
    :cond_0
    sget p2, Lcom/termux/R$layout;->extra_keys_right:I

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 278
    sget p2, Lcom/termux/R$id;->text_input:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 279
    new-instance v1, Lcom/termux/app/TermuxActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/termux/app/TermuxActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/TermuxActivity$3;Landroid/widget/EditText;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 294
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
