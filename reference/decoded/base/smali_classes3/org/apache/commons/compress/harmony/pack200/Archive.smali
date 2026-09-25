.class public Lorg/apache/commons/compress/harmony/pack200/Archive;
.super Ljava/lang/Object;
.source "Archive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;,
        Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private currentSegmentSize:J

.field private jarFile:Ljava/util/jar/JarFile;

.field private final jarInputStream:Ljava/util/jar/JarInputStream;

.field private final options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Archive;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarFile;Ljava/io/OutputStream;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    .line 158
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;-><init>()V

    .line 160
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    .line 161
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isGzip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p2, v0

    .line 164
    :cond_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->outputStream:Ljava/io/OutputStream;

    .line 165
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->jarFile:Ljava/util/jar/JarFile;

    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->jarInputStream:Ljava/util/jar/JarInputStream;

    .line 167
    invoke-static {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->config(Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarInputStream;Ljava/io/OutputStream;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->jarInputStream:Ljava/util/jar/JarInputStream;

    if-nez p3, :cond_0

    .line 182
    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;-><init>()V

    .line 184
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    .line 185
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isGzip()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p2, p1

    .line 188
    :cond_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->outputStream:Ljava/io/OutputStream;

    .line 189
    invoke-static {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->config(Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V

    return-void
.end method

.method private addJarEntry(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;",
            ">;)Z"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getSegmentLimit()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 198
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Archive;->estimateSize(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)J

    move-result-wide v4

    .line 199
    iget-wide v6, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->currentSegmentSize:J

    add-long v8, v4, v6

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    cmp-long v0, v6, v2

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-long/2addr v6, v4

    .line 204
    iput-wide v6, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->currentSegmentSize:J

    .line 207
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isPassFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->access$000(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;-><init>([B)V

    .line 210
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->setFileName(Ljava/lang/String;)V

    .line 211
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object p2, Lorg/apache/commons/compress/harmony/pack200/Archive;->EMPTY_BYTE_ARRAY:[B

    invoke-static {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->access$002(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;[B)[B

    .line 214
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private doNormalPack()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 219
    const-string v0, "Start to perform a normal packing"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->jarInputStream:Ljava/util/jar/JarInputStream;

    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isKeepFileOrder()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->getPackingFileListFromJar(Ljava/util/jar/JarInputStream;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->jarFile:Ljava/util/jar/JarFile;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isKeepFileOrder()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->getPackingFileListFromJar(Ljava/util/jar/JarFile;Z)Ljava/util/List;

    move-result-object v0

    .line 227
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/Archive;->splitIntoSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, v2, :cond_1

    .line 234
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;

    .line 235
    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-direct {v7}, Lorg/apache/commons/compress/harmony/pack200/Segment;-><init>()V

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->outputStream:Ljava/io/OutputStream;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v7, v6, v8, v9}, Lorg/apache/commons/compress/harmony/pack200/Segment;->pack(Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;Ljava/io/OutputStream;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V

    .line 236
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getByteAmount()I

    move-result v7

    add-int/2addr v4, v7

    .line 237
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getPackedByteAmount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 240
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Total: Packed "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " input bytes of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " files into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " segments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private doZeroEffortPack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    const-string v0, "Start to perform a zero-effort packing"

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->jarInputStream:Ljava/util/jar/JarInputStream;

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->copyThroughJar(Ljava/util/jar/JarInputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->jarFile:Ljava/util/jar/JarFile;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->copyThroughJar(Ljava/util/jar/JarFile;Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method private estimateSize(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)J
    .locals 6

    .line 258
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "META-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "/META-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->access$000(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)[B

    move-result-object p1

    array-length p1, p1

    int-to-long v4, p1

    cmp-long p1, v4, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    .line 266
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    :goto_1
    return-wide v2
.end method

.method private splitIntoSegments(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getSegmentLimit()J

    move-result-wide v3

    .line 289
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 292
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    .line 293
    invoke-direct {p0, v7, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/Archive;->addJarEntry(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;Ljava/util/List;Ljava/util/List;)Z

    move-result v8

    const-wide/16 v9, 0x0

    if-nez v8, :cond_0

    .line 295
    new-instance v8, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;

    invoke-direct {v8, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iput-wide v9, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->currentSegmentSize:J

    .line 300
    invoke-direct {p0, v7, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/Archive;->addJarEntry(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;Ljava/util/List;Ljava/util/List;)Z

    .line 302
    iput-wide v9, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->currentSegmentSize:J

    goto :goto_1

    :cond_0
    cmp-long v8, v3, v9

    if-nez v8, :cond_1

    .line 303
    invoke-direct {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/Archive;->estimateSize(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 305
    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;

    invoke-direct {v7, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 312
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 313
    :cond_3
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;

    invoke-direct {p1, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method


# virtual methods
.method public pack()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getEffort()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Archive;->doZeroEffortPack()V

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Archive;->doNormalPack()V

    :goto_0
    return-void
.end method
