.class public abstract Ltech/ulo/library/model/state/DownloadRequirementsGenerationState;
.super Ltech/ulo/library/model/state/SessionStartupState;
.source "SessionStartupFsm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0003\u0004\u0005\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltech/ulo/library/model/state/DownloadRequirementsGenerationState;",
        "Ltech/ulo/library/model/state/SessionStartupState;",
        "()V",
        "Ltech/ulo/library/model/state/DownloadsRequired;",
        "Ltech/ulo/library/model/state/GeneratingDownloadRequirements;",
        "Ltech/ulo/library/model/state/NoDownloadsRequired;",
        "Ltech/ulo/library/model/state/RemoteUnreachableForGeneration;",
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

    .line 332
    invoke-direct {p0, v0}, Ltech/ulo/library/model/state/SessionStartupState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/model/state/DownloadRequirementsGenerationState;-><init>()V

    return-void
.end method
