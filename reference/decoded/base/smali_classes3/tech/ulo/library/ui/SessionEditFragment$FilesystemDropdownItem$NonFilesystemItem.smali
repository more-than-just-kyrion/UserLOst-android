.class public final Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;
.super Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem;
.source "SessionEditFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonFilesystemItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;",
        "Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem;",
        "text",
        "",
        "(Ljava/lang/String;)V",
        "getText",
        "()Ljava/lang/String;",
        "component1",
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
.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->text:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;Ljava/lang/String;ILjava/lang/Object;)Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->text:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->copy(Ljava/lang/String;)Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;

    invoke-direct {v0, p1}, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;

    iget-object v1, p0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->text:Ljava/lang/String;

    iget-object p1, p1, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->text:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Ltech/ulo/library/ui/SessionEditFragment$FilesystemDropdownItem$NonFilesystemItem;->text:Ljava/lang/String;

    return-object v0
.end method
