.class final Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;
.super Ljava/lang/Object;
.source "SessionListFragmentDirections.kt"

# interfaces
.implements Landroidx/navigation/NavDirections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/ui/SessionListFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionSessionListToSessionEdit"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;",
        "Landroidx/navigation/NavDirections;",
        "session",
        "Ltech/ulo/library/model/entities/Session;",
        "editExisting",
        "",
        "(Ltech/ulo/library/model/entities/Session;Z)V",
        "actionId",
        "",
        "getActionId",
        "()I",
        "arguments",
        "Landroid/os/Bundle;",
        "getArguments",
        "()Landroid/os/Bundle;",
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

.field private final editExisting:Z

.field private final session:Ltech/ulo/library/model/entities/Session;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;-><init>(Ltech/ulo/library/model/entities/Session;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ltech/ulo/library/model/entities/Session;Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    .line 16
    iput-boolean p2, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->editExisting:Z

    .line 18
    sget p1, Ltech/ulo/library/R$id;->action_session_list_to_session_edit:I

    iput p1, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->actionId:I

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

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;-><init>(Ltech/ulo/library/model/entities/Session;Z)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;Ltech/ulo/library/model/entities/Session;ZILjava/lang/Object;)Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->editExisting:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->copy(Ltech/ulo/library/model/entities/Session;Z)Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltech/ulo/library/model/entities/Session;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->editExisting:Z

    return v0
.end method

.method public final copy(Ltech/ulo/library/model/entities/Session;Z)Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;
    .locals 1

    new-instance v0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;

    invoke-direct {v0, p1, p2}, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;-><init>(Ltech/ulo/library/model/entities/Session;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;

    iget-object v1, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    iget-object v3, p1, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->editExisting:Z

    iget-boolean p1, p1, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->editExisting:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getActionId()I
    .locals 1

    .line 18
    iget v0, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->actionId:I

    return v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 4

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Ltech/ulo/library/model/entities/Session;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "session"

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const-class v1, Ljava/io/Serializable;

    const-class v3, Ltech/ulo/library/model/entities/Session;

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 29
    :cond_1
    :goto_0
    const-string v1, "editExisting"

    iget-boolean v2, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->editExisting:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final getEditExisting()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->editExisting:Z

    return v0
.end method

.method public final getSession()Ltech/ulo/library/model/entities/Session;
    .locals 1

    .line 15
    iget-object v0, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Session;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->editExisting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->session:Ltech/ulo/library/model/entities/Session;

    iget-boolean v1, p0, Ltech/ulo/library/ui/SessionListFragmentDirections$ActionSessionListToSessionEdit;->editExisting:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActionSessionListToSessionEdit(session="

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
