.class public final Ltech/ulo/library/utils/UserPrompter$DefaultImpls;
.super Ljava/lang/Object;
.source "UserPrompter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/utils/UserPrompter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$4f5ycvg9zANMGlF58cmNUPEntzk(Landroid/widget/TextView;Ltech/ulo/library/utils/UserPrompter;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls;->showView$lambda$5(Landroid/widget/TextView;Ltech/ulo/library/utils/UserPrompter;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TyIhNvJZGIwYcQi3ZHYDvUwAAHo(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls;->showView$lambda$5$lambda$4(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XSdMu_AsRftJBDcWmgcdHWSZ0uI(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls;->showView$lambda$2(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$afPQ4uyXjBneYCLnI6vIBOMmw4Q(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls;->showView$lambda$2$lambda$1(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eaWl_M9m42xRzOZDyFbunmDzUe4(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls;->showView$lambda$2$lambda$0(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jux5Jhv3zCz9MTaQluewvGjny2Q(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls;->showView$lambda$5$lambda$3(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static showView(Ltech/ulo/library/utils/UserPrompter;Landroid/view/ViewGroup;)V
    .locals 10

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0, p1}, Ltech/ulo/library/utils/UserPrompter;->setSavedViewGroup(Landroid/view/ViewGroup;)V

    .line 44
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Ltech/ulo/library/R$layout;->layout_user_prompt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 45
    sget v0, Ltech/ulo/library/R$id;->text_prompt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    sget v1, Ltech/ulo/library/R$id;->btn_positive_response:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 47
    sget v2, Ltech/ulo/library/R$id;->btn_negative_response:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    .line 49
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getInitialPrompt()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v2

    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getInitialPosBtnText()I

    move-result v3

    invoke-virtual {v2, v3}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v9, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda4;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda4;-><init>(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v2

    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getInitialNegBtnText()I

    move-result v3

    invoke-virtual {v2, v3}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v9, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda5;

    move-object v2, v9

    move-object v3, v0

    move-object v4, p0

    move-object v5, v1

    move-object v6, v8

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda5;-><init>(Landroid/widget/TextView;Ltech/ulo/library/utils/UserPrompter;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static showView$lambda$2(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    const-string p5, "this$0"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getAltInitialPosFlow()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 54
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getInitialPositiveBtnAction()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 55
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p5

    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getPrimaryRequest()I

    move-result v0

    invoke-virtual {p5, v0}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    check-cast p5, Ljava/lang/CharSequence;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p2

    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getPrimaryPosBtnText()I

    move-result p5

    invoke-virtual {p2, p5}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance p2, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p2

    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getPrimaryNegBtnText()I

    move-result p3

    invoke-virtual {p2, p3}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p4, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance p2, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda1;-><init>(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;)V

    invoke-virtual {p4, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private static showView$lambda$2$lambda$0(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getPrimaryPositiveBtnAction()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 62
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getFinishedAction()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 63
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static showView$lambda$2$lambda$1(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getFinishedAction()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 69
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static showView$lambda$5(Landroid/widget/TextView;Ltech/ulo/library/utils/UserPrompter;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string p5, "this$0"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {p1}, Ltech/ulo/library/utils/UserPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p5

    invoke-interface {p1}, Ltech/ulo/library/utils/UserPrompter;->getSecondaryRequest()I

    move-result v0

    invoke-virtual {p5, v0}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    check-cast p5, Ljava/lang/CharSequence;

    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-interface {p1}, Ltech/ulo/library/utils/UserPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p0

    invoke-interface {p1}, Ltech/ulo/library/utils/UserPrompter;->getSecondaryPosBtnText()I

    move-result p5

    invoke-virtual {p0, p5}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance p0, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1, p4}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda2;-><init>(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-interface {p1}, Ltech/ulo/library/utils/UserPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p0

    invoke-interface {p1}, Ltech/ulo/library/utils/UserPrompter;->getSecondaryNegBtnText()I

    move-result p2

    invoke-virtual {p0, p2}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance p0, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1, p4}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls$$ExternalSyntheticLambda3;-><init>(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;)V

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static showView$lambda$5$lambda$3(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSecondaryPositiveBtnAction()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 81
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getFinishedAction()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 82
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private static showView$lambda$5$lambda$4(Ltech/ulo/library/utils/UserPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getFinishedAction()Lkotlin/jvm/functions/Function0;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 88
    invoke-interface {p0}, Ltech/ulo/library/utils/UserPrompter;->getSavedViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
