.class public final Ltech/ulo/library/utils/ContributionPrompter;
.super Ljava/lang/Object;
.source "UserPrompter.kt"

# interfaces
.implements Ltech/ulo/library/utils/UserPrompter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/ContributionPrompter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserPrompter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserPrompter.kt\ntech/ulo/library/utils/ContributionPrompter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,504:1\n1855#2,2:505\n1855#2,2:507\n*S KotlinDebug\n*F\n+ 1 UserPrompter.kt\ntech/ulo/library/utils/ContributionPrompter\n*L\n379#1:505,2\n385#1:507,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008#\u0018\u0000 d2\u00020\u0001:\u0001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010R\u001a\u00020\u0006H\u0002J\u0006\u0010S\u001a\u00020\u0006J\u0006\u0010T\u001a\u00020\u0006J\u0006\u0010U\u001a\u00020\u0006J\u0008\u0010V\u001a\u00020\u0006H\u0002J\u0016\u0010W\u001a\u00020\r2\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020#0\"H\u0002J\u0010\u0010Y\u001a\u00020\r2\u0006\u0010Z\u001a\u00020#H\u0002J\u0016\u0010[\u001a\u00020\r2\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020#0\"H\u0002J\u000e\u0010\\\u001a\u00020\r2\u0006\u0010]\u001a\u00020\u0006J\u0010\u0010^\u001a\u00020\r2\u0006\u0010_\u001a\u00020\u0006H\u0002J\u0010\u0010`\u001a\u00020\r2\u0006\u0010_\u001a\u00020\u0006H\u0002J\u0010\u0010a\u001a\u00020\r2\u0006\u0010b\u001a\u00020\u0014H\u0002J\u0008\u0010c\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0016R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0010R\u0014\u0010\u001b\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u0014X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R#\u0010 \u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\"\u0012\u0004\u0012\u00020\r0!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R#\u0010&\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\"\u0012\u0004\u0012\u00020\r0!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010%R\u0017\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0010R\u001d\u0010*\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\r0!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010%R\u001d\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010%R\u0014\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010/\u001a\n 1*\u0004\u0018\u00010000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u0016R\u0014\u00104\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u0016R\u001a\u00106\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u0010R\u0014\u00108\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u0016R\u001a\u0010:\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0008\"\u0004\u0008<\u0010=R\u0014\u0010>\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010BX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u0014\u0010G\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010\u0016R\u0014\u0010I\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010\u0016R\u001a\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\u0010R\u0014\u0010M\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010\u0016R\u0014\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006e"
    }
    d2 = {
        "Ltech/ulo/library/utils/ContributionPrompter;",
        "Ltech/ulo/library/utils/UserPrompter;",
        "activity",
        "Ltech/ulo/library/MainActivity;",
        "(Ltech/ulo/library/MainActivity;)V",
        "altInitialPosFlow",
        "",
        "getAltInitialPosFlow",
        "()Z",
        "canAskForPurchaseKey",
        "",
        "doNothing",
        "Lkotlin/Function0;",
        "",
        "finishedAction",
        "getFinishedAction",
        "()Lkotlin/jvm/functions/Function0;",
        "hasMadeInAppPurchaseKey",
        "hasMadeSubPurchaseKey",
        "initialNegBtnText",
        "",
        "getInitialNegBtnText",
        "()I",
        "initialPosBtnText",
        "getInitialPosBtnText",
        "initialPositiveBtnAction",
        "getInitialPositiveBtnAction",
        "initialPrompt",
        "getInitialPrompt",
        "()Ljava/lang/String;",
        "minimumNumberOfOpensBeforeContributionRequest",
        "numberOfTimesOpenedKey",
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
        "getOnSubscriptionSupportedChecked",
        "openContributionView",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "primaryNegBtnText",
        "getPrimaryNegBtnText",
        "primaryPosBtnText",
        "getPrimaryPosBtnText",
        "primaryPositiveBtnAction",
        "getPrimaryPositiveBtnAction",
        "primaryRequest",
        "getPrimaryRequest",
        "purchaseRequired",
        "getPurchaseRequired",
        "setPurchaseRequired",
        "(Z)V",
        "savedActivity",
        "getSavedActivity",
        "()Ltech/ulo/library/MainActivity;",
        "savedViewGroup",
        "Landroid/view/ViewGroup;",
        "getSavedViewGroup",
        "()Landroid/view/ViewGroup;",
        "setSavedViewGroup",
        "(Landroid/view/ViewGroup;)V",
        "secondaryNegBtnText",
        "getSecondaryNegBtnText",
        "secondaryPosBtnText",
        "getSecondaryPosBtnText",
        "secondaryPositiveBtnAction",
        "getSecondaryPositiveBtnAction",
        "secondaryRequest",
        "getSecondaryRequest",
        "sendGithubIntent",
        "subscriptionSupported",
        "userHasResponded",
        "askingForContributionIsAppropriate",
        "canAskForPurchase",
        "hasMadeInAppPurchase",
        "hasMadeSubPurchase",
        "numberOfTimesOpenedIsGreaterThanThreshold",
        "processInAppPurchases",
        "purchases",
        "processPurchase",
        "purchase",
        "processSubPurchases",
        "setCanAskForPurchase",
        "canAsk",
        "setHasMadeInAppPurchase",
        "hasMadePurchase",
        "setHasMadeSubPurchase",
        "setNumberOfTimesOpened",
        "numberTimesOpened",
        "viewShouldBeShown",
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
.field public static final Companion:Ltech/ulo/library/utils/ContributionPrompter$Companion;

.field public static final prefString:Ljava/lang/String; = "usage"


# instance fields
.field private final activity:Ltech/ulo/library/MainActivity;

.field private final canAskForPurchaseKey:Ljava/lang/String;

.field private final doNothing:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final hasMadeInAppPurchaseKey:Ljava/lang/String;

.field private final hasMadeSubPurchaseKey:Ljava/lang/String;

.field private final minimumNumberOfOpensBeforeContributionRequest:I

.field private final numberOfTimesOpenedKey:Ljava/lang/String;

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

.field private final openContributionView:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;

.field private purchaseRequired:Z

.field private savedViewGroup:Landroid/view/ViewGroup;

.field private final sendGithubIntent:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

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

    new-instance v0, Ltech/ulo/library/utils/ContributionPrompter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/ContributionPrompter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/utils/ContributionPrompter;->Companion:Ltech/ulo/library/utils/ContributionPrompter$Companion;

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/MainActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->activity:Ltech/ulo/library/MainActivity;

    .line 277
    const-string p1, "numberOfTimesOpenedContribution"

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->numberOfTimesOpenedKey:Ljava/lang/String;

    .line 278
    const-string p1, "hasMadeSubPurchase"

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeSubPurchaseKey:Ljava/lang/String;

    .line 279
    const-string p1, "hasMadeInAppPurchase"

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeInAppPurchaseKey:Ljava/lang/String;

    .line 280
    const-string p1, "canAskForPurchase"

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->canAskForPurchaseKey:Ljava/lang/String;

    const/4 p1, 0x5

    .line 281
    iput p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->minimumNumberOfOpensBeforeContributionRequest:I

    .line 284
    sget-object p1, Ltech/ulo/library/utils/ContributionPrompter$doNothing$1;->INSTANCE:Ltech/ulo/library/utils/ContributionPrompter$doNothing$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->doNothing:Lkotlin/jvm/functions/Function0;

    .line 290
    new-instance p1, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ContributionPrompter$openContributionView$1;-><init>(Ltech/ulo/library/utils/ContributionPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->openContributionView:Lkotlin/jvm/functions/Function0;

    .line 355
    invoke-virtual {p0}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p1

    const-string v0, "usage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltech/ulo/library/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->prefs:Landroid/content/SharedPreferences;

    .line 357
    new-instance p1, Ltech/ulo/library/utils/ContributionPrompter$onSubscriptionSupportedChecked$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ContributionPrompter$onSubscriptionSupportedChecked$1;-><init>(Ltech/ulo/library/utils/ContributionPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->onSubscriptionSupportedChecked:Lkotlin/jvm/functions/Function1;

    .line 361
    new-instance p1, Ltech/ulo/library/utils/ContributionPrompter$onEntitledSubPurchases$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ContributionPrompter$onEntitledSubPurchases$1;-><init>(Ltech/ulo/library/utils/ContributionPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->onEntitledSubPurchases:Lkotlin/jvm/functions/Function1;

    .line 365
    new-instance p1, Ltech/ulo/library/utils/ContributionPrompter$onEntitledInAppPurchases$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ContributionPrompter$onEntitledInAppPurchases$1;-><init>(Ltech/ulo/library/utils/ContributionPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->onEntitledInAppPurchases:Lkotlin/jvm/functions/Function1;

    .line 369
    new-instance p1, Ltech/ulo/library/utils/ContributionPrompter$onPurchase$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ContributionPrompter$onPurchase$1;-><init>(Ltech/ulo/library/utils/ContributionPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->onPurchase:Lkotlin/jvm/functions/Function1;

    .line 373
    new-instance p1, Ltech/ulo/library/utils/ContributionPrompter$onFlowComplete$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ContributionPrompter$onFlowComplete$1;-><init>(Ltech/ulo/library/utils/ContributionPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->onFlowComplete:Lkotlin/jvm/functions/Function0;

    .line 427
    new-instance p1, Ltech/ulo/library/utils/ContributionPrompter$sendGithubIntent$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ContributionPrompter$sendGithubIntent$1;-><init>(Ltech/ulo/library/utils/ContributionPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->sendGithubIntent:Lkotlin/jvm/functions/Function0;

    .line 433
    new-instance p1, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/ContributionPrompter$userHasResponded$1;-><init>(Ltech/ulo/library/utils/ContributionPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->userHasResponded:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getNumberOfTimesOpenedKey$p(Ltech/ulo/library/utils/ContributionPrompter;)Ljava/lang/String;
    .locals 0

    .line 275
    iget-object p0, p0, Ltech/ulo/library/utils/ContributionPrompter;->numberOfTimesOpenedKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Ltech/ulo/library/utils/ContributionPrompter;)Landroid/content/SharedPreferences;
    .locals 0

    .line 275
    iget-object p0, p0, Ltech/ulo/library/utils/ContributionPrompter;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionSupported$p(Ltech/ulo/library/utils/ContributionPrompter;)Z
    .locals 0

    .line 275
    iget-boolean p0, p0, Ltech/ulo/library/utils/ContributionPrompter;->subscriptionSupported:Z

    return p0
.end method

.method public static final synthetic access$processInAppPurchases(Ltech/ulo/library/utils/ContributionPrompter;Ljava/util/List;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/ContributionPrompter;->processInAppPurchases(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$processPurchase(Ltech/ulo/library/utils/ContributionPrompter;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/ContributionPrompter;->processPurchase(Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method public static final synthetic access$processSubPurchases(Ltech/ulo/library/utils/ContributionPrompter;Ljava/util/List;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/ContributionPrompter;->processSubPurchases(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setSubscriptionSupported$p(Ltech/ulo/library/utils/ContributionPrompter;Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->subscriptionSupported:Z

    return-void
.end method

.method private final askingForContributionIsAppropriate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private final numberOfTimesOpenedIsGreaterThanThreshold()Z
    .locals 4

    .line 455
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ltech/ulo/library/utils/ContributionPrompter;->numberOfTimesOpenedKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 456
    invoke-direct {p0, v0}, Ltech/ulo/library/utils/ContributionPrompter;->setNumberOfTimesOpened(I)V

    .line 457
    iget v3, p0, Ltech/ulo/library/utils/ContributionPrompter;->minimumNumberOfOpensBeforeContributionRequest:I

    if-le v0, v3, :cond_0

    move v2, v1

    :cond_0
    return v2
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

    .line 385
    check-cast p1, Ljava/lang/Iterable;

    .line 507
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

    .line 385
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    .line 386
    :cond_1
    invoke-direct {p0, v0}, Ltech/ulo/library/utils/ContributionPrompter;->setHasMadeInAppPurchase(Z)V

    return-void
.end method

.method private final processPurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 5

    .line 390
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

    .line 393
    :cond_0
    invoke-direct {p0, v2}, Ltech/ulo/library/utils/ContributionPrompter;->setHasMadeSubPurchase(Z)V

    goto :goto_1

    .line 391
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Ltech/ulo/library/utils/ContributionPrompter;->setHasMadeInAppPurchase(Z)V

    .line 394
    :goto_1
    invoke-virtual {p0}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Ltech/ulo/library/R$string;->contribution_thanks:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 395
    invoke-virtual {p0}, Ltech/ulo/library/utils/ContributionPrompter;->getFinishedAction()Lkotlin/jvm/functions/Function0;

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

    .line 379
    check-cast p1, Ljava/lang/Iterable;

    .line 505
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

    .line 379
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    .line 380
    :cond_1
    invoke-direct {p0, v0}, Ltech/ulo/library/utils/ContributionPrompter;->setHasMadeSubPurchase(Z)V

    return-void
.end method

.method private final setHasMadeInAppPurchase(Z)V
    .locals 2

    .line 496
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 497
    iget-object v1, p0, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeInAppPurchaseKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->numberOfTimesOpenedKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 500
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final setHasMadeSubPurchase(Z)V
    .locals 2

    .line 487
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 488
    iget-object v1, p0, Ltech/ulo/library/utils/ContributionPrompter;->hasMadeSubPurchaseKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->numberOfTimesOpenedKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 491
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final setNumberOfTimesOpened(I)V
    .locals 2

    .line 461
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 462
    iget-object v1, p0, Ltech/ulo/library/utils/ContributionPrompter;->numberOfTimesOpenedKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final canAskForPurchase()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAltInitialPosFlow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

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

    .line 425
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->userHasResponded:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getInitialNegBtnText()I
    .locals 1

    .line 403
    sget v0, Ltech/ulo/library/R$string;->button_refuse:I

    return v0
.end method

.method public getInitialPosBtnText()I
    .locals 1

    .line 401
    sget v0, Ltech/ulo/library/R$string;->button_yes:I

    return v0
.end method

.method public getInitialPositiveBtnAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->openContributionView:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getInitialPrompt()Ljava/lang/String;
    .locals 4

    .line 399
    invoke-virtual {p0}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$string;->contribution_primary:I

    invoke-virtual {p0}, Ltech/ulo/library/utils/ContributionPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v2

    sget v3, Ltech/ulo/customlibrary/R$string;->app_name:I

    invoke-virtual {v2, v3}, Ltech/ulo/library/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltech/ulo/library/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 365
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->onEntitledInAppPurchases:Lkotlin/jvm/functions/Function1;

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

    .line 361
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->onEntitledSubPurchases:Lkotlin/jvm/functions/Function1;

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

    .line 373
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->onFlowComplete:Lkotlin/jvm/functions/Function0;

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

    .line 369
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->onPurchase:Lkotlin/jvm/functions/Function1;

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

    .line 357
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->onSubscriptionSupportedChecked:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getPrimaryNegBtnText()I
    .locals 1

    .line 410
    sget v0, Ltech/ulo/library/R$string;->button_refuse:I

    return v0
.end method

.method public getPrimaryPosBtnText()I
    .locals 1

    .line 408
    sget v0, Ltech/ulo/library/R$string;->button_positive:I

    return v0
.end method

.method public getPrimaryPositiveBtnAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->doNothing:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getPrimaryRequest()I
    .locals 1

    .line 406
    sget v0, Ltech/ulo/library/R$string;->contribution_secondary_positive:I

    return v0
.end method

.method public final getPurchaseRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSavedActivity()Ltech/ulo/library/MainActivity;
    .locals 1

    .line 287
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->activity:Ltech/ulo/library/MainActivity;

    return-object v0
.end method

.method public getSavedViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 288
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->savedViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSecondaryNegBtnText()I
    .locals 1

    .line 417
    sget v0, Ltech/ulo/library/R$string;->button_refuse:I

    return v0
.end method

.method public getSecondaryPosBtnText()I
    .locals 1

    .line 415
    sget v0, Ltech/ulo/library/R$string;->button_yes:I

    return v0
.end method

.method public getSecondaryPositiveBtnAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->sendGithubIntent:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getSecondaryRequest()I
    .locals 1

    .line 413
    sget v0, Ltech/ulo/library/R$string;->contribution_secondary_negative:I

    return v0
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

.method public final setCanAskForPurchase(Z)V
    .locals 2

    .line 480
    iget-object v0, p0, Ltech/ulo/library/utils/ContributionPrompter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 481
    iget-object v1, p0, Ltech/ulo/library/utils/ContributionPrompter;->canAskForPurchaseKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setPurchaseRequired(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->purchaseRequired:Z

    return-void
.end method

.method public setSavedViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .line 288
    iput-object p1, p0, Ltech/ulo/library/utils/ContributionPrompter;->savedViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method public showView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 275
    invoke-static {p0, p1}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls;->showView(Ltech/ulo/library/utils/UserPrompter;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public viewShouldBeShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
