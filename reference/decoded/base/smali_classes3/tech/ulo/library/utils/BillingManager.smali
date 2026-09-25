.class public final Ltech/ulo/library/utils/BillingManager;
.super Ljava/lang/Object;
.source "BillingManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/BillingManager$Sku;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBillingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingManager.kt\ntech/ulo/library/utils/BillingManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,221:1\n1#2:222\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001:Bw\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00080\u0005\u0012\u0018\u0010\t\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00080\u0005\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000c\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0002\u0010\u000fJ\u0006\u0010 \u001a\u00020\u0008J\u0018\u0010!\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001eH\u0002J\u0008\u0010%\u001a\u00020\u000eH\u0002J\u0010\u0010&\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u001eH\u0002J\u001e\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001e\u0010+\u001a\u00020\u00082\u0006\u0010(\u001a\u00020)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0006\u0010,\u001a\u00020\u0008Jh\u0010-\u001a\u00020\u00082\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00062\u0018\u0010/\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0006\u0012\u0004\u0012\u00020\u00080\u000526\u00100\u001a2\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\u000801H\u0002J\u0006\u00104\u001a\u00020\u0008Jh\u00105\u001a\u00020\u00082\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00062\u0018\u0010/\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0006\u0012\u0004\u0012\u00020\u00080\u000526\u00100\u001a2\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u00082\u0012\u0008\u00083\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u00020\u000801H\u0002J\u000e\u00106\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u001eJ\u0016\u00108\u001a\u00020\u00082\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R \u0010\t\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0016\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0006\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00170\u001dj\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0017`\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Ltech/ulo/library/utils/BillingManager;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onEntitledSubPurchases",
        "Lkotlin/Function1;",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "",
        "onEntitledInAppPurchases",
        "onPurchase",
        "onFlowComplete",
        "Lkotlin/Function0;",
        "onSubscriptionSupportedChecked",
        "",
        "(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "billingClient",
        "Lcom/android/billingclient/api/BillingClient;",
        "isBillingServiceConnected",
        "()Z",
        "setBillingServiceConnected",
        "(Z)V",
        "populateSkus",
        "Lcom/android/billingclient/api/SkuDetails;",
        "getPopulateSkus",
        "()Lkotlin/jvm/functions/Function1;",
        "purchasesUpdatedListener",
        "Lcom/android/billingclient/api/PurchasesUpdatedListener;",
        "skuDetailsMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "destroy",
        "handlePopulateSkuError",
        "code",
        "",
        "message",
        "isSubscriptionPurchaseSupported",
        "log",
        "processInAppPurchaseList",
        "billingResult",
        "Lcom/android/billingclient/api/BillingResult;",
        "list",
        "processSubPurchaseList",
        "queryInAppPurchases",
        "queryInAppSkuDetails",
        "skus",
        "onSuccess",
        "onError",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "querySubPurchases",
        "querySubscriptionSkuDetails",
        "startPurchaseFlow",
        "productId",
        "startServiceConnection",
        "task",
        "Sku",
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
.field private final activity:Landroid/app/Activity;

.field private final billingClient:Lcom/android/billingclient/api/BillingClient;

.field private isBillingServiceConnected:Z

