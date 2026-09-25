.class Lorg/rauschig/jarchivelib/CommonsCompressor;
.super Ljava/lang/Object;
.source "CommonsCompressor.java"

# interfaces
.implements Lorg/rauschig/jarchivelib/Compressor;


# instance fields
.field private final compressionType:Lorg/rauschig/jarchivelib/CompressionType;


# direct methods
.method constructor <init>(Lorg/rauschig/jarchivelib/CompressionType;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/rauschig/jarchivelib/CommonsCompressor;->compressionType:Lorg/rauschig/jarchivelib/CompressionType;

    return-void
.end method

.method private assertDestination(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Can not write to destination "

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 146
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void

    .line 140
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destination is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assertSource(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not read from source "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is a directory."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCompressedFilename(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CommonsCompressor;->getFilenameExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDecompressedFilename(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 117
    invoke-static {p1}, Lorg/rauschig/jarchivelib/FileType;->get(Ljava/io/File;)Lorg/rauschig/jarchivelib/FileType;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lorg/rauschig/jarchivelib/CommonsCompressor;->compressionType:Lorg/rauschig/jarchivelib/CompressionType;

    invoke-virtual {v0}, Lorg/rauschig/jarchivelib/FileType;->getCompressionType()Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Lorg/rauschig/jarchivelib/FileType;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not of type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lorg/rauschig/jarchivelib/CommonsCompressor;->compressionType:Lorg/rauschig/jarchivelib/CompressionType;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compress(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/CommonsCompressor;->assertSource(Ljava/io/File;)V

    .line 54
    invoke-direct {p0, p2}, Lorg/rauschig/jarchivelib/CommonsCompressor;->assertDestination(Ljava/io/File;)V

    .line 56
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/CommonsCompressor;->getCompressedFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    const/4 v0, 0x0

    .line 63
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    invoke-static {p0, p2}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createCompressorOutputStream(Lorg/rauschig/jarchivelib/CommonsCompressor;Ljava/io/File;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;

    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Lorg/rauschig/jarchivelib/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    invoke-static {v0}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    invoke-static {v1}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 68
    :goto_0
    :try_start_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 70
    :goto_1
    invoke-static {v0}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    invoke-static {v1}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 72
    throw p1
.end method

.method public decompress(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/CommonsCompressor;->assertSource(Ljava/io/File;)V

    .line 78
    invoke-direct {p0, p2}, Lorg/rauschig/jarchivelib/CommonsCompressor;->assertDestination(Ljava/io/File;)V

    .line 80
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/CommonsCompressor;->getDecompressedFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CommonsCompressor;->getCompressionType()Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createCompressorInputStream(Lorg/rauschig/jarchivelib/CompressionType;Ljava/io/File;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 88
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    :try_start_2
    invoke-static {p1, v1}, Lorg/rauschig/jarchivelib/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    invoke-static {p1}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    invoke-static {v1}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v1, v0

    :goto_0
    move-object v0, p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v1, v0

    :goto_1
    move-object v0, p1

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v1, v0

    .line 91
    :goto_2
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p2

    .line 93
    :goto_3
    invoke-static {v0}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    invoke-static {v1}, Lorg/rauschig/jarchivelib/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    throw p2
.end method

.method public decompressingStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CommonsCompressor;->getCompressionType()Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createCompressorInputStream(Lorg/rauschig/jarchivelib/CompressionType;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/compress/compressors/CompressorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 103
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getCompressionType()Lorg/rauschig/jarchivelib/CompressionType;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CommonsCompressor;->compressionType:Lorg/rauschig/jarchivelib/CompressionType;

    return-object v0
.end method

.method public getFilenameExtension()Ljava/lang/String;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CommonsCompressor;->getCompressionType()Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/rauschig/jarchivelib/CompressionType;->getDefaultFileExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
