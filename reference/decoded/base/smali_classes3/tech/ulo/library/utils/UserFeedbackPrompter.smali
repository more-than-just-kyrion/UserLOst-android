.class public final Ltech/ulo/library/utils/UserFeedbackPrompter;
.super Ljava/lang/Object;
.source "UserPrompter.kt"

# interfaces
.implements Ltech/ulo/library/utils/UserPrompter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/utils/UserFeedbackPrompter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0018\u0000 G2\u00020\u0001:\u0001GB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010@\u001a\u00020\u0006H\u0002J\u0008\u0010A\u001a\u00020\u0006H\u0002J\u0008\u0010B\u001a\u00020\u0006H\u0002J\u0008\u0010C\u001a\u00020\u0006H\u0002J\u0010\u0010D\u001a\u00020\r2\u0006\u0010E\u001a\u00020\u0012H\u0002J\u0008\u0010F\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0010R\u0014\u0010\u0019\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0012X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\n \"*\u0004\u0018\u00010!0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010#\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0014R\u0014\u0010%\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0014R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0010R\u0014\u0010)\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0014R\u0014\u0010+\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u0014\u00104\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u0014R\u0014\u00106\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u0014R\u001a\u00108\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u0010R\u0014\u0010:\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u0014R\u0014\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Ltech/ulo/library/utils/UserFeedbackPrompter;",
        "Ltech/ulo/library/utils/UserPrompter;",
        "activity",
        "Ltech/ulo/library/MainActivity;",
        "(Ltech/ulo/library/MainActivity;)V",
        "altInitialPosFlow",
        "",
        "getAltInitialPosFlow",
        "()Z",
        "dateTimeFirstOpenKey",
        "",
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
        "getInitialPrompt",
        "()Ljava/lang/String;",
        "millisecondsInThreeDays",
        "",
        "minimumNumberOfOpensBeforeReviewRequest",
        "numberOfTimesOpenedKey",
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
        "sendReviewIntent",
        "userGaveFeedbackKey",
        "userHasGivenFeedback",
        "askingForFeedbackIsAppropriate",
        "getIsSufficientTimeElapsedSinceFirstOpen",
        "getUserGaveFeedback",
        "numberOfTimesOpenedIsGreaterThanThreshold",
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
.field public static final Companion:Ltech/ulo/library/utils/UserFeedbackPrompter$Companion;

.field public static final prefString:Ljava/lang/String; = "usage"


# instance fields
.field private final activity:Ltech/ulo/library/MainActivity;

.field private final dateTimeFirstOpenKey:Ljava/lang/String;

.field private final doNothing:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final millisecondsInThreeDays:J

.field private final minimumNumberOfOpensBeforeReviewRequest:I

.field private final numberOfTimesOpenedKey:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;

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

.field private final sendReviewIntent:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final userGaveFeedbackKey:Ljava/lang/String;

