.class public final Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;
.super Ljava/lang/Object;
.source "UserPrompter.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "tech/ulo/library/utils/ContributionPrompter$openContributionView$1$1",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $chosenAmount:Landroid/widget/TextView;

.field final synthetic this$0:Ltech/ulo/library/utils/ContributionPrompter;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ltech/ulo/library/utils/ContributionPrompter;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;->$chosenAmount:Landroid/widget/TextView;

    iput-object p2, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    .line 309
    iget-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;->$chosenAmount:Landroid/widget/TextView;

    iget-object p2, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-virtual {p2}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p2

    sget p3, Ltech/ulo/library/R$string;->contribution_amount_invalid:I

    invoke-virtual {p2, p3}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;->$chosenAmount:Landroid/widget/TextView;

    const-string p2, "$20 USD"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;->$chosenAmount:Landroid/widget/TextView;

    const-string p2, "$10 USD"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;->$chosenAmount:Landroid/widget/TextView;

    const-string p2, "$5 USD"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :cond_3
    iget-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1$1;->$chosenAmount:Landroid/widget/TextView;

    const-string p2, "$1 USD"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
