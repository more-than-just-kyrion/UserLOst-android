.class public abstract Ltech/ulo/library/model/state/SessionStartupState;
.super Ljava/lang/Object;
.source "SessionStartupFsm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\r\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltech/ulo/library/model/state/SessionStartupState;",
        "",
        "()V",
        "Ltech/ulo/library/model/state/AssetRetrievalState;",
        "Ltech/ulo/library/model/state/AssetVerificationState;",
        "Ltech/ulo/library/model/state/AvfSessionSelected;",
        "Ltech/ulo/library/model/state/CopyingFilesLocallyState;",
        "Ltech/ulo/library/model/state/DownloadRequirementsGenerationState;",
        "Ltech/ulo/library/model/state/DownloadingAssetsState;",
        "Ltech/ulo/library/model/state/ExtractionState;",
        "Ltech/ulo/library/model/state/IncorrectSessionTransition;",
        "Ltech/ulo/library/model/state/SessionIsReadyForPreparation;",
        "Ltech/ulo/library/model/state/SessionIsRestartable;",
        "Ltech/ulo/library/model/state/SingleSessionSupported;",
        "Ltech/ulo/library/model/state/StorageVerificationState;",
        "Ltech/ulo/library/model/state/WaitingForSessionSelection;",
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

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/model/state/SessionStartupState;-><init>()V

    return-void
.end method
