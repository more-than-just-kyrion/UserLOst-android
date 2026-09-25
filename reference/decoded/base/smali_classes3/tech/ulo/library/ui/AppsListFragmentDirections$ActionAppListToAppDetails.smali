.class final Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;
.super Ljava/lang/Object;
.source "AppsListFragmentDirections.kt"

# interfaces
.implements Landroidx/navigation/NavDirections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/ui/AppsListFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionAppListToAppDetails"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;",
        "Landroidx/navigation/NavDirections;",
        "app",
        "Ltech/ulo/library/model/entities/App;",
        "(Ltech/ulo/library/model/entities/App;)V",
        "actionId",
        "",
        "getActionId",
        "()I",
        "getApp",
        "()Ltech/ulo/library/model/entities/App;",
        "arguments",
        "Landroid/os/Bundle;",
        "getArguments",
        "()Landroid/os/Bundle;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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
.field private final actionId:I

.field private final app:Ltech/ulo/library/model/entities/App;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;-><init>(Ltech/ulo/library/model/entities/App;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/model/entities/App;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    .line 16
    sget p1, Ltech/ulo/library/R$id;->action_app_list_to_app_details:I

    iput p1, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->actionId:I

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/model/entities/App;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;-><init>(Ltech/ulo/library/model/entities/App;)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;Ltech/ulo/library/model/entities/App;ILjava/lang/Object;)Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    :cond_0
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->copy(Ltech/ulo/library/model/entities/App;)Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltech/ulo/library/model/entities/App;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    return-object v0
.end method

.method public final copy(Ltech/ulo/library/model/entities/App;)Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;
    .locals 1

    new-instance v0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;

    invoke-direct {v0, p1}, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;-><init>(Ltech/ulo/library/model/entities/App;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;

    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    iget-object p1, p1, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getActionId()I
    .locals 1

    .line 16
    iget v0, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->actionId:I

    return v0
.end method

.method public final getApp()Ltech/ulo/library/model/entities/App;
    .locals 1

    .line 14
    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 4

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Ltech/ulo/library/model/entities/App;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "app"

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const-class v1, Ljava/io/Serializable;

    const-class v3, Ltech/ulo/library/model/entities/App;

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ltech/ulo/library/model/entities/App;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ltech/ulo/library/ui/AppsListFragmentDirections$ActionAppListToAppDetails;->app:Ltech/ulo/library/model/entities/App;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ActionAppListToAppDetails(app="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
