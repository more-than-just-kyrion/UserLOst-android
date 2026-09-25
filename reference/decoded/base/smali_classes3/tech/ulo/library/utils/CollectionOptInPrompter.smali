.class public final Ltech/ulo/library/utils/CollectionOptInPrompter;
.super Ljava/lang/Object;
.source "UserPrompter.kt"

# interfaces
.implements Ltech/ulo/library/utils/UserPrompter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/CollectionOptInPrompter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserPrompter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserPrompter.kt\ntech/ulo/library/utils/CollectionOptInPrompter\n+ 2 Extensions.kt\ntech/ulo/library/utils/ExtensionsKt\n*L\n1#1,504:1\n49#2:505\n*S KotlinDebug\n*F\n+ 1 UserPrompter.kt\ntech/ulo/library/utils/CollectionOptInPrompter\n*L\n203#1:505\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 <2\u00020\u0001:\u0001<B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010:\u001a\u00020\u0006J\u0008\u0010;\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000eR\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0012R\u0014\u0010!\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0012R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u000eR\u0014\u0010%\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0012R\u0014\u0010\'\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u0014\u00100\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0012R\u0014\u00102\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u0012R\u001a\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u000eR\u0014\u00106\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u0012R\u0014\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Ltech/ulo/library/utils/CollectionOptInPrompter;",
        "Ltech/ulo/library/utils/UserPrompter;",
        "activity",
        "Ltech/ulo/library/MainActivity;",
        "(Ltech/ulo/library/MainActivity;)V",
        "altInitialPosFlow",
        "",
        "getAltInitialPosFlow",
        "()Z",
        "doNothing",
        "Lkotlin/Function0;",
        "",
        "finishedAction",
        "getFinishedAction",
        "()Lkotlin/jvm/functions/Function0;",
        "initialNegBtnText",
        "",
        "getInitialNegBtnText",
        "()I",
        "initialPosBtnText",
        "getInitialPosBtnText",
        "initialPositiveBtnAction",
        "getInitialPositiveBtnAction",
        "initialPrompt",
        "",
        "getInitialPrompt",
        "()Ljava/lang/String;",
        "logger",
        "Ltech/ulo/library/utils/SentryLogger;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "primaryNegBtnText",
        "getPrimaryNegBtnText",
        "primaryPosBtnText",
        "getPrimaryPosBtnText",
        "primaryPositiveBtnAction",
        "getPrimaryPositiveBtnAction",
        "primaryRequest",
        "getPrimaryRequest",
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
        "setOptInOn",
        "userHasBeenPrompted",
        "userHasOptedIn",
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
.field public static final Companion:Ltech/ulo/library/utils/CollectionOptInPrompter$Companion;

.field public static final userHasBeenPromptedToOptIn:Ljava/lang/String; = "opt_in_checked"

.field public static final userHasOptedInPreference:Ljava/lang/String; = "pref_opt_in"


# instance fields
.field private final activity:Ltech/ulo/library/MainActivity;

.field private final doNothing:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ltech/ulo/library/utils/SentryLogger;

.field private final prefs:Landroid/content/SharedPreferences;

.field private savedViewGroup:Landroid/view/ViewGroup;

