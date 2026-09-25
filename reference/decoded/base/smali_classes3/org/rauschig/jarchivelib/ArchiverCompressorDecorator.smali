.class Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;
.super Ljava/lang/Object;
.source "ArchiverCompressorDecorator.java"

# interfaces
.implements Lorg/rauschig/jarchivelib/Archiver;


# instance fields
.field private archiver:Lorg/rauschig/jarchivelib/CommonsArchiver;

.field private compressor:Lorg/rauschig/jarchivelib/CommonsCompressor;


# direct methods
.method constructor <init>(Lorg/rauschig/jarchivelib/CommonsArchiver;Lorg/rauschig/jarchivelib/CommonsCompressor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->archiver:Lorg/rauschig/jarchivelib/CommonsArchiver;

    .line 48
    iput-object p2, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->compressor:Lorg/rauschig/jarchivelib/CommonsCompressor;

    return-void
.end method

.method private getArchiveFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->getFilenameExtension()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 137
    :cond_0
    iget-object v1, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->archiver:Lorg/rauschig/jarchivelib/CommonsArchiver;

    invoke-virtual {v1}, Lorg/rauschig/jarchivelib/CommonsArchiver;->getFilenameExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->compressor:Lorg/rauschig/jarchivelib/CommonsCompressor;

    invoke-virtual {v0}, Lorg/rauschig/jarchivelib/CommonsCompressor;->getFilenameExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p3}, Lorg/rauschig/jarchivelib/IOUtils;->filesContainedIn(Ljava/io/File;)[Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->create(Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public varargs create(Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p2}, Lorg/rauschig/jarchivelib/IOUtils;->requireDirectory(Ljava/io/File;)V

    .line 60
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->archiver:Lorg/rauschig/jarchivelib/CommonsArchiver;

    invoke-virtual {v1}, Lorg/rauschig/jarchivelib/CommonsArchiver;->getFilenameExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->archiver:Lorg/rauschig/jarchivelib/CommonsArchiver;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p3}, Lorg/rauschig/jarchivelib/CommonsArchiver;->create(Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 65
    new-instance p3, Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->getArchiveFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->compressor:Lorg/rauschig/jarchivelib/CommonsCompressor;

    invoke-virtual {p1, v0, p3}, Lorg/rauschig/jarchivelib/CommonsCompressor;->compress(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p3

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 70
    throw p1
.end method

.method public extract(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {p2}, Lorg/rauschig/jarchivelib/IOUtils;->requireDirectory(Ljava/io/File;)V

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 90
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->archiver:Lorg/rauschig/jarchivelib/CommonsArchiver;

    iget-object v2, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->compressor:Lorg/rauschig/jarchivelib/CommonsCompressor;

    invoke-virtual {v2, v1}, Lorg/rauschig/jarchivelib/CommonsCompressor;->decompressingStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lorg/rauschig/jarchivelib/CommonsArchiver;->extract(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {v1}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 94
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Access control or other error opening %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    :goto_1
    invoke-static {v0}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    throw p1

    .line 84
    :cond_0
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Archive %s does not exist."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public extract(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-static {p2}, Lorg/rauschig/jarchivelib/IOUtils;->requireDirectory(Ljava/io/File;)V

    .line 103
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->archiver:Lorg/rauschig/jarchivelib/CommonsArchiver;

    iget-object v1, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->compressor:Lorg/rauschig/jarchivelib/CommonsCompressor;

    invoke-virtual {v1, p1}, Lorg/rauschig/jarchivelib/CommonsCompressor;->decompressingStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/rauschig/jarchivelib/CommonsArchiver;->extract(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method public getFilenameExtension()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->archiver:Lorg/rauschig/jarchivelib/CommonsArchiver;

    invoke-virtual {v1}, Lorg/rauschig/jarchivelib/CommonsArchiver;->getFilenameExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->compressor:Lorg/rauschig/jarchivelib/CommonsCompressor;

    invoke-virtual {v1}, Lorg/rauschig/jarchivelib/CommonsCompressor;->getFilenameExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stream(Ljava/io/File;)Lorg/rauschig/jarchivelib/ArchiveStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :try_start_0
    new-instance v0, Lorg/rauschig/jarchivelib/CommonsArchiveStream;

    iget-object v1, p0, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;->archiver:Lorg/rauschig/jarchivelib/CommonsArchiver;

    invoke-static {p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createCompressorInputStream(Ljava/io/File;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createArchiveInputStream(Lorg/rauschig/jarchivelib/CommonsArchiver;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/rauschig/jarchivelib/CommonsArchiveStream;-><init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/ArchiveException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 113
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 111
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
