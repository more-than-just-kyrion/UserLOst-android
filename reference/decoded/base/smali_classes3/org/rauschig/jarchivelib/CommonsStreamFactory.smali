.class final Lorg/rauschig/jarchivelib/CommonsStreamFactory;
.super Ljava/lang/Object;
.source "CommonsStreamFactory.java"


# static fields
.field private static archiveStreamFactory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

.field private static compressorStreamFactory:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    sput-object v0, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->archiveStreamFactory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    .line 50
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;-><init>()V

    sput-object v0, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->compressorStreamFactory:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createArchiveInputStream(Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0
.end method

.method static createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 80
    sget-object v0, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->archiveStreamFactory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0
.end method

.method static createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->archiveStreamFactory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0
.end method

.method static createArchiveInputStream(Lorg/rauschig/jarchivelib/ArchiveFormat;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/ArchiveFormat;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0
.end method

.method static createArchiveInputStream(Lorg/rauschig/jarchivelib/CommonsArchiver;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CommonsArchiver;->getArchiveFormat()Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createArchiveInputStream(Lorg/rauschig/jarchivelib/ArchiveFormat;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0
.end method

.method static createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 100
    sget-object v0, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->archiveStreamFactory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p0

    return-object p0
.end method

.method static createArchiveOutputStream(Lorg/rauschig/jarchivelib/ArchiveFormat;Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/ArchiveFormat;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p0

    return-object p0
.end method

.method static createArchiveOutputStream(Lorg/rauschig/jarchivelib/CommonsArchiver;Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CommonsArchiver;->getArchiveFormat()Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createArchiveOutputStream(Lorg/rauschig/jarchivelib/ArchiveFormat;Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p0

    return-object p0
.end method

.method static createCompressorInputStream(Ljava/io/File;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createCompressorInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p0

    return-object p0
.end method

.method static createCompressorInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 162
    sget-object v0, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->compressorStreamFactory:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->createCompressorInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p0

    return-object p0
.end method

.method static createCompressorInputStream(Lorg/rauschig/jarchivelib/CompressionType;Ljava/io/File;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createCompressorInputStream(Lorg/rauschig/jarchivelib/CompressionType;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p0

    return-object p0
.end method

.method static createCompressorInputStream(Lorg/rauschig/jarchivelib/CompressionType;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 155
    sget-object v0, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->compressorStreamFactory:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CompressionType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object p0

    return-object p0
.end method

.method static createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 190
    sget-object v0, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->compressorStreamFactory:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;

    move-result-object p0

    return-object p0
.end method

.method static createCompressorOutputStream(Lorg/rauschig/jarchivelib/CommonsCompressor;Ljava/io/File;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CommonsCompressor;->getCompressionType()Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createCompressorOutputStream(Lorg/rauschig/jarchivelib/CompressionType;Ljava/io/File;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;

    move-result-object p0

    return-object p0
.end method

.method static createCompressorOutputStream(Lorg/rauschig/jarchivelib/CompressionType;Ljava/io/File;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/CompressionType;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0}, Lorg/rauschig/jarchivelib/CommonsStreamFactory;->createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;

    move-result-object p0

    return-object p0
.end method
