.class Lorg/rauschig/jarchivelib/CommonsArchiver;
.super Ljava/lang/Object;
.source "CommonsArchiver.java"

# interfaces
.implements Lorg/rauschig/jarchivelib/Archiver;


# instance fields
.field private final archiveFormat:Lorg/rauschig/jarchivelib/ArchiveFormat;


# direct methods
.method constructor <init>(Lorg/rauschig/jarchivelib/ArchiveFormat;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/rauschig/jarchivelib/CommonsArchiver;->archiveFormat:Lorg/rauschig/jarchivelib/ArchiveFormat;

    return-void
.end method

.method private extract(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 102
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 103
    invoke-static {p1, v1}, Lorg/rauschig/jarchivelib/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    .line 106
    :goto_1
    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileModeMapper;->map(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected assertExtractSource(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Can not extract "

    if-nez v0, :cond_2

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Can not read from source."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". Source is a directory."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-static {p3}, Lorg/rauschig/jarchivelib/IOUtils;->filesContainedIn(Ljava/io/File;)[Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/rauschig/jarchivelib/CommonsArchiver;->create(Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public varargs create(Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p2}, Lorg/rauschig/jarchivelib/IOUtils;->requireDirectory(Ljava/io/File;)V

    .line 57
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CommonsArchiver;->getFilenameExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/rauschig/jarchivelib/CommonsArchiver;->createNewArchiveFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 61
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/rauschig/jarchivelib/CommonsArchiver;->createArchiveOutputStream(Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    invoke-virtual {p0, p3, p2}, Lorg/rauschig/jarchivelib/CommonsArchiver;->writeToArchive([Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    .line 64
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {p2}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 67
    throw p1
.end method

.method protected createArchiveEntry(Ljava/io/File;Ljava/lang/String;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object p2

    .line 260
    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 262
    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 265
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    :try_start_1
    invoke-static {v0, p3}, Lorg/rauschig/jarchivelib/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    invoke-static {v0}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {p2}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 269
    throw p1

    .line 272
    :cond_0
    :goto_1
    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V

    return-void
.end method

.method protected createArchiveInputStream(Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    :try_start_0
    invoke-static {p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createArchiveInputStream(Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    :try_start_0
    invoke-static {p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 148
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected createArchiveOutputStream(Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    :try_start_0
    invoke-static {p0, p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createArchiveOutputStream(Lorg/rauschig/jarchivelib/CommonsArchiver;Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 164
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected createNewArchiveFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    return-object p2
.end method

.method public extract(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lorg/rauschig/jarchivelib/CommonsArchiver;->assertExtractSource(Ljava/io/File;)V

    .line 76
    invoke-static {p2}, Lorg/rauschig/jarchivelib/IOUtils;->requireDirectory(Ljava/io/File;)V

    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/rauschig/jarchivelib/CommonsArchiver;->createArchiveInputStream(Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/rauschig/jarchivelib/CommonsArchiver;->extract(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-static {p1}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
    throw p2
.end method

.method public extract(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lorg/rauschig/jarchivelib/CommonsArchiver;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/rauschig/jarchivelib/CommonsArchiver;->extract(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V

    return-void
.end method

.method public getArchiveFormat()Lorg/rauschig/jarchivelib/ArchiveFormat;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsArchiver;->archiveFormat:Lorg/rauschig/jarchivelib/ArchiveFormat;

    return-object v0
.end method

.method public getFilenameExtension()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CommonsArchiver;->getArchiveFormat()Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/rauschig/jarchivelib/ArchiveFormat;->getDefaultFileExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stream(Ljava/io/File;)Lorg/rauschig/jarchivelib/ArchiveStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/rauschig/jarchivelib/CommonsArchiveStream;

    invoke-virtual {p0, p1}, Lorg/rauschig/jarchivelib/CommonsArchiver;->createArchiveInputStream(Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/rauschig/jarchivelib/CommonsArchiveStream;-><init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    return-object v0
.end method

.method protected writeToArchive(Ljava/io/File;[Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 238
    invoke-static {p1, v2}, Lorg/rauschig/jarchivelib/IOUtils;->relativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {p0, v2, v3, p3}, Lorg/rauschig/jarchivelib/CommonsArchiver;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    .line 242
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lorg/rauschig/jarchivelib/CommonsArchiver;->writeToArchive(Ljava/io/File;[Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected writeToArchive([Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 217
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/File;

    aput-object v3, v5, v1

    invoke-virtual {p0, v4, v5, p2}, Lorg/rauschig/jarchivelib/CommonsArchiver;->writeToArchive(Ljava/io/File;[Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " (Permission denied)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
