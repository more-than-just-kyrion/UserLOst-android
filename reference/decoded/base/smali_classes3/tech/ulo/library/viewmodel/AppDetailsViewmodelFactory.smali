.class public final Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "AppDetailsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ%\u0010\u000b\u001a\u0002H\u000c\"\u0008\u0008\u0000\u0010\u000c*\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000fH\u0016\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;",
        "sessionDao",
        "Ltech/ulo/library/model/daos/SessionDao;",
        "appDetails",
        "Ltech/ulo/library/utils/AppDetails;",
        "buildVersion",
        "",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "(Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/AppDetails;ILandroid/content/SharedPreferences;)V",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
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


# instance fields
.field private final appDetails:Ltech/ulo/library/utils/AppDetails;

.field private final buildVersion:I

.field private final prefs:Landroid/content/SharedPreferences;

.field private final sessionDao:Ltech/ulo/library/model/daos/SessionDao;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/AppDetails;ILandroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "sessionDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDetails"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    iput-object p1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    iput-object p2, p0, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;->appDetails:Ltech/ulo/library/utils/AppDetails;

    iput p3, p0, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;->buildVersion:I

    iput-object p4, p0, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    new-instance p1, Ltech/ulo/library/viewmodel/AppDetailsViewModel;

    iget-object v0, p0, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;->sessionDao:Ltech/ulo/library/model/daos/SessionDao;

    iget-object v1, p0, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;->appDetails:Ltech/ulo/library/utils/AppDetails;

    iget v2, p0, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;->buildVersion:I

    iget-object v3, p0, Ltech/ulo/library/viewmodel/AppDetailsViewmodelFactory;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0, v1, v2, v3}, Ltech/ulo/library/viewmodel/AppDetailsViewModel;-><init>(Ltech/ulo/library/model/daos/SessionDao;Ltech/ulo/library/utils/AppDetails;ILandroid/content/SharedPreferences;)V

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
