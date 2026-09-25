.class public abstract Ltech/ulo/library/model/state/AppsStartupState;
.super Ljava/lang/Object;
.source "AppsStartupFsm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0016\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltech/ulo/library/model/state/AppsStartupState;",
        "",
        "()V",
        "Ltech/ulo/library/model/state/AppDatabaseEntriesSynced;",
        "Ltech/ulo/library/model/state/AppHasDisplayPreferencesSet;",
        "Ltech/ulo/library/model/state/AppHasServiceTypePreferencesSet;",
        "Ltech/ulo/library/model/state/AppRequiresDisplayPreferences;",
        "Ltech/ulo/library/model/state/AppRequiresServiceTypePreferences;",
        "Ltech/ulo/library/model/state/AppScriptCopyFailed;",
        "Ltech/ulo/library/model/state/AppScriptCopySucceeded;",
        "Ltech/ulo/library/model/state/AppsFilesystemHasCredentials;",
        "Ltech/ulo/library/model/state/AppsFilesystemHasFlavor;",
        "Ltech/ulo/library/model/state/AppsFilesystemRequiresCredentials;",
        "Ltech/ulo/library/model/state/AppsFilesystemRequiresFlavor;",
        "Ltech/ulo/library/model/state/CopyingAppScript;",
        "Ltech/ulo/library/model/state/DatabaseEntriesFetchFailed;",
        "Ltech/ulo/library/model/state/DatabaseEntriesFetched;",
        "Ltech/ulo/library/model/state/FetchingDatabaseEntries;",
        "Ltech/ulo/library/model/state/IncorrectAppTransition;",
        "Ltech/ulo/library/model/state/PaymentMade;",
        "Ltech/ulo/library/model/state/PaymentRequired;",
        "Ltech/ulo/library/model/state/SyncingDatabaseEntries;",
        "Ltech/ulo/library/model/state/UserContributionCheckComplete;",
        "Ltech/ulo/library/model/state/UserFeedbackCheckComplete;",
        "Ltech/ulo/library/model/state/WaitingForAppSelection;",
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

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/model/state/AppsStartupState;-><init>()V

    return-void
.end method
