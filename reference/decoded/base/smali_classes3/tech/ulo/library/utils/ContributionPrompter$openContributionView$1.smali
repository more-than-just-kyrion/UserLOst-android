.class final Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UserPrompter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/ContributionPrompter;-><init>(Ltech/ulo/library/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/ulo/library/utils/ContributionPrompter;


# direct methods
.method public static synthetic $r8$lambda$sRBAILEwvGKP3zI7d2BZvKU7QlA(Landroid/widget/SeekBar;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ltech/ulo/library/utils/ContributionPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->invoke$lambda$0(Landroid/widget/SeekBar;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ltech/ulo/library/utils/ContributionPrompter;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Ltech/ulo/library/utils/ContributionPrompter;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Landroid/widget/SeekBar;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ltech/ulo/library/utils/ContributionPrompter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p6, "this$0"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p6, 0x1

    if-eq p0, p6, :cond_2

    const/4 p6, 0x2

    if-eq p0, p6, :cond_1

    const/4 p6, 0x3

    if-eq p0, p6, :cond_0

    .line 329
    const-string p0, "invalid"

    goto :goto_0

    .line 328
    :cond_0
    const-string p0, "20us"

    goto :goto_0

    .line 327
    :cond_1
    const-string p0, "10us"

    goto :goto_0

    .line 326
    :cond_2
    const-string p0, "5us"

    goto :goto_0

    .line 325
    :cond_3
    const-string p0, "1us"

    .line 331
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 332
    const-string p1, "_onetime"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 334
    :cond_4
    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 335
    const-string p1, "_yearly"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 336
    :cond_5
    invoke-virtual {p3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 337
    const-string p1, "_monthly"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 340
    :cond_6
    :goto_1
    invoke-virtual {p4}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Ltech/ulo/library/MainActivity;->getBillingManager()Ltech/ulo/library/utils/BillingManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Ltech/ulo/library/utils/BillingManager;->startPurchaseFlow(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p4}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 290
    invoke-virtual {p0}, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    .line 291
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-virtual {v0}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$layout;->dia_contribution:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 292
    sget v1, Ltech/ulo/library/R$id;->amountSeekBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/SeekBar;

    .line 293
    sget v1, Ltech/ulo/library/R$id;->chosenAmountTextView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 294
    sget v2, Ltech/ulo/library/R$id;->processButton:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 295
    sget v3, Ltech/ulo/library/R$id;->oneTimeRadioButton:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/RadioButton;

    .line 296
    sget v3, Ltech/ulo/library/R$id;->yearlyRadioButton:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/RadioButton;

    .line 297
    sget v3, Ltech/ulo/library/R$id;->monthlyRadioButton:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/RadioButton;

    .line 299
    iget-object v3, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-static {v3}, Ltech/ulo/library/utils/ContributionPrompter;->access$getSubscriptionSupported$p(Ltech/ulo/library/utils/ContributionPrompter;)Z

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 300
    iget-object v3, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-static {v3}, Ltech/ulo/library/utils/ContributionPrompter;->access$getSubscriptionSupported$p(Ltech/ulo/library/utils/ContributionPrompter;)Z

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    if-eqz v4, :cond_0

    .line 302
    new-instance v3, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;

    iget-object v8, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-direct {v3, v1, v8}, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;-><init>(Landroid/widget/TextView;Ltech/ulo/library/utils/ContributionPrompter;)V

    check-cast v3, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 322
    :cond_0
    iget-object v8, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    new-instance v1, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$$ExternalSyntheticLambda0;

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SeekBar;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Ltech/ulo/library/utils/ContributionPrompter;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v1, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-virtual {v1}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
