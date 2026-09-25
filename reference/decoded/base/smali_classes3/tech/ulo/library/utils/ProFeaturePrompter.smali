.class public final Ltech/ulo/library/utils/ProFeaturePrompter;
.super Ljava/lang/Object;
.source "ProFeaturePrompter.kt"

# interfaces
.implements Ltech/ulo/library/utils/ProFeaturePrompterInt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/ProFeaturePrompter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProFeaturePrompter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProFeaturePrompter.kt\ntech/ulo/library/utils/ProFeaturePrompter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1855#2,2:106\n1855#2,2:108\n*S KotlinDebug\n*F\n+ 1 ProFeaturePrompter.kt\ntech/ulo/library/utils/ProFeaturePrompter\n*L\n52#1:106,2\n58#1:108,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 22\u00020\u0001:\u00012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010$\u001a\u00020\u001aJ\u0006\u0010%\u001a\u00020\u001aJ\u0006\u0010&\u001a\u00020\u001aJ\u0016\u0010\'\u001a\u00020\u00072\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0010\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0010H\u0002J\u0016\u0010+\u001a\u00020\u00072\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u000e\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.J\u0010\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u001aH\u0002J\u0010\u00101\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R#\u0010\r\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0004\u0012\u00020\u00070\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R#\u0010\u0013\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0004\u0012\u00020\u00070\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\tR\u001d\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00070\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u001d\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00070\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012R\u0016\u0010\u001c\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Ltech/ulo/library/utils/ProFeaturePrompter;",
        "Ltech/ulo/library/utils/ProFeaturePrompterInt;",
        "activity",
        "Ltech/ulo/library/RequestDirPermissionsActivity;",
        "(Ltech/ulo/library/RequestDirPermissionsActivity;)V",
        "finishedAction",
        "Lkotlin/Function0;",
        "",
        "getFinishedAction",
        "()Lkotlin/jvm/functions/Function0;",
        "hasMadeInAppPurchaseKey",
        "",
        "hasMadeSubPurchaseKey",
        "onEntitledInAppPurchases",
        "Lkotlin/Function1;",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "getOnEntitledInAppPurchases",
        "()Lkotlin/jvm/functions/Function1;",
        "onEntitledSubPurchases",
        "getOnEntitledSubPurchases",
        "onFlowComplete",
        "getOnFlowComplete",
        "onPurchase",
        "getOnPurchase",
        "onSubscriptionSupportedChecked",
        "",
        "getOnSubscriptionSupportedChecked",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "savedActivity",
        "getSavedActivity",
        "()Ltech/ulo/library/RequestDirPermissionsActivity;",
        "subscriptionSupported",
        "userHasResponded",
        "hasMadeInAppPurchase",
        "hasMadeSubPurchase",
        "hasProAccess",
        "processInAppPurchases",
        "purchases",
        "processPurchase",
        "purchase",
        "processSubPurchases",
        "requiresProPurchase",
        "type",
        "Ltech/ulo/library/model/entities/ExecutionType;",
        "setHasMadeInAppPurchase",
        "hasMadePurchase",
        "setHasMadeSubPurchase",
        "Companion",
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


# static fields
.field public static final Companion:Ltech/ulo/library/utils/ProFeaturePrompter$Companion;

.field public static final prefString:Ljava/lang/String; = "usage"


# instance fields
.field private final activity:Ltech/ulo/library/RequestDirPermissionsActivity;

.field private final hasMadeInAppPurchaseKey:Ljava/lang/String;

.field private final hasMadeSubPurchaseKey:Ljava/lang/String;

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

.field private final prefs:Landroid/content/SharedPreferences;

.field private subscriptionSupported:Z

