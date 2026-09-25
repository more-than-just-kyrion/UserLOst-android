.class public final Lorg/rauschig/jarchivelib/ArchiverFactory;
.super Ljava/lang/Object;
.source "ArchiverFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createArchiver(Ljava/io/File;)Lorg/rauschig/jarchivelib/Archiver;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 40
    invoke-static {p0}, Lorg/rauschig/jarchivelib/FileType;->get(Ljava/io/File;)Lorg/rauschig/jarchivelib/FileType;

    move-result-object v0

    .line 42
    sget-object v1, Lorg/rauschig/jarchivelib/FileType;->UNKNOWN:Lorg/rauschig/jarchivelib/FileType;

    if-eq v0, v1, :cond_0

    .line 46
    invoke-static {v0}, Lorg/rauschig/jarchivelib/ArchiverFactory;->createArchiver(Lorg/rauschig/jarchivelib/FileType;)Lorg/rauschig/jarchivelib/Archiver;

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown file extension "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createArchiver(Ljava/lang/String;)Lorg/rauschig/jarchivelib/Archiver;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lorg/rauschig/jarchivelib/ArchiveFormat;->isValidArchiveFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lorg/rauschig/jarchivelib/ArchiveFormat;->fromString(Ljava/lang/String;)Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object p0

    invoke-static {p0}, Lorg/rauschig/jarchivelib/ArchiverFactory;->createArchiver(Lorg/rauschig/jarchivelib/ArchiveFormat;)Lorg/rauschig/jarchivelib/Archiver;

    move-result-object p0

    return-object p0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown archive format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createArchiver(Ljava/lang/String;Ljava/lang/String;)Lorg/rauschig/jarchivelib/Archiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 79
    invoke-static {p0}, Lorg/rauschig/jarchivelib/ArchiveFormat;->isValidArchiveFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {p1}, Lorg/rauschig/jarchivelib/CompressionType;->isValidCompressionType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0}, Lorg/rauschig/jarchivelib/ArchiveFormat;->fromString(Ljava/lang/String;)Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object p0

    invoke-static {p1}, Lorg/rauschig/jarchivelib/CompressionType;->fromString(Ljava/lang/String;)Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/rauschig/jarchivelib/ArchiverFactory;->createArchiver(Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)Lorg/rauschig/jarchivelib/Archiver;

    move-result-object p0

    return-object p0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown compression type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown archive format "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createArchiver(Lorg/rauschig/jarchivelib/ArchiveFormat;)Lorg/rauschig/jarchivelib/Archiver;
    .locals 1

    .line 125
    sget-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->SEVEN_Z:Lorg/rauschig/jarchivelib/ArchiveFormat;

    if-ne p0, v0, :cond_0

    .line 126
    new-instance p0, Lorg/rauschig/jarchivelib/SevenZArchiver;

    invoke-direct {p0}, Lorg/rauschig/jarchivelib/SevenZArchiver;-><init>()V

    return-object p0

    .line 127
    :cond_0
    sget-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->ZIP:Lorg/rauschig/jarchivelib/ArchiveFormat;

    if-ne p0, v0, :cond_1

    .line 128
    new-instance p0, Lorg/rauschig/jarchivelib/ZipFileArchiver;

    invoke-direct {p0}, Lorg/rauschig/jarchivelib/ZipFileArchiver;-><init>()V

    return-object p0

    .line 130
    :cond_1
    new-instance v0, Lorg/rauschig/jarchivelib/CommonsArchiver;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/CommonsArchiver;-><init>(Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    return-object v0
.end method

.method public static createArchiver(Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)Lorg/rauschig/jarchivelib/Archiver;
    .locals 1

    .line 97
    new-instance v0, Lorg/rauschig/jarchivelib/CommonsArchiver;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/CommonsArchiver;-><init>(Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 98
    new-instance p0, Lorg/rauschig/jarchivelib/CommonsCompressor;

    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/CommonsCompressor;-><init>(Lorg/rauschig/jarchivelib/CompressionType;)V

    .line 100
    new-instance p1, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;

    invoke-direct {p1, v0, p0}, Lorg/rauschig/jarchivelib/ArchiverCompressorDecorator;-><init>(Lorg/rauschig/jarchivelib/CommonsArchiver;Lorg/rauschig/jarchivelib/CommonsCompressor;)V

    return-object p1
.end method

.method public static createArchiver(Lorg/rauschig/jarchivelib/FileType;)Lorg/rauschig/jarchivelib/Archiver;
    .locals 3

    .line 57
    sget-object v0, Lorg/rauschig/jarchivelib/FileType;->UNKNOWN:Lorg/rauschig/jarchivelib/FileType;

    if-eq p0, v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileType;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileType;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileType;->getArchiveFormat()Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object v0

    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileType;->getCompressionType()Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/rauschig/jarchivelib/ArchiverFactory;->createArchiver(Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)Lorg/rauschig/jarchivelib/Archiver;

    move-result-object p0

    return-object p0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileType;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileType;->getArchiveFormat()Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object p0

    invoke-static {p0}, Lorg/rauschig/jarchivelib/ArchiverFactory;->createArchiver(Lorg/rauschig/jarchivelib/ArchiveFormat;)Lorg/rauschig/jarchivelib/Archiver;

    move-result-object p0

    return-object p0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown archive file extension "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown file type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
