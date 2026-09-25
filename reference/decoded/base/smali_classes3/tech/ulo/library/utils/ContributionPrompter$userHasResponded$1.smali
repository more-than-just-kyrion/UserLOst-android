.class final Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;
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
.method constructor <init>(Ltech/ulo/library/utils/ContributionPrompter;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 433
    invoke-virtual {p0}, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 434
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-static {v0}, Ltech/ulo/library/utils/ContributionPrompter;->access$getPrefs$p(Ltech/ulo/library/utils/ContributionPrompter;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    .line 435
    invoke-static {v1}, Ltech/ulo/library/utils/ContributionPrompter;->access$getNumberOfTimesOpenedKey$p(Ltech/ulo/library/utils/ContributionPrompter;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 436
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 438
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-virtual {v0}, Ltech/ulo/library/utils/ContributionPrompter;->getPurchaseRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-virtual {v0, v2}, Ltech/ulo/library/utils/ContributionPrompter;->setPurchaseRequired(Z)V

    .line 440
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-virtual {v0}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-virtual {v1}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeInAppPurchase()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-virtual {v1}, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeSubPurchase()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Ltech/ulo/library/MainActivity;->userHasCompletedPayment(Z)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;->this$0:Ltech/ulo/library/utils/ContributionPrompter;

    invoke-virtual {v0}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/MainActivity;->userHasCompletedContribution()V

    :goto_0
    return-void
.end method
