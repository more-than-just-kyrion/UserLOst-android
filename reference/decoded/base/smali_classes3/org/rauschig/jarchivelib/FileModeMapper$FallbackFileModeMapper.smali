.class public Lorg/rauschig/jarchivelib/FileModeMapper$FallbackFileModeMapper;
.super Lorg/rauschig/jarchivelib/FileModeMapper;
.source "FileModeMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rauschig/jarchivelib/FileModeMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FallbackFileModeMapper"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/FileModeMapper;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getArchiveEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 77
    invoke-super {p0}, Lorg/rauschig/jarchivelib/FileModeMapper;->getArchiveEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
