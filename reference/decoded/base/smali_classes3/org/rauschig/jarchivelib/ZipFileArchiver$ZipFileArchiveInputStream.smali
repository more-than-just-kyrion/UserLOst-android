.class Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ZipFileArchiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rauschig/jarchivelib/ZipFileArchiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZipFileArchiveInputStream"
.end annotation


# instance fields
.field private currentEntry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private currentEntryStream:Ljava/io/InputStream;

.field private entries:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private file:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->file:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    return-void
.end method

.method private closeCurrentEntryStream()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->getCurrentEntryStream()Ljava/io/InputStream;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->currentEntryStream:Ljava/io/InputStream;

    return-void
.end method

.method private closeFile()V
    .locals 1

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->file:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->entries:Ljava/util/Enumeration;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->file:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntriesInPhysicalOrder()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->entries:Ljava/util/Enumeration;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->entries:Ljava/util/Enumeration;

    return-object v0
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->getCurrentEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->closeCurrentEntryStream()V

    .line 121
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->closeFile()V

    .line 123
    invoke-super {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->close()V

    return-void
.end method

.method public getCurrentEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object v0
.end method

.method public getCurrentEntryStream()Ljava/io/InputStream;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->currentEntryStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 62
    invoke-direct {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->closeCurrentEntryStream()V

    .line 64
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->file:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->currentEntryStream:Ljava/io/InputStream;

    .line 67
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    return-object v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->getCurrentEntryStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->getCurrentEntryStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;->count(I)V

    return p1
.end method
