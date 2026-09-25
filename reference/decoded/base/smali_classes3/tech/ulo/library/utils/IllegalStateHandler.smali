.class public final Ltech/ulo/library/utils/IllegalStateHandler;
.super Ljava/lang/Object;
.source "IllegalStateHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltech/ulo/library/utils/IllegalStateHandler;",
        "",
        "()V",
        "getLocalizationData",
        "Ltech/ulo/library/utils/Localization;",
        "state",
        "Ltech/ulo/library/viewmodel/IllegalState;",
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
.field public static final INSTANCE:Ltech/ulo/library/utils/IllegalStateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/ulo/library/utils/IllegalStateHandler;

    invoke-direct {v0}, Ltech/ulo/library/utils/IllegalStateHandler;-><init>()V

    sput-object v0, Ltech/ulo/library/utils/IllegalStateHandler;->INSTANCE:Ltech/ulo/library/utils/IllegalStateHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalizationData(Ltech/ulo/library/viewmodel/IllegalState;)Ltech/ulo/library/utils/Localization;
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p1, Ltech/ulo/library/viewmodel/IllegalStateTransition;

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ltech/ulo/library/utils/LocalizationData;

    sget v1, Ltech/ulo/library/R$string;->illegal_state_transition:I

    check-cast p1, Ltech/ulo/library/viewmodel/IllegalStateTransition;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/IllegalStateTransition;->getTransition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;)V

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, Ltech/ulo/library/viewmodel/TooManySelectionsMadeWhenPermissionsGranted;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 13
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_too_many_selections_when_permissions_granted:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Ltech/ulo/library/viewmodel/NoSelectionsMadeWhenPermissionsGranted;

    if-eqz v0, :cond_2

    .line 15
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_no_selections_when_permissions_granted:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 16
    :cond_2
    instance-of v0, p1, Ltech/ulo/library/viewmodel/NoFilesystemSelectedWhenFlavorSubmitted;

    if-eqz v0, :cond_3

    .line 17
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_no_filesystem_selected_when_flavor_selected:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 18
    :cond_3
    instance-of v0, p1, Ltech/ulo/library/viewmodel/NoFilesystemSelectedWhenCredentialsSubmitted;

    if-eqz v0, :cond_4

    .line 19
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_no_filesystem_selected_when_credentials_selected:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 20
    :cond_4
    instance-of v0, p1, Ltech/ulo/library/viewmodel/NoAppSelectedWhenPreferenceSubmitted;

    if-eqz v0, :cond_5

    .line 21
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_no_app_selected_when_preference_submitted:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 22
    :cond_5
    instance-of v0, p1, Ltech/ulo/library/viewmodel/NoAppSelectedWhenTransitionNecessary;

    if-eqz v0, :cond_6

    .line 23
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_no_app_selected_when_preparation_started:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 24
    :cond_6
    instance-of v0, p1, Ltech/ulo/library/viewmodel/ErrorFetchingAppDatabaseEntries;

    if-eqz v0, :cond_7

    .line 25
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_error_fetching_app_database_entries:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 26
    :cond_7
    instance-of v0, p1, Ltech/ulo/library/viewmodel/ErrorCopyingAppScript;

    if-eqz v0, :cond_8

    .line 27
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_error_copying_app_script:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 28
    :cond_8
    instance-of v0, p1, Ltech/ulo/library/viewmodel/NoSessionSelectedWhenTransitionNecessary;

    if-eqz v0, :cond_9

    .line 29
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_no_session_selected_when_preparation_started:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 30
    :cond_9
    instance-of v0, p1, Ltech/ulo/library/viewmodel/ErrorFetchingAssetLists;

    if-eqz v0, :cond_a

    .line 31
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_error_fetching_asset_lists:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 32
    :cond_a
    instance-of v0, p1, Ltech/ulo/library/viewmodel/ErrorGeneratingDownloads;

    if-eqz v0, :cond_b

    .line 33
    new-instance v0, Ltech/ulo/library/utils/LocalizationData;

    check-cast p1, Ltech/ulo/library/viewmodel/ErrorGeneratingDownloads;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/ErrorGeneratingDownloads;->getErrorId()I

    move-result p1

    invoke-direct {v0, p1, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 34
    :cond_b
    instance-of v0, p1, Ltech/ulo/library/viewmodel/DownloadsDidNotCompleteSuccessfully;

    if-eqz v0, :cond_c

    .line 35
    check-cast p1, Ltech/ulo/library/viewmodel/DownloadsDidNotCompleteSuccessfully;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/DownloadsDidNotCompleteSuccessfully;->getReason()Ltech/ulo/library/utils/DownloadFailureLocalizationData;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 36
    :cond_c
    instance-of v0, p1, Ltech/ulo/library/viewmodel/FailedToCopyAssetsToLocalStorage;

    if-eqz v0, :cond_d

    .line 37
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_failed_to_copy_assets_to_local:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto/16 :goto_0

    .line 38
    :cond_d
    instance-of v0, p1, Ltech/ulo/library/viewmodel/AssetsHaveNotBeenDownloaded;

    if-eqz v0, :cond_e

    .line 39
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_assets_have_not_been_downloaded:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto :goto_0

    .line 40
    :cond_e
    instance-of v0, p1, Ltech/ulo/library/viewmodel/DownloadCacheAccessedWhileEmpty;

    if-eqz v0, :cond_f

    .line 41
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_empty_download_cache_access:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto :goto_0

    .line 42
    :cond_f
    instance-of v0, p1, Ltech/ulo/library/viewmodel/FailedToCopyAssetsToFilesystem;

    if-eqz v0, :cond_10

    .line 43
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_failed_to_copy_assets_to_filesystem:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto :goto_0

    .line 44
    :cond_10
    instance-of v0, p1, Ltech/ulo/library/viewmodel/FailedToExtractFilesystem;

    if-eqz v0, :cond_11

    .line 45
    new-instance v0, Ltech/ulo/library/utils/LocalizationData;

    sget v1, Ltech/ulo/library/R$string;->illegal_state_failed_to_extract_filesystem:I

    check-cast p1, Ltech/ulo/library/viewmodel/FailedToExtractFilesystem;

    invoke-virtual {p1}, Ltech/ulo/library/viewmodel/FailedToExtractFilesystem;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;)V

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto :goto_0

    .line 46
    :cond_11
    instance-of v0, p1, Ltech/ulo/library/viewmodel/FailedToClearSupportFiles;

    if-eqz v0, :cond_12

    .line 47
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_failed_to_clear_support_files:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto :goto_0

    .line 48
    :cond_12
    instance-of v0, p1, Ltech/ulo/library/viewmodel/InsufficientAvailableStorage;

    if-eqz v0, :cond_13

    .line 49
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_insufficient_storage:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    goto :goto_0

    .line 50
    :cond_13
    instance-of p1, p1, Ltech/ulo/library/viewmodel/BusyboxMissing;

    if-eqz p1, :cond_14

    .line 51
    new-instance p1, Ltech/ulo/library/utils/LocalizationData;

    sget v0, Ltech/ulo/library/R$string;->illegal_state_busybox_missing:I

    invoke-direct {p1, v0, v2, v1, v2}, Ltech/ulo/library/utils/LocalizationData;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    check-cast v0, Ltech/ulo/library/utils/Localization;

    :goto_0
    return-object v0

    :cond_14
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
