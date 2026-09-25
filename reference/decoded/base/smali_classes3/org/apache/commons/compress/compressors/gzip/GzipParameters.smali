.class public Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
.super Ljava/lang/Object;
.source "GzipParameters.java"


# instance fields
.field private bufferSize:I

.field private comment:Ljava/lang/String;

.field private compressionLevel:I

.field private deflateStrategy:I

.field private fileName:Ljava/lang/String;

.field private modificationTime:J

.field private operatingSystem:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    const/16 v0, 0xff

    .line 38
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    const/16 v0, 0x200

    .line 39
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    return v0
.end method

.method public getDeflateStrategy()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getModificationTime()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationTime:J

    return-wide v0
.end method

.method public getOperatingSystem()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    return v0
.end method

.method public setBufferSize(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 112
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->bufferSize:I

    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid buffer size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 132
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->compressionLevel:I

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid gzip compression level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeflateStrategy(I)V
    .locals 0

    .line 143
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->deflateStrategy:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setModificationTime(J)V
    .locals 0

    .line 172
    iput-wide p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->modificationTime:J

    return-void
.end method

.method public setOperatingSystem(I)V
    .locals 0

    .line 198
    iput p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->operatingSystem:I

    return-void
.end method
