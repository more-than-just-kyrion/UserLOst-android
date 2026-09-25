.class public final Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;
.super Ltech/ulo/library/model/state/AppsStartupEvent;
.source "AppsStartupFsm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;",
        "Ltech/ulo/library/model/state/AppsStartupEvent;",
        "filesystem",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "username",
        "",
        "password",
        "vncPassword",
        "(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getFilesystem",
        "()Ltech/ulo/library/model/entities/Filesystem;",
        "getPassword",
        "()Ljava/lang/String;",
        "getUsername",
        "getVncPassword",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final filesystem:Ltech/ulo/library/model/entities/Filesystem;

.field private final password:Ljava/lang/String;

.field private final username:Ljava/lang/String;

.field private final vncPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "filesystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vncPassword"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, v0}, Ltech/ulo/library/model/state/AppsStartupEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iput-object p2, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->username:Ljava/lang/String;

    iput-object p3, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->password:Ljava/lang/String;

    iput-object p4, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->vncPassword:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->username:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->password:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->vncPassword:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->copy(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltech/ulo/library/model/entities/Filesystem;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->vncPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;
    .locals 1

    const-string v0, "filesystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vncPassword"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    invoke-direct {v0, p1, p2, p3, p4}, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;-><init>(Ltech/ulo/library/model/entities/Filesystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;

    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iget-object v3, p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->username:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->username:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->password:Ljava/lang/String;

    iget-object v3, p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->password:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->vncPassword:Ljava/lang/String;

    iget-object p1, p1, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->vncPassword:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFilesystem()Ltech/ulo/library/model/entities/Filesystem;
    .locals 1

    .line 278
    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final getVncPassword()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->vncPassword:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Filesystem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->vncPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iget-object v1, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->username:Ljava/lang/String;

    iget-object v2, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->password:Ljava/lang/String;

    iget-object v3, p0, Ltech/ulo/library/model/state/SubmitAppsFilesystemCredentials;->vncPassword:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SubmitAppsFilesystemCredentials(filesystem="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", username="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vncPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