.field private final setOptInOn:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final userHasBeenPrompted:Lkotlin/jvm/functions/Function0;
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

    new-instance v0, Ltech/ulo/library/utils/CollectionOptInPrompter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/CollectionOptInPrompter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/utils/CollectionOptInPrompter;->Companion:Ltech/ulo/library/utils/CollectionOptInPrompter$Companion;

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/MainActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->activity:Ltech/ulo/library/MainActivity;

    .line 203
    check-cast p1, Landroid/content/Context;

    .line 505
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->prefs:Landroid/content/SharedPreferences;

    .line 204
    new-instance p1, Ltech/ulo/library/utils/SentryLogger;

    invoke-direct {p1}, Ltech/ulo/library/utils/SentryLogger;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->logger:Ltech/ulo/library/utils/SentryLogger;

    .line 206
    sget-object p1, Ltech/ulo/library/utils/CollectionOptInPrompter$doNothing$1;->INSTANCE:Ltech/ulo/library/utils/CollectionOptInPrompter$doNothing$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->doNothing:Lkotlin/jvm/functions/Function0;

    .line 259
    new-instance p1, Ltech/ulo/library/utils/CollectionOptInPrompter$setOptInOn$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/CollectionOptInPrompter$setOptInOn$1;-><init>(Ltech/ulo/library/utils/CollectionOptInPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->setOptInOn:Lkotlin/jvm/functions/Function0;

    .line 267
    new-instance p1, Ltech/ulo/library/utils/CollectionOptInPrompter$userHasBeenPrompted$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/CollectionOptInPrompter$userHasBeenPrompted$1;-><init>(Ltech/ulo/library/utils/CollectionOptInPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->userHasBeenPrompted:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Ltech/ulo/library/utils/CollectionOptInPrompter;)Ltech/ulo/library/MainActivity;
    .locals 0

    .line 202
    iget-object p0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->activity:Ltech/ulo/library/MainActivity;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Ltech/ulo/library/utils/CollectionOptInPrompter;)Ltech/ulo/library/utils/SentryLogger;
    .locals 0

    .line 202
    iget-object p0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->logger:Ltech/ulo/library/utils/SentryLogger;

    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Ltech/ulo/library/utils/CollectionOptInPrompter;)Landroid/content/SharedPreferences;
    .locals 0

    .line 202
    iget-object p0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public getAltInitialPosFlow()Z
    .locals 1

    const/4 v0, 0x0

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

    .line 249
    iget-object v0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->userHasBeenPrompted:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getInitialNegBtnText()I
    .locals 1

    .line 227
    sget v0, Ltech/ulo/library/R$string;->button_negative:I

    return v0
.end method

.method public getInitialPosBtnText()I
    .locals 1

    .line 225
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

    .line 214
    iget-object v0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->doNothing:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getInitialPrompt()Ljava/lang/String;
    .locals 4

    .line 223
    invoke-virtual {p0}, Ltech/ulo/library/utils/CollectionOptInPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$string;->opt_in_help_prompt:I

    invoke-virtual {p0}, Ltech/ulo/library/utils/CollectionOptInPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

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

.method public getPrimaryNegBtnText()I
    .locals 1

    .line 234
    sget v0, Ltech/ulo/library/R$string;->button_negative:I

    return v0
.end method

.method public getPrimaryPosBtnText()I
    .locals 1

    .line 232
    sget v0, Ltech/ulo/library/R$string;->button_yes:I

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

    .line 244
    iget-object v0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->setOptInOn:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getPrimaryRequest()I
    .locals 1

    .line 230
    sget v0, Ltech/ulo/library/R$string;->opt_in_error_collection_prompt:I

    return v0
.end method

.method public getSavedActivity()Ltech/ulo/library/MainActivity;
    .locals 1

    .line 209
    iget-object v0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->activity:Ltech/ulo/library/MainActivity;

    return-object v0
.end method

.method public getSavedViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 210
    iget-object v0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->savedViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSecondaryNegBtnText()I
    .locals 1

    .line 241
    sget v0, Ltech/ulo/library/R$string;->button_refuse:I

    return v0
.end method

.method public getSecondaryPosBtnText()I
    .locals 1

    .line 239
    sget v0, Ltech/ulo/library/R$string;->button_positive:I

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

    .line 246
    iget-object v0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->setOptInOn:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getSecondaryRequest()I
    .locals 1

    .line 237
    sget v0, Ltech/ulo/library/R$string;->opt_in_secondary_prompt:I

    return v0
.end method

.method public setSavedViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .line 210
    iput-object p1, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->savedViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method public showView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 202
    invoke-static {p0, p1}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls;->showView(Ltech/ulo/library/utils/UserPrompter;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final userHasOptedIn()Z
    .locals 3

    .line 256
    iget-object v0, p0, Ltech/ulo/library/utils/CollectionOptInPrompter;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "pref_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public viewShouldBeShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
