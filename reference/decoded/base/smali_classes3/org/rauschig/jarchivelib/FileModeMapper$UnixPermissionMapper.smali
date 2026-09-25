.class public Lorg/rauschig/jarchivelib/FileModeMapper$UnixPermissionMapper;
.super Lorg/rauschig/jarchivelib/FileModeMapper;
.source "FileModeMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rauschig/jarchivelib/FileModeMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnixPermissionMapper"
.end annotation


# static fields
.field public static final UNIX_PERMISSION_MASK:I = 0x1ff


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/FileModeMapper;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method

.method private chmod(ILjava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileModeMapper$UnixPermissionMapper;->getChmodCommand()Lorg/rauschig/jarchivelib/FileModeMapper$ChmodCommand;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/rauschig/jarchivelib/FileModeMapper$ChmodCommand;->chmod(ILjava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-static {}, Lorg/rauschig/jarchivelib/FileModeMapper;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not set file permissions of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ". Exception was: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getArchiveEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 93
    invoke-super {p0}, Lorg/rauschig/jarchivelib/FileModeMapper;->getArchiveEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getChmodCommand()Lorg/rauschig/jarchivelib/FileModeMapper$ChmodCommand;
    .locals 1

    .line 114
    new-instance v0, Lorg/rauschig/jarchivelib/FileModeMapper$FileSystemPreferencesReflectionChmodCommand;

    invoke-direct {v0}, Lorg/rauschig/jarchivelib/FileModeMapper$FileSystemPreferencesReflectionChmodCommand;-><init>()V

    return-object v0
.end method

.method public getMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileModeMapper$UnixPermissionMapper;->getArchiveEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/rauschig/jarchivelib/AttributeAccessor;->create(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Lorg/rauschig/jarchivelib/AttributeAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/rauschig/jarchivelib/AttributeAccessor;->getMode()I

    move-result v0

    return v0
.end method

.method public map(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileModeMapper$UnixPermissionMapper;->getMode()I

    move-result v0

    and-int/lit16 v0, v0, 0x1ff

    if-lez v0, :cond_0

    .line 105
    invoke-direct {p0, v0, p1}, Lorg/rauschig/jarchivelib/FileModeMapper$UnixPermissionMapper;->chmod(ILjava/io/File;)V

    :cond_0
    return-void
.end method
