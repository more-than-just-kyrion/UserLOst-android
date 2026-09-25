.class public abstract Ltech/ulo/library/model/state/AppsStartupEvent;
.super Ljava/lang/Object;
.source "AppsStartupFsm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0010\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/ulo/library/model/state/AppsStartupEvent;",
        "",
        "()V",
        "Ltech/ulo/library/model/state/AppSelected;",
        "Ltech/ulo/library/model/state/CheckAppSessionDisplayPreferences;",
        "Ltech/ulo/library/model/state/CheckAppSessionServiceTypePreferences;",
        "Ltech/ulo/library/model/state/CheckAppsFilesystemCredentials;",
        "Ltech/ulo/library/model/state/CheckAppsFilesystemFlavor;",
        "Ltech/ulo/library/model/state/CheckPayment;",
        "Ltech/ulo/library/model/state/CopyAppScriptToFilesystem;",
        "Ltech/ulo/library/model/state/ResetAppState;",
        "Ltech/ulo/library/model/state/SubmitAppSessionDisplayPreferences;",
        "Ltech/ulo/library/model/state/SubmitAppSessionServiceTypePreferences;",
        "Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;",
        "Ltech/ulo/library/model/state/SubmitAppsFilesystemFlavor;",
        "Ltech/ulo/library/model/state/SubmitPayment;",
        "Ltech/ulo/library/model/state/SyncDatabaseEntries;",
        "Ltech/ulo/library/model/state/UserContributionChecked;",
        "Ltech/ulo/library/model/state/UserFeedbackChecked;",
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

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/model/state/AppsStartupEvent;-><init>()V

    return-void
.end method