.field private final userHasResponded:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/utils/ProFeaturePrompter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/ProFeaturePrompter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/utils/ProFeaturePrompter;->Companion:Ltech/ulo/library/utils/ProFeaturePrompter$Companion;

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/RequestDirPermissionsActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->activity:Ltech/ulo/library/RequestDirPermissionsActivity;

    .line 17
    const-string p1, "hasMadeSubPurchase"

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeSubPurchaseKey:Ljava/lang/String;

    .line 18
    const-string p1, "hasMadeInAppPurchase"

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeInAppPurchaseKey:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Ltech/ulo/library/utils/ProFeaturePrompter;->getSavedActivity()Ltech/ulo/library/RequestDirPermissionsActivity;

    move-result-object p1

    const-string v0, "usage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltech/ulo/library/RequestDirPermissionsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->prefs:Landroid/content/SharedPreferences;

    .line 30
    new-instance p1, Ltech/ulo/library/utils/ProFeaturePrompter$onSubscriptionSupportedChecked$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ProFeaturePrompter$onSubscriptionSupportedChecked$1;-><init>(Ltech/ulo/library/utils/ProFeaturePrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onSubscriptionSupportedChecked:Lkotlin/jvm/functions/Function1;

    .line 34
    new-instance p1, Ltech/ulo/library/utils/ProFeaturePrompter$onEntitledSubPurchases$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ProFeaturePrompter$onEntitledSubPurchases$1;-><init>(Ltech/ulo/library/utils/ProFeaturePrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onEntitledSubPurchases:Lkotlin/jvm/functions/Function1;

    .line 38
    new-instance p1, Ltech/ulo/library/utils/ProFeaturePrompter$onEntitledInAppPurchases$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ProFeaturePrompter$onEntitledInAppPurchases$1;-><init>(Ltech/ulo/library/utils/ProFeaturePrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onEntitledInAppPurchases:Lkotlin/jvm/functions/Function1;

    .line 42
    new-instance p1, Ltech/ulo/library/utils/ProFeaturePrompter$onPurchase$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ProFeaturePrompter$onPurchase$1;-><init>(Ltech/ulo/library/utils/ProFeaturePrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onPurchase:Lkotlin/jvm/functions/Function1;

    .line 46
    new-instance p1, Ltech/ulo/library/utils/ProFeaturePrompter$onFlowComplete$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ProFeaturePrompter$onFlowComplete$1;-><init>(Ltech/ulo/library/utils/ProFeaturePrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onFlowComplete:Lkotlin/jvm/functions/Function0;

    .line 74
    new-instance p1, Ltech/ulo/library/utils/ProFeaturePrompter$userHasResponded$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ProFeaturePrompter$userHasResponded$1;-><init>(Ltech/ulo/library/utils/ProFeaturePrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->userHasResponded:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$processInAppPurchases(Ltech/ulo/library/utils/ProFeaturePrompter;Ljava/util/List;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/ProFeaturePrompter;->processInAppPurchases(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$processPurchase(Ltech/ulo/library/utils/ProFeaturePrompter;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/ProFeaturePrompter;->processPurchase(Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method public static final synthetic access$processSubPurchases(Ltech/ulo/library/utils/ProFeaturePrompter;Ljava/util/List;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/ProFeaturePrompter;->processSubPurchases(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setSubscriptionSupported$p(Ltech/ulo/library/utils/ProFeaturePrompter;Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->subscriptionSupported:Z

    return-void
.end method

.method private final processInAppPurchases(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 58
    check-cast p1, Ljava/lang/Iterable;

    .line 108
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 58
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0, v0}, Ltech/ulo/library/utils/ProFeaturePrompter;->setHasMadeInAppPurchase(Z)V

    return-void
.end method

.method private final processPurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 5

    .line 63
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "get(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "onetime"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "pro_features"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0, v2}, Ltech/ulo/library/utils/ProFeaturePrompter;->setHasMadeSubPurchase(Z)V

    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Ltech/ulo/library/utils/ProFeaturePrompter;->setHasMadeInAppPurchase(Z)V

    .line 67
    :goto_1
    invoke-virtual {p0}, Ltech/ulo/library/utils/ProFeaturePrompter;->getSavedActivity()Ltech/ulo/library/RequestDirPermissionsActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Ltech/ulo/library/R$string;->contribution_thanks:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 68
    invoke-virtual {p0}, Ltech/ulo/library/utils/ProFeaturePrompter;->getFinishedAction()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final processSubPurchases(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 52
    check-cast p1, Ljava/lang/Iterable;

    .line 106
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 52
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    .line 53
    :cond_1
    invoke-direct {p0, v0}, Ltech/ulo/library/utils/ProFeaturePrompter;->setHasMadeSubPurchase(Z)V

    return-void
.end method

.method private final setHasMadeInAppPurchase(Z)V
    .locals 2

    .line 99
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    iget-object v1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeInAppPurchaseKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final setHasMadeSubPurchase(Z)V
    .locals 2

    .line 92
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    iget-object v1, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeSubPurchaseKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getFinishedAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->userHasResponded:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnEntitledInAppPurchases()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onEntitledInAppPurchases:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnEntitledSubPurchases()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onEntitledSubPurchases:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnFlowComplete()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onFlowComplete:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnPurchase()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onPurchase:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnSubscriptionSupportedChecked()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->onSubscriptionSupportedChecked:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getSavedActivity()Ltech/ulo/library/RequestDirPermissionsActivity;
    .locals 1

    .line 22
    iget-object v0, p0, Ltech/ulo/library/utils/ProFeaturePrompter;->activity:Ltech/ulo/library/RequestDirPermissionsActivity;

    return-object v0
.end method

.method public final hasMadeInAppPurchase()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasMadeSubPurchase()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasProAccess()Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeSubPurchase()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltech/ulo/library/utils/ProFeaturePrompter;->hasMadeInAppPurchase()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final requiresProPurchase(Ltech/ulo/library/model/entities/ExecutionType;)Z
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Ltech/ulo/library/model/entities/ExecutionType;->PROOT:Ltech/ulo/library/model/entities/ExecutionType;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Ltech/ulo/library/utils/ProFeaturePrompter;->hasProAccess()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
