.class public final Lorg/rauschig/jarchivelib/CompressorFactory;
.super Ljava/lang/Object;
.source "CompressorFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCompressor(Ljava/io/File;)Lorg/rauschig/jarchivelib/Compressor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lorg/rauschig/jarchivelib/FileType;->get(Ljava/io/File;)Lorg/rauschig/jarchivelib/FileType;

    move-result-object v0

    .line 40
    sget-object v1, Lorg/rauschig/jarchivelib/FileType;->UNKNOWN:Lorg/rauschig/jarchivelib/FileType;

    if-eq v0, v1, :cond_0

    .line 44
    invoke-static {v0}, Lorg/rauschig/jarchivelib/CompressorFactory;->createCompressor(Lorg/rauschig/jarchivelib/FileType;)Lorg/rauschig/jarchivelib/Compressor;

    move-result-object p0

    return-object p0

    .line 41
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

.method public static createCompressor(Ljava/lang/String;)Lorg/rauschig/jarchivelib/Compressor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lorg/rauschig/jarchivelib/CompressionType;->isValidCompressionType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lorg/rauschig/jarchivelib/CompressionType;->fromString(Ljava/lang/String;)Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object p0

    invoke-static {p0}, Lorg/rauschig/jarchivelib/CompressorFactory;->createCompressor(Lorg/rauschig/jarchivelib/CompressionType;)Lorg/rauschig/jarchivelib/Compressor;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unkonwn compression type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createCompressor(Lorg/rauschig/jarchivelib/CompressionType;)Lorg/rauschig/jarchivelib/Compressor;
    .locals 1

    .line 88
    new-instance v0, Lorg/rauschig/jarchivelib/CommonsCompressor;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/CommonsCompressor;-><init>(Lorg/rauschig/jarchivelib/CompressionType;)V

    return-object v0
.end method

.method public static createCompressor(Lorg/rauschig/jarchivelib/FileType;)Lorg/rauschig/jarchivelib/Compressor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 55
    sget-object v0, Lorg/rauschig/jarchivelib/FileType;->UNKNOWN:Lorg/rauschig/jarchivelib/FileType;

    if-eq p0, v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileType;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileType;->getCompressionType()Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object p0

    invoke-static {p0}, Lorg/rauschig/jarchivelib/CompressorFactory;->createCompressor(Lorg/rauschig/jarchivelib/CompressionType;)Lorg/rauschig/jarchivelib/Compressor;

    move-result-object p0

    return-object p0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown compressed file type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown file type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
