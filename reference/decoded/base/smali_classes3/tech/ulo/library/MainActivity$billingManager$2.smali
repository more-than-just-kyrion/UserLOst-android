.class final Ltech/ulo/library/MainActivity$billingManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/ulo/library/utils/BillingManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/ulo/library/utils/BillingManager;",
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
.field final synthetic this$0:Ltech/ulo/library/MainActivity;


# direct methods
.method constructor <init>(Ltech/ulo/library/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/MainActivity$billingManager$2;->this$0:Ltech/ulo/library/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 114
    invoke-virtual {p0}, Ltech/ulo/library/MainActivity$billingManager$2;->invoke()Ltech/ulo/library/utils/BillingManager;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ltech/ulo/library/utils/BillingManager;
    .locals 8

    .line 115
    new-instance v7, Ltech/ulo/library/utils/BillingManager;

    .line 116
    iget-object v0, p0, Ltech/ulo/library/MainActivity$billingManager$2;->this$0:Ltech/ulo/library/MainActivity;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 117
    invoke-static {v0}, Ltech/ulo/library/MainActivity;->access$getContributionPrompter(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/ContributionPrompter;->getOnEntitledSubPurchases()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 118
    iget-object v0, p0, Ltech/ulo/library/MainActivity$billingManager$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v0}, Ltech/ulo/library/MainActivity;->access$getContributionPrompter(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/ContributionPrompter;->getOnEntitledInAppPurchases()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    .line 119
    iget-object v0, p0, Ltech/ulo/library/MainActivity$billingManager$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v0}, Ltech/ulo/library/MainActivity;->access$getContributionPrompter(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/ContributionPrompter;->getOnPurchase()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 120
    iget-object v0, p0, Ltech/ulo/library/MainActivity$billingManager$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v0}, Ltech/ulo/library/MainActivity;->access$getContributionPrompter(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/ContributionPrompter;->getOnFlowComplete()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 121
    iget-object v0, p0, Ltech/ulo/library/MainActivity$billingManager$2;->this$0:Ltech/ulo/library/MainActivity;

    invoke-static {v0}, Ltech/ulo/library/MainActivity;->access$getContributionPrompter(Ltech/ulo/library/MainActivity;)Ltech/ulo/library/utils/ContributionPrompter;

    move-result-object v0

    invoke-virtual {v0}, Ltech/ulo/library/utils/ContributionPrompter;->getOnSubscriptionSupportedChecked()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    move-object v0, v7

    .line 115
    invoke-direct/range {v0 .. v6}, Ltech/ulo/library/utils/BillingManager;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-object v7
.end method
