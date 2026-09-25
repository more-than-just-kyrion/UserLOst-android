.class public final enum Lorg/rauschig/jarchivelib/CompressionType;
.super Ljava/lang/Enum;
.source "CompressionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/rauschig/jarchivelib/CompressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/rauschig/jarchivelib/CompressionType;

.field public static final enum BZIP2:Lorg/rauschig/jarchivelib/CompressionType;

.field public static final enum GZIP:Lorg/rauschig/jarchivelib/CompressionType;

.field public static final enum PACK200:Lorg/rauschig/jarchivelib/CompressionType;

.field public static final enum XZ:Lorg/rauschig/jarchivelib/CompressionType;


# instance fields
.field private final defaultFileExtension:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v0, Lorg/rauschig/jarchivelib/CompressionType;

    const-string v1, "bzip2"

    const-string v2, ".bz2"

    const-string v3, "BZIP2"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/rauschig/jarchivelib/CompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/rauschig/jarchivelib/CompressionType;->BZIP2:Lorg/rauschig/jarchivelib/CompressionType;

    .line 32
    new-instance v1, Lorg/rauschig/jarchivelib/CompressionType;

    const-string v2, "gz"

    const-string v3, ".gz"

    const-string v4, "GZIP"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/rauschig/jarchivelib/CompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/rauschig/jarchivelib/CompressionType;->GZIP:Lorg/rauschig/jarchivelib/CompressionType;

    .line 36
    new-instance v2, Lorg/rauschig/jarchivelib/CompressionType;

    const-string v3, "xz"

    const-string v4, ".xz"

    const-string v5, "XZ"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/rauschig/jarchivelib/CompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/rauschig/jarchivelib/CompressionType;->XZ:Lorg/rauschig/jarchivelib/CompressionType;

    .line 40
    new-instance v3, Lorg/rauschig/jarchivelib/CompressionType;

    const-string v4, "pack200"

    const-string v5, ".pack"

    const-string v6, "PACK200"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/rauschig/jarchivelib/CompressionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/rauschig/jarchivelib/CompressionType;->PACK200:Lorg/rauschig/jarchivelib/CompressionType;

    .line 23
    filled-new-array {v0, v1, v2, v3}, [Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object v0

    sput-object v0, Lorg/rauschig/jarchivelib/CompressionType;->$VALUES:[Lorg/rauschig/jarchivelib/CompressionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lorg/rauschig/jarchivelib/CompressionType;->name:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lorg/rauschig/jarchivelib/CompressionType;->defaultFileExtension:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/rauschig/jarchivelib/CompressionType;
    .locals 5

    .line 100
    invoke-static {}, Lorg/rauschig/jarchivelib/CompressionType;->values()[Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 101
    invoke-virtual {v3}, Lorg/rauschig/jarchivelib/CompressionType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown compression type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValidCompressionType(Ljava/lang/String;)Z
    .locals 5

    .line 82
    invoke-static {}, Lorg/rauschig/jarchivelib/CompressionType;->values()[Lorg/rauschig/jarchivelib/CompressionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 83
    invoke-virtual {v4}, Lorg/rauschig/jarchivelib/CompressionType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/rauschig/jarchivelib/CompressionType;
    .locals 1

    .line 23
    const-class v0, Lorg/rauschig/jarchivelib/CompressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/rauschig/jarchivelib/CompressionType;

    return-object p0
.end method

.method public static values()[Lorg/rauschig/jarchivelib/CompressionType;
    .locals 1

    .line 23
    sget-object v0, Lorg/rauschig/jarchivelib/CompressionType;->$VALUES:[Lorg/rauschig/jarchivelib/CompressionType;

    invoke-virtual {v0}, [Lorg/rauschig/jarchivelib/CompressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/rauschig/jarchivelib/CompressionType;

    return-object v0
.end method


# virtual methods
.method public getDefaultFileExtension()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CompressionType;->defaultFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/rauschig/jarchivelib/CompressionType;->name:Ljava/lang/String;

    return-object v0
.end method
