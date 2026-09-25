.class Lorg/rauschig/jarchivelib/CommonsArchiveStream;
.super Lorg/rauschig/jarchivelib/ArchiveStream;
.source "CommonsArchiveStream.java"


# instance fields
.field private stream:Lorg/apache/commons/compress/archivers/ArchiveInputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/ArchiveStream;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/rauschig/jarchivelib/CommonsArchiveStream;->stream:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-super {p0}, Lorg/rauschig/jarchivelib/ArchiveStream;->close()V

    .line 58
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveStream;->stream:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->close()V

    return-void
.end method

.method protected createNextEntry()Lorg/rauschig/jarchivelib/ArchiveEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveStream;->stream:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;

    invoke-direct {v1, p0, v0}, Lorg/rauschig/jarchivelib/CommonsArchiveEntry;-><init>(Lorg/rauschig/jarchivelib/ArchiveStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveStream;->stream:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveStream;->stream:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiveStream;->stream:Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->read([BII)I

    move-result p1

    return p1
.end method
