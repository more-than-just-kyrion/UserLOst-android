.class public final Ltech/ulo/library/ui/AppsListFragmentDirections$Companion;
.super Ljava/lang/Object;
.source "AppsListFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/ui/AppsListFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Ltech/ulo/library/ui/AppsListFragmentDirections$Companion;",
        "",
        "()V",
        "actionAppListToAppDetails",
        "Landroidx/navigation/NavDirections;",
        "app",
        "Ltech/ulo/library/model/entities/App;",
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/ulo/library/ui/AppsListFragmentDirections$Companion;-><init>()V

    return-void
.end method

.method public static synthetic actionAppListToAppDetails$default(Ltech/ulo/library/ui/AppsListFragmentDirections$Companion;Ltech/ulo/library/model/entities/App;ILjava/lang/Object;)Landroidx/navigation/NavDirections;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/AppsListFragmentDirections$Companion;->actionAppListToAppDetails(Ltech/ulo/library/model/entities/App;)Landroidx/navigation/NavDirections;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final actionAppListToAppDetails(Ltech/ulo/library/model/entities/App;)Landroidx/navigation/NavDirections;
    .locals 1

    .line 33
    new-instance v0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;

    invoke-direct {v0, p1}, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;-><init>(Ltech/ulo/library/model/entities/App;)V

    check-cast v0, Landroidx/navigation/NavDirections;

    return-object v0
.end method
