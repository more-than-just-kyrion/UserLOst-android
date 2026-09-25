.class public Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;
.super Ljava/lang/Object;
.source "SegmentHeader.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final magic:[I


# instance fields
.field private archiveMajor:I

.field private archiveMinor:I

.field private archiveModtime:J

.field private archiveSize:J

.field private archiveSizeOffset:I

.field private attributeDefinitionCount:I

.field private bandHeadersInputStream:Ljava/io/InputStream;

.field private bandHeadersSize:I

.field private classCount:I

.field private cpClassCount:I

.field private cpDescriptorCount:I

.field private cpDoubleCount:I

.field private cpFieldCount:I

.field private cpFloatCount:I

.field private cpIMethodCount:I

.field private cpIntCount:I

.field private cpLongCount:I

.field private cpMethodCount:I

.field private cpSignatureCount:I

.field private cpStringCount:I

.field private cpUTF8Count:I

.field private defaultClassMajorVersion:I

.field private defaultClassMinorVersion:I

.field private innerClassCount:I

.field private numberOfFiles:I

.field private options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

.field private final segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

.field private segmentsRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->EMPTY_BYTE_ARRAY:[B

    const/16 v0, 0xd0

    const/16 v1, 0xd

    const/16 v2, 0xca

    const/16 v3, 0xfe

    .line 38
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->magic:[I

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    return-void
.end method

.method private decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 111
    invoke-virtual {p3, p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decode(Ljava/io/InputStream;)I

    move-result p2

    .line 112
    iget-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parsed #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " as "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p3, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    return p2
.end method

.method private decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parsed #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    .line 128
    invoke-virtual {p3, p4, p2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object p1

    return-object p1
.end method

.method private parseArchiveFileCounts(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasArchiveFileCounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "archive_size_hi"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-string v2, "archive_size_lo"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v2, p1, v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setArchiveSize(J)V

    .line 247
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveSizeOffset:I

    .line 248
    const-string v0, "archive_next_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setSegmentsRemaining(J)V

    .line 249
    const-string v0, "archive_modtime"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setArchiveModtime(J)V

    .line 250
    const-string v0, "file_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->numberOfFiles:I

    :cond_0
    return-void
.end method

.method private parseArchiveSpecialCounts(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasSpecialFormats()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "band_headers_size"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->bandHeadersSize:I

    .line 257
    const-string v0, "attr_definition_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setAttributeDefinitionCount(J)V

    :cond_0
    return-void
.end method

.method private parseClassCounts(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 262
    const-string v0, "ic_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->innerClassCount:I

    .line 263
    const-string v0, "default_class_minver"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->defaultClassMinorVersion:I

    .line 264
    const-string v0, "default_class_majver"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->defaultClassMajorVersion:I

    .line 265
    const-string v0, "class_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->classCount:I

    return-void
.end method

.method private parseCpCounts(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 269
    const-string v0, "cp_Utf8_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpUTF8Count:I

    .line 270
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasCPNumberCounts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "cp_Int_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpIntCount:I

    .line 272
    const-string v0, "cp_Float_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpFloatCount:I

    .line 273
    const-string v0, "cp_Long_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpLongCount:I

    .line 274
    const-string v0, "cp_Double_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpDoubleCount:I

    .line 276
    :cond_0
    const-string v0, "cp_String_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpStringCount:I

    .line 277
    const-string v0, "cp_Class_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpClassCount:I

    .line 278
    const-string v0, "cp_Signature_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpSignatureCount:I

    .line 279
    const-string v0, "cp_Descr_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpDescriptorCount:I

    .line 280
    const-string v0, "cp_Field_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpFieldCount:I

    .line 281
    const-string v0, "cp_Method_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpMethodCount:I

    .line 282
    const-string v0, "cp_Imethod_count"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpIMethodCount:I

    return-void
.end method

.method private setArchiveMajorVersion(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/16 v0, 0x96

    if-ne p1, v0, :cond_0

    .line 318
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveMajor:I

    return-void

    .line 316
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid segment major version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setArchiveMinorVersion(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 331
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveMinor:I

    return-void

    .line 329
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v0, "Invalid segment minor version"

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setAttributeDefinitionCount(J)V
    .locals 0

    long-to-int p1, p1

    .line 343
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->attributeDefinitionCount:I

    return-void
.end method

.method private setBandHeadersData([B)V
    .locals 1

    .line 347
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->bandHeadersInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getArchiveModtime()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveModtime:J

    return-wide v0
.end method

.method public getArchiveSize()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveSize:J

    return-wide v0
.end method

.method public getArchiveSizeOffset()I
    .locals 1

    .line 140
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveSizeOffset:I

    return v0
.end method

.method public getAttributeDefinitionCount()I
    .locals 1

    .line 144
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->attributeDefinitionCount:I

    return v0
.end method

.method public getBandHeadersInputStream()Ljava/io/InputStream;
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->bandHeadersInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->bandHeadersInputStream:Ljava/io/InputStream;

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->bandHeadersInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getBandHeadersSize()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->bandHeadersSize:I

    return v0
.end method

.method public getClassCount()I
    .locals 1

    .line 169
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->classCount:I

    return v0
.end method

.method public getCpClassCount()I
    .locals 1

    .line 173
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpClassCount:I

    return v0
.end method

.method public getCpDescriptorCount()I
    .locals 1

    .line 177
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpDescriptorCount:I

    return v0
.end method

.method public getCpDoubleCount()I
    .locals 1

    .line 181
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpDoubleCount:I

    return v0
.end method

.method public getCpFieldCount()I
    .locals 1

    .line 185
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpFieldCount:I

    return v0
.end method

.method public getCpFloatCount()I
    .locals 1

    .line 189
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpFloatCount:I

    return v0
.end method

.method public getCpIMethodCount()I
    .locals 1

    .line 193
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpIMethodCount:I

    return v0
.end method

.method public getCpIntCount()I
    .locals 1

    .line 197
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpIntCount:I

    return v0
.end method

.method public getCpLongCount()I
    .locals 1

    .line 201
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpLongCount:I

    return v0
.end method

.method public getCpMethodCount()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpMethodCount:I

    return v0
.end method

.method public getCpSignatureCount()I
    .locals 1

    .line 209
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpSignatureCount:I

    return v0
.end method

.method public getCpStringCount()I
    .locals 1

    .line 213
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpStringCount:I

    return v0
.end method

.method public getCpUTF8Count()I
    .locals 1

    .line 217
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->cpUTF8Count:I

    return v0
.end method

.method public getDefaultClassMajorVersion()I
    .locals 1

    .line 221
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->defaultClassMajorVersion:I

    return v0
.end method

.method public getDefaultClassMinorVersion()I
    .locals 1

    .line 225
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->defaultClassMinorVersion:I

    return v0
.end method

.method public getInnerClassCount()I
    .locals 1

    .line 229
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->innerClassCount:I

    return v0
.end method

.method public getNumberOfFiles()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->numberOfFiles:I

    return v0
.end method

.method public getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    return-object v0
.end method

.method public getSegmentsRemaining()I
    .locals 1

    .line 241
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->segmentsRemaining:I

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Error;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 287
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v1, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->magic:[I

    array-length v1, v1

    const-string v2, "archive_magic_word"

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 288
    :goto_0
    sget-object v2, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->magic:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 289
    aget v3, v0, v1

    aget v2, v2, v1

    if-ne v3, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Bad header"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_1
    const-string v0, "archive_minver"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setArchiveMinorVersion(I)V

    .line 294
    const-string v0, "archive_majver"

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setArchiveMajorVersion(I)V

    .line 295
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    const-string v1, "archive_options"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->decodeScalar(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    .line 296
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->parseArchiveFileCounts(Ljava/io/InputStream;)V

    .line 297
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->parseArchiveSpecialCounts(Ljava/io/InputStream;)V

    .line 298
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->parseCpCounts(Ljava/io/InputStream;)V

    .line 299
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->parseClassCounts(Ljava/io/InputStream;)V

    .line 301
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->setBandHeadersData([B)V

    .line 305
    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveSizeOffset:I

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveSizeOffset:I

    return-void
.end method

.method public setArchiveModtime(J)V
    .locals 0

    .line 335
    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveModtime:J

    return-void
.end method

.method public setArchiveSize(J)V
    .locals 0

    .line 339
    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->archiveSize:J

    return-void
.end method

.method public setSegmentsRemaining(J)V
    .locals 0

    long-to-int p1, p1

    .line 351
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->segmentsRemaining:I

    return-void
.end method

.method public unpack()V
    .locals 0

    return-void
.end method
