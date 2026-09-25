.class final Ltech/ulo/library/utils/BillingManager$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BillingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/BillingManager;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
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
.field final synthetic this$0:Ltech/ulo/library/utils/BillingManager;


# direct methods
.method constructor <init>(Ltech/ulo/library/utils/BillingManager;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Ltech/ulo/library/utils/BillingManager$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 12

    .line 85
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-static {v0}, Ltech/ulo/library/utils/BillingManager;->access$getOnSubscriptionSupportedChecked$p(Ltech/ulo/library/utils/BillingManager;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-static {v1}, Ltech/ulo/library/utils/BillingManager;->access$isSubscriptionPurchaseSupported(Ltech/ulo/library/utils/BillingManager;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-virtual {v0}, Ltech/ulo/library/utils/BillingManager;->querySubPurchases()V

    .line 87
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-virtual {v0}, Ltech/ulo/library/utils/BillingManager;->queryInAppPurchases()V

    .line 88
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1us_monthly"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "5us_monthly"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "10us_monthly"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "20us_monthly"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "1us_yearly"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "5us_yearly"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "10us_yearly"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const/4 v2, 0x7

    const-string v10, "20us_yearly"

    aput-object v10, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-virtual {v2}, Ltech/ulo/library/utils/BillingManager;->getPopulateSkus()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    new-instance v10, Ltech/ulo/library/utils/BillingManager$1$1;

    iget-object v11, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-direct {v10, v11}, Ltech/ulo/library/utils/BillingManager$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v10}, Ltech/ulo/library/utils/BillingManager;->access$querySubscriptionSkuDetails(Ltech/ulo/library/utils/BillingManager;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 89
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "pro_features"

    aput-object v2, v1, v3

    const-string v2, "pro_features_test"

    aput-object v2, v1, v4

    const-string v2, "1us_onetime"

    aput-object v2, v1, v5

    const-string v2, "5us_onetime"

    aput-object v2, v1, v6

    const-string v2, "10us_onetime"

    aput-object v2, v1, v7

    const-string v2, "20us_onetime"

    aput-object v2, v1, v8

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-virtual {v2}, Ltech/ulo/library/utils/BillingManager;->getPopulateSkus()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    new-instance v3, Ltech/ulo/library/utils/BillingManager$1$2;

    iget-object v4, p0, Ltech/ulo/library/utils/BillingManager$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-direct {v3, v4}, Ltech/ulo/library/utils/BillingManager$1$2;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v3}, Ltech/ulo/library/utils/BillingManager;->access$queryInAppSkuDetails(Ltech/ulo/library/utils/BillingManager;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
