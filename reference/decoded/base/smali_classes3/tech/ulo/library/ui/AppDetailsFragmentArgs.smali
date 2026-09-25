.class public final Ltech/ulo/library/ui/AppDetailsFragmentArgs;
.super Ljava/lang/Object;
.source "AppDetailsFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/ui/AppDetailsFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\u0008\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Ltech/ulo/library/ui/AppDetailsFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "app",
        "Ltech/ulo/library/model/entities/App;",
        "(Ltech/ulo/library/model/entities/App;)V",
        "getApp",
        "()Ltech/ulo/library/model/entities/App;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toBundle",
        "Landroid/os/Bundle;",
        "toSavedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Ltech/ulo/library/ui/AppDetailsFragmentArgs$Companion;


# instance fields
.field private final app:Ltech/ulo/library/model/entities/App;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/ui/AppDetailsFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/ui/AppDetailsFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->Companion:Ltech/ulo/library/ui/AppDetailsFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Ltech/ulo/library/ui/AppDetailsFragmentArgs;-><init>(Ltech/ulo/library/model/entities/App;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/model/entities/App;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/model/entities/App;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Ltech/ulo/library/ui/AppDetailsFragmentArgs;-><init>(Ltech/ulo/library/model/entities/App;)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/ui/AppDetailsFragmentArgs;Ltech/ulo/library/model/entities/App;ILjava/lang/Object;)Ltech/ulo/library/ui/AppDetailsFragmentArgs;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    :cond_0
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->copy(Ltech/ulo/library/model/entities/App;)Ltech/ulo/library/ui/AppDetailsFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Ltech/ulo/library/ui/AppDetailsFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->Companion:Ltech/ulo/library/ui/AppDetailsFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Ltech/ulo/library/ui/AppDetailsFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Ltech/ulo/library/ui/AppDetailsFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Ltech/ulo/library/ui/AppDetailsFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->Companion:Ltech/ulo/library/ui/AppDetailsFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Ltech/ulo/library/ui/AppDetailsFragmentArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Ltech/ulo/library/ui/AppDetailsFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltech/ulo/library/model/entities/App;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    return-object v0
.end method

.method public final copy(Ltech/ulo/library/model/entities/App;)Ltech/ulo/library/ui/AppDetailsFragmentArgs;
    .locals 1

    new-instance v0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;

    invoke-direct {v0, p1}, Ltech/ulo/library/ui/AppDetailsFragmentArgs;-><init>(Ltech/ulo/library/model/entities/App;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/ui/AppDetailsFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/ui/AppDetailsFragmentArgs;

    iget-object v1, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    iget-object p1, p1, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getApp()Ltech/ulo/library/model/entities/App;
    .locals 1

    .line 14
    iget-object v0, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ltech/ulo/library/model/entities/App;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Ltech/ulo/library/model/entities/App;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "app"

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const-class v1, Ljava/io/Serializable;

    const-class v3, Ltech/ulo/library/model/entities/App;

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 4

    .line 29
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 30
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Ltech/ulo/library/model/entities/App;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "app"

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-class v1, Ljava/io/Serializable;

    const-class v3, Ltech/ulo/library/model/entities/App;

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ltech/ulo/library/ui/AppDetailsFragmentArgs;->app:Ltech/ulo/library/model/entities/App;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppDetailsFragmentArgs(app="

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
