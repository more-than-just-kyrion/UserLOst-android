.class public final Lorg/rauschig/jarchivelib/FileType;
.super Ljava/lang/Object;
.source "FileType.java"


# static fields
.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/rauschig/jarchivelib/FileType;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN:Lorg/rauschig/jarchivelib/FileType;


# instance fields
.field private final archiveFormat:Lorg/rauschig/jarchivelib/ArchiveFormat;

.field private final compression:Lorg/rauschig/jarchivelib/CompressionType;

.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/rauschig/jarchivelib/FileType;->MAP:Ljava/util/Map;

    .line 44
    new-instance v0, Lorg/rauschig/jarchivelib/FileType;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/rauschig/jarchivelib/FileType;-><init>(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V

    sput-object v0, Lorg/rauschig/jarchivelib/FileType;->UNKNOWN:Lorg/rauschig/jarchivelib/FileType;

    .line 48
    sget-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->TAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    sget-object v1, Lorg/rauschig/jarchivelib/CompressionType;->GZIP:Lorg/rauschig/jarchivelib/CompressionType;

    const-string v2, ".tar.gz"

    invoke-static {v2, v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V

    .line 49
    sget-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->TAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    sget-object v1, Lorg/rauschig/jarchivelib/CompressionType;->GZIP:Lorg/rauschig/jarchivelib/CompressionType;

    const-string v2, ".tgz"

    invoke-static {v2, v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V

    .line 50
    sget-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->TAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    sget-object v1, Lorg/rauschig/jarchivelib/CompressionType;->BZIP2:Lorg/rauschig/jarchivelib/CompressionType;

    const-string v2, ".tar.bz2"

    invoke-static {v2, v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V

    .line 51
    sget-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->TAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    sget-object v1, Lorg/rauschig/jarchivelib/CompressionType;->BZIP2:Lorg/rauschig/jarchivelib/CompressionType;

    const-string v2, ".tbz2"

    invoke-static {v2, v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V

    .line 53
    const-string v0, ".7z"

    sget-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->SEVEN_Z:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 54
    const-string v0, ".a"

    sget-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->AR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 55
    const-string v0, ".ar"

    sget-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->AR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 56
    const-string v0, ".cpio"

    sget-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->CPIO:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 57
    const-string v0, ".dump"

    sget-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->DUMP:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 58
    const-string v0, ".jar"

    sget-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->JAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 59
    const-string v0, ".tar"

    sget-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->TAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 60
    const-string v0, ".zip"

    sget-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->ZIP:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 61
    const-string v0, ".zipx"

    sget-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->ZIP:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    .line 63
    const-string v0, ".bz2"

    sget-object v1, Lorg/rauschig/jarchivelib/CompressionType;->BZIP2:Lorg/rauschig/jarchivelib/CompressionType;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/CompressionType;)V

    .line 64
    const-string v0, ".xz"

    sget-object v1, Lorg/rauschig/jarchivelib/CompressionType;->XZ:Lorg/rauschig/jarchivelib/CompressionType;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/CompressionType;)V

    .line 65
    const-string v0, ".gzip"

    sget-object v1, Lorg/rauschig/jarchivelib/CompressionType;->GZIP:Lorg/rauschig/jarchivelib/CompressionType;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/CompressionType;)V

    .line 66
    const-string v0, ".gz"

    sget-object v1, Lorg/rauschig/jarchivelib/CompressionType;->GZIP:Lorg/rauschig/jarchivelib/CompressionType;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/CompressionType;)V

    .line 67
    const-string v0, ".pack"

    sget-object v1, Lorg/rauschig/jarchivelib/CompressionType;->PACK200:Lorg/rauschig/jarchivelib/CompressionType;

    invoke-static {v0, v1}, Lorg/rauschig/jarchivelib/FileType;->add(Ljava/lang/String;Lorg/rauschig/jarchivelib/CompressionType;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lorg/rauschig/jarchivelib/FileType;-><init>(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/rauschig/jarchivelib/FileType;->suffix:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lorg/rauschig/jarchivelib/FileType;->compression:Lorg/rauschig/jarchivelib/CompressionType;

    .line 85
    iput-object p2, p0, Lorg/rauschig/jarchivelib/FileType;->archiveFormat:Lorg/rauschig/jarchivelib/ArchiveFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/rauschig/jarchivelib/CompressionType;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0, p2}, Lorg/rauschig/jarchivelib/FileType;-><init>(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V

    return-void
.end method

.method private static add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V
    .locals 2

    .line 169
    sget-object v0, Lorg/rauschig/jarchivelib/FileType;->MAP:Ljava/util/Map;

    new-instance v1, Lorg/rauschig/jarchivelib/FileType;

    invoke-direct {v1, p0, p1}, Lorg/rauschig/jarchivelib/FileType;-><init>(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static add(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V
    .locals 2

    .line 177
    sget-object v0, Lorg/rauschig/jarchivelib/FileType;->MAP:Ljava/util/Map;

    new-instance v1, Lorg/rauschig/jarchivelib/FileType;

    invoke-direct {v1, p0, p1, p2}, Lorg/rauschig/jarchivelib/FileType;-><init>(Ljava/lang/String;Lorg/rauschig/jarchivelib/ArchiveFormat;Lorg/rauschig/jarchivelib/CompressionType;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static add(Ljava/lang/String;Lorg/rauschig/jarchivelib/CompressionType;)V
    .locals 2

    .line 173
    sget-object v0, Lorg/rauschig/jarchivelib/FileType;->MAP:Ljava/util/Map;

    new-instance v1, Lorg/rauschig/jarchivelib/FileType;

    invoke-direct {v1, p0, p1}, Lorg/rauschig/jarchivelib/FileType;-><init>(Ljava/lang/String;Lorg/rauschig/jarchivelib/CompressionType;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static get(Ljava/io/File;)Lorg/rauschig/jarchivelib/FileType;
    .locals 0

    .line 165
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/rauschig/jarchivelib/FileType;->get(Ljava/lang/String;)Lorg/rauschig/jarchivelib/FileType;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Lorg/rauschig/jarchivelib/FileType;
    .locals 4

    .line 147
    sget-object v0, Lorg/rauschig/jarchivelib/FileType;->MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/rauschig/jarchivelib/FileType;

    return-object p0

    .line 153
    :cond_1
    sget-object p0, Lorg/rauschig/jarchivelib/FileType;->UNKNOWN:Lorg/rauschig/jarchivelib/FileType;

    return-object p0
.end method


# virtual methods
.method public getArchiveFormat()Lorg/rauschig/jarchivelib/ArchiveFormat;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/rauschig/jarchivelib/FileType;->archiveFormat:Lorg/rauschig/jarchivelib/ArchiveFormat;

    return-object v0
.end method

.method public getCompressionType()Lorg/rauschig/jarchivelib/CompressionType;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/rauschig/jarchivelib/FileType;->compression:Lorg/rauschig/jarchivelib/CompressionType;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/rauschig/jarchivelib/FileType;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isArchive()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/rauschig/jarchivelib/FileType;->archiveFormat:Lorg/rauschig/jarchivelib/ArchiveFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/rauschig/jarchivelib/FileType;->compression:Lorg/rauschig/jarchivelib/CompressionType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/FileType;->getSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
