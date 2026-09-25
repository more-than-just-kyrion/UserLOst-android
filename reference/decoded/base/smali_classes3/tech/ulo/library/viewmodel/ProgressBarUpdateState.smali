.class public abstract Ltech/ulo/library/viewmodel/ProgressBarUpdateState;
.super Ltech/ulo/library/viewmodel/State;
.source "MainActivityViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\t\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/ProgressBarUpdateState;",
        "Ltech/ulo/library/viewmodel/State;",
        "()V",
        "Ltech/ulo/library/viewmodel/CheckingForAssetsUpdates;",
        "Ltech/ulo/library/viewmodel/ClearingSupportFiles;",
        "Ltech/ulo/library/viewmodel/CopyingDownloads;",
        "Ltech/ulo/library/viewmodel/DownloadProgress;",
        "Ltech/ulo/library/viewmodel/FetchingAssetLists;",
        "Ltech/ulo/library/viewmodel/ProgressBarOperationComplete;",
        "Ltech/ulo/library/viewmodel/StartingSetup;",
        "Ltech/ulo/library/viewmodel/VerifyingAvailableStorage;",
        "Ltech/ulo/library/viewmodel/VerifyingFilesystem;",
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

    .line 587
    invoke-direct {p0, v0}, Ltech/ulo/library/viewmodel/State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/viewmodel/ProgressBarUpdateState;-><init>()V

    return-void
.end method
