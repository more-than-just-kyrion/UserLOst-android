.class public abstract Ltech/ulo/library/viewmodel/State;
.super Ljava/lang/Object;
.source "MainActivityViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0008\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/State;",
        "",
        "()V",
        "Ltech/ulo/library/viewmodel/CanOnlyStartSingleSession;",
        "Ltech/ulo/library/viewmodel/IllegalState;",
        "Ltech/ulo/library/viewmodel/ProgressBarUpdateState;",
        "Ltech/ulo/library/viewmodel/SessionCanBePrepared;",
        "Ltech/ulo/library/viewmodel/SessionCanBeRestarted;",
        "Ltech/ulo/library/viewmodel/SessionCanBeStarted;",
        "Ltech/ulo/library/viewmodel/UserInputRequiredState;",
        "Ltech/ulo/library/viewmodel/WaitingForInput;",
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

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/viewmodel/State;-><init>()V

    return-void
.end method