.field private final onEntitledInAppPurchases:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onEntitledSubPurchases:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onFlowComplete:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onPurchase:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onSubscriptionSupportedChecked:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final populateSkus:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private final skuDetailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BJvjtRsVYtk7rDwUPVt7HughaBY(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/utils/BillingManager;->queryInAppSkuDetails$lambda$8(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NSoaV5SLc0udwztxn1DcjEsTbOE(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/utils/BillingManager;->querySubPurchases$lambda$4(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SgnxY82W4iKCiMOO8IUXwiS_r50(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/utils/BillingManager;->purchasesUpdatedListener$lambda$2$lambda$1$lambda$0(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UJ_E7Wq3qOAQ4lcqB8rBmVsbMnU(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/utils/BillingManager;->queryInAppPurchases$lambda$6(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$igaRtAELmgGX88V85igTFu1vYa0(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/utils/BillingManager;->purchasesUpdatedListener$lambda$2(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w2-fsH8HDNkhljmT_dN2VdR17GU(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltech/ulo/library/utils/BillingManager;->querySubscriptionSkuDetails$lambda$7(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/billingclient/api/Purchase;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEntitledSubPurchases"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEntitledInAppPurchases"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPurchase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFlowComplete"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSubscriptionSupportedChecked"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ltech/ulo/library/utils/BillingManager;->activity:Landroid/app/Activity;

    .line 19
    iput-object p2, p0, Ltech/ulo/library/utils/BillingManager;->onEntitledSubPurchases:Lkotlin/jvm/functions/Function1;

    .line 20
    iput-object p3, p0, Ltech/ulo/library/utils/BillingManager;->onEntitledInAppPurchases:Lkotlin/jvm/functions/Function1;

    .line 21
    iput-object p4, p0, Ltech/ulo/library/utils/BillingManager;->onPurchase:Lkotlin/jvm/functions/Function1;

    .line 22
    iput-object p5, p0, Ltech/ulo/library/utils/BillingManager;->onFlowComplete:Lkotlin/jvm/functions/Function0;

    .line 23
    iput-object p6, p0, Ltech/ulo/library/utils/BillingManager;->onSubscriptionSupportedChecked:Lkotlin/jvm/functions/Function1;

    .line 26
    new-instance p2, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda3;-><init>(Ltech/ulo/library/utils/BillingManager;)V

    iput-object p2, p0, Ltech/ulo/library/utils/BillingManager;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 67
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Ltech/ulo/library/utils/BillingManager;->skuDetailsMap:Ljava/util/HashMap;

    .line 69
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 76
    new-instance p1, Ltech/ulo/library/utils/BillingManager$populateSkus$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/BillingManager$populateSkus$1;-><init>(Ltech/ulo/library/utils/BillingManager;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/BillingManager;->populateSkus:Lkotlin/jvm/functions/Function1;

    .line 84
    new-instance p1, Ltech/ulo/library/utils/BillingManager$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/BillingManager$1;-><init>(Ltech/ulo/library/utils/BillingManager;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BillingManager;->startServiceConnection(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Ltech/ulo/library/utils/BillingManager;)Landroid/app/Activity;
    .locals 0

    .line 17
    iget-object p0, p0, Ltech/ulo/library/utils/BillingManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getBillingClient$p(Ltech/ulo/library/utils/BillingManager;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 17
    iget-object p0, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method public static final synthetic access$getOnSubscriptionSupportedChecked$p(Ltech/ulo/library/utils/BillingManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 17
    iget-object p0, p0, Ltech/ulo/library/utils/BillingManager;->onSubscriptionSupportedChecked:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getSkuDetailsMap$p(Ltech/ulo/library/utils/BillingManager;)Ljava/util/HashMap;
    .locals 0

    .line 17
    iget-object p0, p0, Ltech/ulo/library/utils/BillingManager;->skuDetailsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$handlePopulateSkuError(Ltech/ulo/library/utils/BillingManager;ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/BillingManager;->handlePopulateSkuError(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$isSubscriptionPurchaseSupported(Ltech/ulo/library/utils/BillingManager;)Z
    .locals 0

    .line 17
    invoke-direct {p0}, Ltech/ulo/library/utils/BillingManager;->isSubscriptionPurchaseSupported()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$log(Ltech/ulo/library/utils/BillingManager;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$queryInAppSkuDetails(Ltech/ulo/library/utils/BillingManager;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/utils/BillingManager;->queryInAppSkuDetails(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$querySubscriptionSkuDetails(Ltech/ulo/library/utils/BillingManager;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Ltech/ulo/library/utils/BillingManager;->querySubscriptionSkuDetails(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final handlePopulateSkuError(ILjava/lang/String;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error trying to populate skus.  code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " message: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private final isSubscriptionPurchaseSupported()Z
    .locals 3

    .line 187
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const-string v1, "isFeatureSupported(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSubscriptionPurchaseSupported(), not supported, error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final log(Ljava/lang/String;)V
    .locals 1

    .line 195
    const-string v0, "BillingManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final processInAppPurchaseList(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 111
    iget-object p1, p0, Ltech/ulo/library/utils/BillingManager;->onEntitledInAppPurchases:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error trying to query purchases: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final processSubPurchaseList(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 95
    iget-object p1, p0, Ltech/ulo/library/utils/BillingManager;->onEntitledSubPurchases:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error trying to query purchases: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final purchasesUpdatedListener$lambda$2(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onPurchasesUpdated() got unknown resultCode: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Ltech/ulo/library/utils/BillingManager;->onFlowComplete:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_0
    const-string p1, "onPurchasesUpdated() - user cancelled the purchase flow - skipping"

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Ltech/ulo/library/utils/BillingManager;->onFlowComplete:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 31
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    if-eq v2, v1, :cond_4

    const/4 v0, 0x2

    if-eq v2, v0, :cond_3

    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->onFlowComplete:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_4
    iget-object v2, p0, Ltech/ulo/library/utils/BillingManager;->onPurchase:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v2

    if-nez v2, :cond_2

    .line 35
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v3, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda5;-><init>(Ltech/ulo/library/utils/BillingManager;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_0

    .line 54
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPurchasesUpdated(), "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static final purchasesUpdatedListener$lambda$2$lambda$1$lambda$0(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "acknowledgePurchase(), billingResult="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static final queryInAppPurchases$lambda$6(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/BillingManager;->processInAppPurchaseList(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method private final queryInAppSkuDetails(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    const-string v0, "inapp"

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    const-string v0, "setType(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    new-instance v1, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3}, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method private static final queryInAppSkuDetails$lambda$8(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    const-string v0, "$onSuccess"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 179
    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getDebugMessage(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final querySubPurchases$lambda$4(Ltech/ulo/library/utils/BillingManager;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/utils/BillingManager;->processSubPurchaseList(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method private final querySubscriptionSkuDetails(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 165
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    const-string v0, "subs"

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    const-string v0, "setType(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    new-instance v1, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3}, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method private static final querySubscriptionSkuDetails$lambda$7(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    const-string v0, "$onSuccess"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 168
    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getDebugMessage(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final startServiceConnection(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Ltech/ulo/library/utils/BillingManager;->isBillingServiceConnected:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;

    invoke-direct {v1, p0, p1}, Ltech/ulo/library/utils/BillingManager$startServiceConnection$1;-><init>(Ltech/ulo/library/utils/BillingManager;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 135
    const-string v0, "destroy()"

    invoke-direct {p0, v0}, Ltech/ulo/library/utils/BillingManager;->log(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    :cond_0
    return-void
.end method

.method public final getPopulateSkus()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->populateSkus:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final isBillingServiceConnected()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Ltech/ulo/library/utils/BillingManager;->isBillingServiceConnected:Z

    return v0
.end method

.method public final queryInAppPurchases()V
    .locals 3

    .line 118
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda2;-><init>(Ltech/ulo/library/utils/BillingManager;)V

    const-string v2, "inapp"

    invoke-virtual {v0, v2, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public final querySubPurchases()V
    .locals 3

    .line 102
    invoke-direct {p0}, Ltech/ulo/library/utils/BillingManager;->isSubscriptionPurchaseSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ltech/ulo/library/utils/BillingManager$$ExternalSyntheticLambda4;-><init>(Ltech/ulo/library/utils/BillingManager;)V

    const-string v2, "subs"

    invoke-virtual {v0, v2, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    :cond_0
    return-void
.end method

.method public final setBillingServiceConnected(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Ltech/ulo/library/utils/BillingManager;->isBillingServiceConnected:Z

    return-void
.end method

.method public final startPurchaseFlow(Ljava/lang/String;)V
    .locals 1

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Ltech/ulo/library/utils/BillingManager;->skuDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;

    invoke-direct {v0, p1, p0}, Ltech/ulo/library/utils/BillingManager$startPurchaseFlow$1;-><init>(Lcom/android/billingclient/api/SkuDetails;Ltech/ulo/library/utils/BillingManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Ltech/ulo/library/utils/BillingManager;->startServiceConnection(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method
