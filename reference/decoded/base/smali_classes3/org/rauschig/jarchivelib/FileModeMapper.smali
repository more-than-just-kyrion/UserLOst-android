.class abstract Lorg/rauschig/jarchivelib/FileModeMapper;
.super Ljava/lang/Object;
.source "FileModeMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/rauschig/jarchivelib/FileModeMapper$RuntimeExecChmodCommand;,
        Lorg/rauschig/jarchivelib/FileModeMapper$FileSystemPreferencesReflectionChmodCommand;,
        Lorg/rauschig/jarchivelib/FileModeMapper$ChmodCommand;,
        Lorg/rauschig/jarchivelib/FileModeMapper$UnixPermissionMapper;,
        Lorg/rauschig/jarchivelib/FileModeMapper$FallbackFileModeMapper;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private archiveEntry:Lorg/apache/commons/compress/archivers/ArchiveEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/rauschig/jarchivelib/FileModeMapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/rauschig/jarchivelib/FileModeMapper;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/rauschig/jarchivelib/FileModeMapper;->archiveEntry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 29
    sget-object v0, Lorg/rauschig/jarchivelib/FileModeMapper;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static create(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Lorg/rauschig/jarchivelib/FileModeMapper;
    .locals 2

    .line 64
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lorg/rauschig/jarchivelib/FileModeMapper$FallbackFileModeMapper;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/FileModeMapper$FallbackFileModeMapper;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lorg/rauschig/jarchivelib/FileModeMapper$UnixPermissionMapper;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/FileModeMapper$UnixPermissionMapper;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-object v0
.end method

.method public static map(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lorg/rauschig/jarchivelib/FileModeMapper;->create(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Lorg/rauschig/jarchivelib/FileModeMapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/rauschig/jarchivelib/FileModeMapper;->map(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getArchiveEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/rauschig/jarchivelib/FileModeMapper;->archiveEntry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-object v0
.end method

.method public abstract map(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
