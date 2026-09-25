.class public final synthetic Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Ltech/ulo/library/utils/BillingManager;


# direct methods
.method public synthetic constructor <init>(Ltech/ulo/library/utils/BillingManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda4;->f$0:Ltech/ulo/library/utils/BillingManager;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda4;->f$0:Ltech/ulo/library/utils/BillingManager;

    invoke-static {v0, p1, p2}, Ltech/ulo/library/utils/BillingManager;->$r8$lambda$NSoaV5SLc0udwztxn1DcjEsTbOE(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
