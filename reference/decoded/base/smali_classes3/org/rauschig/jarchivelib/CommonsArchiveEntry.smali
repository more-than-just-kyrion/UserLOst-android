.class Lorg/rauschig/jarchivelib/CommonsArchiveEntry;
.super Ljava/lang/Object;
.source "CommonsArchiveEntry.java"

# interfaces
.implements Lorg/rauschig/jarchivelib/ArchiveEntry;


# instance fields
.field private entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

.field private stream:Lorg/rauschig/jarchivelib/ArchiveStream;


# direct methods
.method constructor <init>(Lorg/rauschig/jarchivelib/ArchiveStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->stream:Lorg/rauschig/jarchivelib/ArchiveStream;

    .line 39
    iput-object p2, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-void
.end method

.method private assertState()V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->stream:Lorg/rauschig/jarchivelib/ArchiveStream;

    invoke-virtual {v0}, Lorg/rauschig/jarchivelib/ArchiveStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->stream:Lorg/rauschig/jarchivelib/ArchiveStream;

    invoke-virtual {v0}, Lorg/rauschig/jarchivelib/ArchiveStream;->getCurrentEntry()Lorg/rauschig/jarchivelib/ArchiveEntry;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal stream pointer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream has already been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public extract(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->assertState()V

    .line 69
    invoke-static {p1}, Lorg/rauschig/jarchivelib/IOUtils;->requireDirectory(Ljava/io/File;)V

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-interface {v1}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 77
    iget-object p1, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->stream:Lorg/rauschig/jarchivelib/ArchiveStream;

    invoke-static {p1, v0}, Lorg/rauschig/jarchivelib/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    .line 80
    :goto_0
    iget-object p1, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-static {p1, v0}, Lorg/rauschig/jarchivelib/FileModeMapper;->map(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/File;)V

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->assertState()V

    .line 57
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->assertState()V

    .line 45
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->assertState()V

    .line 51
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->assertState()V

    .line 63
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v0

    return v0
.end method
