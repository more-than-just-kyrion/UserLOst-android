.class public final Ltech/ulo/library/model/state/GenerateDownloads;
.super Ltech/ulo/library/model/state/SessionStartupEvent;
.source "SessionStartupFsm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J#\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltech/ulo/library/model/state/GenerateDownloads;",
        "Ltech/ulo/library/model/state/SessionStartupEvent;",
        "filesystem",
        "Ltech/ulo/library/model/entities/Filesystem;",
        "assetList",
        "",
        "Ltech/ulo/library/model/entities/Asset;",
        "(Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;)V",
        "getAssetList",
        "()Ljava/util/List;",
        "getFilesystem",
        "()Ltech/ulo/library/model/entities/Filesystem;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final assetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private final filesystem:Ltech/ulo/library/model/entities/Filesystem;


# direct methods
.method public constructor <init>(Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Asset;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filesystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 370
    invoke-direct {p0, v0}, Ltech/ulo/library/model/state/SessionStartupEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ltech/ulo/library/model/state/GenerateDownloads;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iput-object p2, p0, Ltech/ulo/library/model/state/GenerateDownloads;->assetList:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/model/state/GenerateDownloads;Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;ILjava/lang/Object;)Ltech/ulo/library/model/state/GenerateDownloads;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Ltech/ulo/library/model/state/GenerateDownloads;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ltech/ulo/library/model/state/GenerateDownloads;->assetList:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltech/ulo/library/model/state/GenerateDownloads;->copy(Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;)Ltech/ulo/library/model/state/GenerateDownloads;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltech/ulo/library/model/entities/Filesystem;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/model/state/GenerateDownloads;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Asset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltech/ulo/library/model/state/GenerateDownloads;->assetList:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;)Ltech/ulo/library/model/state/GenerateDownloads;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/ulo/library/model/entities/Filesystem;",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Asset;",
            ">;)",
            "Ltech/ulo/library/model/state/GenerateDownloads;"
        }
    .end annotation

    const-string v0, "filesystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltech/ulo/library/model/state/GenerateDownloads;

    invoke-direct {v0, p1, p2}, Ltech/ulo/library/model/state/GenerateDownloads;-><init>(Ltech/ulo/library/model/entities/Filesystem;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/model/state/GenerateDownloads;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/model/state/GenerateDownloads;

    iget-object v1, p0, Ltech/ulo/library/model/state/GenerateDownloads;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iget-object v3, p1, Ltech/ulo/library/model/state/GenerateDownloads;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltech/ulo/library/model/state/GenerateDownloads;->assetList:Ljava/util/List;

    iget-object p1, p1, Ltech/ulo/library/model/state/GenerateDownloads;->assetList:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAssetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/ulo/library/model/entities/Asset;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Ltech/ulo/library/model/state/GenerateDownloads;->assetList:Ljava/util/List;

    return-object v0
.end method

.method public final getFilesystem()Ltech/ulo/library/model/entities/Filesystem;
    .locals 1

    .line 370
    iget-object v0, p0, Ltech/ulo/library/model/state/GenerateDownloads;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltech/ulo/library/model/state/GenerateDownloads;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    invoke-virtual {v0}, Ltech/ulo/library/model/entities/Filesystem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/ulo/library/model/state/GenerateDownloads;->assetList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ltech/ulo/library/model/state/GenerateDownloads;->filesystem:Ltech/ulo/library/model/entities/Filesystem;

    iget-object v1, p0, Ltech/ulo/library/model/state/GenerateDownloads;->assetList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GenerateDownloads(filesystem="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", assetList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
