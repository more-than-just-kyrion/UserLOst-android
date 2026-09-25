.class public abstract Lorg/rauschig/jarchivelib/ArchiveStream;
.super Ljava/io/InputStream;
.source "ArchiveStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private closed:Z

.field private currentEntry:Lorg/rauschig/jarchivelib/ArchiveEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

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

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lorg/rauschig/jarchivelib/ArchiveStream;->closed:Z

    return-void
.end method

.method protected abstract createNextEntry()Lorg/rauschig/jarchivelib/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getCurrentEntry()Lorg/rauschig/jarchivelib/ArchiveEntry;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ArchiveStream;->currentEntry:Lorg/rauschig/jarchivelib/ArchiveEntry;

    return-object v0
.end method

.method public getNextEntry()Lorg/rauschig/jarchivelib/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/ArchiveStream;->createNextEntry()Lorg/rauschig/jarchivelib/ArchiveEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/rauschig/jarchivelib/ArchiveStream;->currentEntry:Lorg/rauschig/jarchivelib/ArchiveEntry;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lorg/rauschig/jarchivelib/ArchiveStream;->closed:Z

    return v0
.end method
