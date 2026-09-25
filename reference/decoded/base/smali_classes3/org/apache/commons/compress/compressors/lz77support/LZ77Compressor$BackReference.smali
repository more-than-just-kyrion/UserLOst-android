.class public final Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;
.super Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
.source "LZ77Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackReference"
.end annotation


# instance fields
.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;-><init>()V

    .line 87
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->offset:I

    .line 88
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->length:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 97
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->offset:I

    return v0
.end method

.method public getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;
    .locals 1

    .line 111
    sget-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackReference with offset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
