.class final Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BillingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/ulo/library/utils/BillingManager;->startPurchaseFlow(Ljava/lang/String;)V
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
.field final synthetic $sku:Lcom/android/billingclient/api/SkuDetails;

.field final synthetic this$0:Ltech/ulo/library/utils/BillingManager;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/SkuDetails;Ltech/ulo/library/utils/BillingManager;)V
    .locals 0

    iput-object p1, p0, Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;->$sku:Lcom/android/billingclient/api/SkuDetails;

    iput-object p2, p0, Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 126
    invoke-virtual {p0}, Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 127
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    iget-object v1, p0, Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;->$sku:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-static {v1}, Ltech/ulo/library/utils/BillingManager;->access$getBillingClient$p(Ltech/ulo/library/utils/BillingManager;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    invoke-static {v2}, Ltech/ulo/library/utils/BillingManager;->access$getActivity$p(Ltech/ulo/library/utils/BillingManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const-string v1, "launchBillingFlow(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;->this$0:Ltech/ulo/library/utils/BillingManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startPurchaseFlow(...), billingResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltech/ulo/library/utils/BillingManager;->access$log(Ltech/ulo/library/utils/BillingManager;Ljava/lang/String;)V

    return-void
.end method