.field private final userHasGivenFeedback:Lkotlin/jvm/functions/Function0;
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

    new-instance v0, Ltech/ulo/library/utils/UserFeedbackPrompter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/utils/UserFeedbackPrompter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/utils/UserFeedbackPrompter;->Companion:Ltech/ulo/library/utils/UserFeedbackPrompter$Companion;

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/MainActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->activity:Ltech/ulo/library/MainActivity;

    .line 100
    const-string v0, "usage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltech/ulo/library/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->prefs:Landroid/content/SharedPreferences;

    .line 102
    const-string p1, "numberOfTimesOpened"

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->numberOfTimesOpenedKey:Ljava/lang/String;

    .line 103
    const-string p1, "userGaveFeedback"

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->userGaveFeedbackKey:Ljava/lang/String;

    .line 104
    const-string p1, "dateTimeFirstOpen"

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->dateTimeFirstOpenKey:Ljava/lang/String;

    const-wide/32 v0, 0xf731400

    .line 105
    iput-wide v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->millisecondsInThreeDays:J

    const/4 p1, 0x3

    .line 106
    iput p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->minimumNumberOfOpensBeforeReviewRequest:I

    .line 108
    sget-object p1, Ltech/ulo/library/utils/UserFeedbackPrompter$doNothing$1;->INSTANCE:Ltech/ulo/library/utils/UserFeedbackPrompter$doNothing$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->doNothing:Lkotlin/jvm/functions/Function0;

    .line 147
    new-instance p1, Ltech/ulo/library/utils/UserFeedbackPrompter$sendReviewIntent$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/UserFeedbackPrompter$sendReviewIntent$1;-><init>(Ltech/ulo/library/utils/UserFeedbackPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->sendReviewIntent:Lkotlin/jvm/functions/Function0;

    .line 153
    new-instance p1, Ltech/ulo/library/utils/UserFeedbackPrompter$sendGithubIntent$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/UserFeedbackPrompter$sendGithubIntent$1;-><init>(Ltech/ulo/library/utils/UserFeedbackPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->sendGithubIntent:Lkotlin/jvm/functions/Function0;

    .line 159
    new-instance p1, Ltech/ulo/library/utils/UserFeedbackPrompter$userHasGivenFeedback$1;

    invoke-direct {p1, p0}, Ltech/ulo/library/utils/UserFeedbackPrompter$userHasGivenFeedback$1;-><init>(Ltech/ulo/library/utils/UserFeedbackPrompter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->userHasGivenFeedback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Ltech/ulo/library/utils/UserFeedbackPrompter;)Ltech/ulo/library/MainActivity;
    .locals 0

    .line 96
    iget-object p0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->activity:Ltech/ulo/library/MainActivity;

    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Ltech/ulo/library/utils/UserFeedbackPrompter;)Landroid/content/SharedPreferences;
    .locals 0

    .line 96
    iget-object p0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic access$getUserGaveFeedbackKey$p(Ltech/ulo/library/utils/UserFeedbackPrompter;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->userGaveFeedbackKey:Ljava/lang/String;

    return-object p0
.end method

.method private final askingForFeedbackIsAppropriate()Z
    .locals 1

    .line 172
    invoke-direct {p0}, Ltech/ulo/library/utils/UserFeedbackPrompter;->numberOfTimesOpenedIsGreaterThanThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Ltech/ulo/library/utils/UserFeedbackPrompter;->getUserGaveFeedback()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getIsSufficientTimeElapsedSinceFirstOpen()Z
    .locals 4

    .line 177
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->dateTimeFirstOpenKey:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 178
    iget-wide v2, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->millisecondsInThreeDays:J

    add-long/2addr v0, v2

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getUserGaveFeedback()Z
    .locals 3

    .line 198
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->userGaveFeedbackKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final numberOfTimesOpenedIsGreaterThanThreshold()Z
    .locals 4

    .line 184
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->numberOfTimesOpenedKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 185
    invoke-direct {p0, v0}, Ltech/ulo/library/utils/UserFeedbackPrompter;->setNumberOfTimesOpened(I)V

    .line 186
    iget v3, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->minimumNumberOfOpensBeforeReviewRequest:I

    if-le v0, v3, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private final setNumberOfTimesOpened(I)V
    .locals 4

    .line 190
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 191
    iget-object v1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->dateTimeFirstOpenKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    :cond_0
    iget-object v1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->numberOfTimesOpenedKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
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

    .line 145
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->userHasGivenFeedback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getInitialNegBtnText()I
    .locals 1

    .line 123
    sget v0, Ltech/ulo/library/R$string;->button_negative:I

    return v0
.end method

.method public getInitialPosBtnText()I
    .locals 1

    .line 121
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

    .line 116
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->doNothing:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getInitialPrompt()Ljava/lang/String;
    .locals 4

    .line 119
    invoke-virtual {p0}, Ltech/ulo/library/utils/UserFeedbackPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

    move-result-object v0

    sget v1, Ltech/ulo/library/R$string;->review_is_user_enjoying:I

    invoke-virtual {p0}, Ltech/ulo/library/utils/UserFeedbackPrompter;->getSavedActivity()Ltech/ulo/library/MainActivity;

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

    .line 130
    sget v0, Ltech/ulo/library/R$string;->button_refuse:I

    return v0
.end method

.method public getPrimaryPosBtnText()I
    .locals 1

    .line 128
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

    .line 140
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->sendReviewIntent:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getPrimaryRequest()I
    .locals 1

    .line 126
    sget v0, Ltech/ulo/library/R$string;->review_ask_for_rating:I

    return v0
.end method

.method public getSavedActivity()Ltech/ulo/library/MainActivity;
    .locals 1

    .line 111
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->activity:Ltech/ulo/library/MainActivity;

    return-object v0
.end method

.method public getSavedViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 112
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->savedViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getSecondaryNegBtnText()I
    .locals 1

    .line 137
    sget v0, Ltech/ulo/library/R$string;->button_negative:I

    return v0
.end method

.method public getSecondaryPosBtnText()I
    .locals 1

    .line 135
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

    .line 142
    iget-object v0, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->sendGithubIntent:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getSecondaryRequest()I
    .locals 1

    .line 133
    sget v0, Ltech/ulo/library/R$string;->review_ask_for_feedback:I

    return v0
.end method

.method public setSavedViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .line 112
    iput-object p1, p0, Ltech/ulo/library/utils/UserFeedbackPrompter;->savedViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method public showView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 96
    invoke-static {p0, p1}, Ltech/ulo/library/utils/UserPrompter$DefaultImpls;->showView(Ltech/ulo/library/utils/UserPrompter;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public viewShouldBeShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
