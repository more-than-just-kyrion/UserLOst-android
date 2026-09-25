.class public final enum Lorg/rauschig/jarchivelib/ArchiveFormat;
.super Ljava/lang/Enum;
.source "ArchiveFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/rauschig/jarchivelib/ArchiveFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/rauschig/jarchivelib/ArchiveFormat;

.field public static final enum AR:Lorg/rauschig/jarchivelib/ArchiveFormat;

.field public static final enum CPIO:Lorg/rauschig/jarchivelib/ArchiveFormat;

.field public static final enum DUMP:Lorg/rauschig/jarchivelib/ArchiveFormat;

.field public static final enum JAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

.field public static final enum SEVEN_Z:Lorg/rauschig/jarchivelib/ArchiveFormat;

.field public static final enum TAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

.field public static final enum ZIP:Lorg/rauschig/jarchivelib/ArchiveFormat;


# instance fields
.field private final defaultFileExtension:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lorg/rauschig/jarchivelib/ArchiveFormat;

    const-string v1, "ar"

    const-string v2, ".ar"

    const-string v3, "AR"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/rauschig/jarchivelib/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->AR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    .line 32
    new-instance v1, Lorg/rauschig/jarchivelib/ArchiveFormat;

    const-string v2, "cpio"

    const-string v3, ".cpio"

    const-string v4, "CPIO"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/rauschig/jarchivelib/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/rauschig/jarchivelib/ArchiveFormat;->CPIO:Lorg/rauschig/jarchivelib/ArchiveFormat;

    .line 36
    new-instance v2, Lorg/rauschig/jarchivelib/ArchiveFormat;

    const-string v3, "dump"

    const-string v4, ".dump"

    const-string v5, "DUMP"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/rauschig/jarchivelib/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/rauschig/jarchivelib/ArchiveFormat;->DUMP:Lorg/rauschig/jarchivelib/ArchiveFormat;

    .line 40
    new-instance v3, Lorg/rauschig/jarchivelib/ArchiveFormat;

    const-string v4, "jar"

    const-string v5, ".jar"

    const-string v6, "JAR"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/rauschig/jarchivelib/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/rauschig/jarchivelib/ArchiveFormat;->JAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    .line 44
    new-instance v4, Lorg/rauschig/jarchivelib/ArchiveFormat;

    const-string v5, "7z"

    const-string v6, ".7z"

    const-string v7, "SEVEN_Z"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lorg/rauschig/jarchivelib/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/rauschig/jarchivelib/ArchiveFormat;->SEVEN_Z:Lorg/rauschig/jarchivelib/ArchiveFormat;

    .line 48
    new-instance v5, Lorg/rauschig/jarchivelib/ArchiveFormat;

    const-string v6, "tar"

    const-string v7, ".tar"

    const-string v8, "TAR"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lorg/rauschig/jarchivelib/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/rauschig/jarchivelib/ArchiveFormat;->TAR:Lorg/rauschig/jarchivelib/ArchiveFormat;

    .line 52
    new-instance v6, Lorg/rauschig/jarchivelib/ArchiveFormat;

    const-string v7, "zip"

    const-string v8, ".zip"

    const-string v9, "ZIP"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lorg/rauschig/jarchivelib/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/rauschig/jarchivelib/ArchiveFormat;->ZIP:Lorg/rauschig/jarchivelib/ArchiveFormat;

    .line 23
    filled-new-array/range {v0 .. v6}, [Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object v0

    sput-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->$VALUES:[Lorg/rauschig/jarchivelib/ArchiveFormat;

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

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lorg/rauschig/jarchivelib/ArchiveFormat;->name:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lorg/rauschig/jarchivelib/ArchiveFormat;->defaultFileExtension:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/rauschig/jarchivelib/ArchiveFormat;
    .locals 6

    .line 111
    invoke-static {}, Lorg/rauschig/jarchivelib/ArchiveFormat;->values()[Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/rauschig/jarchivelib/ArchiveFormat;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
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

.method public static isValidArchiveFormat(Ljava/lang/String;)Z
    .locals 6

    .line 94
    invoke-static {}, Lorg/rauschig/jarchivelib/ArchiveFormat;->values()[Lorg/rauschig/jarchivelib/ArchiveFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/rauschig/jarchivelib/ArchiveFormat;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static valueOf(Ljava/lang/String;)Lorg/rauschig/jarchivelib/ArchiveFormat;
    .locals 1

    .line 23
    const-class v0, Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/rauschig/jarchivelib/ArchiveFormat;

    return-object p0
.end method

.method public static values()[Lorg/rauschig/jarchivelib/ArchiveFormat;
    .locals 1

    .line 23
    sget-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->$VALUES:[Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-virtual {v0}, [Lorg/rauschig/jarchivelib/ArchiveFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/rauschig/jarchivelib/ArchiveFormat;

    return-object v0
.end method


# virtual methods
.method public getDefaultFileExtension()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ArchiveFormat;->defaultFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/rauschig/jarchivelib/ArchiveFormat;->name:Ljava/lang/String;

    return-object v0
.end method
