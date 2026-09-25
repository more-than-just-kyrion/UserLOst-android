.class Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SevenZArchiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rauschig/jarchivelib/SevenZArchiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SevenZInputStream"
.end annotation


# instance fields
.field private file:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZInputStream;->file:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

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

    .line 72
    iget-object v0, p0, Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZInputStream;->file:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V

    return-void
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZInputStream;->file:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZInputStream;->file:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result p1

    return p1
.end method
