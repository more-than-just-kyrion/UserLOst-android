.class public final Ltech/ulo/library/ui/SessionEditFragmentArgs;
.super Ljava/lang/Object;
.source "SessionEditFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/ulo/library/ui/SessionEditFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001b\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Ltech/ulo/library/ui/SessionEditFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "session",
        "Ltech/ulo/library/model/entities/Session;",
        "editExisting",
        "",
        "(Ltech/ulo/library/model/entities/Session;Z)V",
        "getEditExisting",
        "()Z",
        "getSession",
        "()Ltech/ulo/library/model/entities/Session;",
        "component1",
        "component2",
        "copy",
        "equals",
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
.field public static final Companion:Ltech/ulo/library/ui/SessionEditFragmentArgs$Companion;


# instance fields
.field private final editExisting:Z

.field private final session:Ltech/ulo/library/model/entities/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/ulo/library/ui/SessionEditFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/ulo/library/ui/SessionEditFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->Companion:Ltech/ulo/library/ui/SessionEditFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Ltech/ulo/library/ui/SessionEditFragmentArgs;-><init>(Ltech/ulo/library/model/entities/Session;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/model/entities/Session;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    .line 17
    iput-boolean p2, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    return-void
.end method

.method public synthetic constructor <init>(Ltech/ulo/library/model/entities/Session;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ui/SessionEditFragmentArgs;-><init>(Ltech/ulo/library/model/entities/Session;Z)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/ui/SessionEditFragmentArgs;Ltech/ulo/library/model/entities/Session;ZILjava/lang/Object;)Ltech/ulo/library/ui/SessionEditFragmentArgs;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/ui/SessionEditFragmentArgs;->copy(Ltech/ulo/library/model/entities/Session;Z)Ltech/ulo/library/ui/SessionEditFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Ltech/ulo/library/ui/SessionEditFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->Companion:Ltech/ulo/library/ui/SessionEditFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Ltech/ulo/library/ui/SessionEditFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Ltech/ulo/library/ui/SessionEditFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Ltech/ulo/library/ui/SessionEditFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->Companion:Ltech/ulo/library/ui/SessionEditFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Ltech/ulo/library/ui/SessionEditFragmentArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Ltech/ulo/library/ui/SessionEditFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltech/ulo/library/model/entities/Session;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    return v0
.end method

.method public final copy(Ltech/ulo/library/model/entities/Session;Z)Ltech/ulo/library/ui/SessionEditFragmentArgs;
    .locals 1

    new-instance v0, Ltech/ulo/library/ui/SessionEditFragmentArgs;

    invoke-direct {v0, p1, p2}, Ltech/ulo/library/ui/SessionEditFragmentArgs;-><init>(Ltech/ulo/library/model/entities/Session;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/ui/SessionEditFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/ui/SessionEditFragmentArgs;

    iget-object v1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    iget-object v3, p1, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    iget-boolean p1, p1, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEditExisting()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    return v0
.end method

.method public final getSession()Ltech/ulo/library/model/entities/Session;
    .locals 1

    .line 16
    iget-object v0, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Session;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "session"

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const-class v1, Ljava/io/Serializable;

    const-class v3, Ltech/ulo/library/model/entities/Session;

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 27
    :cond_1
    :goto_0
    const-string v1, "editExisting"

    iget-boolean v2, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 4

    .line 33
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 34
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "session"

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-class v1, Ljava/io/Serializable;

    const-class v3, Ltech/ulo/library/model/entities/Session;

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    :cond_1
    :goto_0
    iget-boolean v1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "editExisting"

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->session:Ltech/ulo/library/model/entities/Session;

    iget-boolean v1, p0, Ltech/ulo/library/ui/SessionEditFragmentArgs;->editExisting:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SessionEditFragmentArgs(session="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", editExisting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
