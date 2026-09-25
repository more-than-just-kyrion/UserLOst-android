.class public abstract Ltech/ulo/library/model/state/SessionStartupEvent;
.super Ljava/lang/Object;
.source "SessionStartupFsm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0010\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/ulo/library/model/state/SessionStartupEvent;",
        "",
        "()V",
        "Ltech/ulo/library/model/state/AssetDownloadComplete;",
        "Ltech/ulo/library/model/state/AssetExtractionComplete;",
        "Ltech/ulo/library/model/state/AssetExtractionFailed;",
        "Ltech/ulo/library/model/state/CopyDownloadsToLocalStorage;",
        "Ltech/ulo/library/model/state/DownloadAssets;",
        "Ltech/ulo/library/model/state/ExtractFilesystem;",
        "Ltech/ulo/library/model/state/FilesystemExtractionComplete;",
        "Ltech/ulo/library/model/state/FilesystemExtractionFailed;",
        "Ltech/ulo/library/model/state/GenerateDownloads;",
        "Ltech/ulo/library/model/state/ResetSessionState;",
        "Ltech/ulo/library/model/state/RetrieveAssetLists;",
        "Ltech/ulo/library/model/state/SessionSelected;",
        "Ltech/ulo/library/model/state/SyncDownloadState;",
        "Ltech/ulo/library/model/state/VerifyAvailableStorage;",
        "Ltech/ulo/library/model/state/VerifyAvailableStorageComplete;",
        "Ltech/ulo/library/model/state/VerifyFilesystemAssets;",
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
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/model/state/SessionStartupEvent;-><init>()V

    return-void
.end method
