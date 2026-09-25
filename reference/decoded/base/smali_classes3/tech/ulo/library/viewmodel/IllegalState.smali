.class public abstract Ltech/ulo/library/viewmodel/IllegalState;
.super Ltech/ulo/library/viewmodel/State;
.source "MainActivityViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0015\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/IllegalState;",
        "Ltech/ulo/library/viewmodel/State;",
        "()V",
        "Ltech/ulo/library/viewmodel/AssetsHaveNotBeenDownloaded;",
        "Ltech/ulo/library/viewmodel/BusyboxMissing;",
        "Ltech/ulo/library/viewmodel/DownloadCacheAccessedWhileEmpty;",
        "Ltech/ulo/library/viewmodel/DownloadsDidNotCompleteSuccessfully;",
        "Ltech/ulo/library/viewmodel/ErrorCopyingAppScript;",
        "Ltech/ulo/library/viewmodel/ErrorFetchingAppDatabaseEntries;",
        "Ltech/ulo/library/viewmodel/ErrorFetchingAssetLists;",
        "Ltech/ulo/library/viewmodel/ErrorGeneratingDownloads;",
        "Ltech/ulo/library/viewmodel/FailedToClearSupportFiles;",
        "Ltech/ulo/library/viewmodel/FailedToCopyAssetsToFilesystem;",
        "Ltech/ulo/library/viewmodel/FailedToCopyAssetsToLocalStorage;",
        "Ltech/ulo/library/viewmodel/FailedToExtractFilesystem;",
        "Ltech/ulo/library/viewmodel/IllegalStateTransition;",
        "Ltech/ulo/library/viewmodel/InsufficientAvailableStorage;",
        "Ltech/ulo/library/viewmodel/NoAppSelectedWhenPreferenceSubmitted;",
        "Ltech/ulo/library/viewmodel/NoAppSelectedWhenTransitionNecessary;",
        "Ltech/ulo/library/viewmodel/NoFilesystemSelectedWhenCredentialsSubmitted;",
        "Ltech/ulo/library/viewmodel/NoFilesystemSelectedWhenFlavorSubmitted;",
        "Ltech/ulo/library/viewmodel/NoSelectionsMadeWhenPermissionsGranted;",
        "Ltech/ulo/library/viewmodel/NoSessionSelectedWhenTransitionNecessary;",
        "Ltech/ulo/library/viewmodel/TooManySelectionsMadeWhenPermissionsGranted;",
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


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 550
    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/viewmodel/IllegalState;-><init>()V

    return-void
.end method
