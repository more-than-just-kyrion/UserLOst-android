.class public Lcom/trilead/ssh2/compression/CompressionFactory;
.super Ljava/lang/Object;
.source "CompressionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    }
.end annotation


# static fields
.field private static compressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/List;

    .line 60
    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const-string v2, "zlib"

    const-string v3, "com.trilead.ssh2.compression.Zlib"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/trilead/ssh2/compression/CompressionFactory-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/List;

    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const-string v2, "zlib@openssh.com"

    const-string v3, "com.trilead.ssh2.compression.ZlibOpenSSH"

    invoke-direct {v1, v2, v3, v4}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/trilead/ssh2/compression/CompressionFactory-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/List;

    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const-string v2, "none"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/trilead/ssh2/compression/CompressionFactory-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addCompressor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 66
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/List;

    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/trilead/ssh2/compression/CompressionFactory-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static checkCompressorList([Ljava/lang/String;)V
    .locals 3

    .line 82
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 83
    invoke-static {v2}, Lcom/trilead/ssh2/compression/CompressionFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createCompressor(Ljava/lang/String;)Lcom/trilead/ssh2/compression/ICompressor;
    .locals 3

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/trilead/ssh2/compression/CompressionFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    move-result-object v0

    .line 92
    const-string v1, ""

    iget-object v2, v0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    iget-object v0, v0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/compression/ICompressor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 101
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot instantiate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultCompressorList()[Ljava/lang/String;
    .locals 3

    .line 71
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 72
    :goto_0
    sget-object v2, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 74
    sget-object v2, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    .line 75
    iget-object v2, v2, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    .locals 3

    .line 107
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    .line 108
    iget-object v2, v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
