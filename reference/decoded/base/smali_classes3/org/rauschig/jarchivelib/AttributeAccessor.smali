.class abstract Lorg/rauschig/jarchivelib/AttributeAccessor;
.super Ljava/lang/Object;
.source "AttributeAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/rauschig/jarchivelib/AttributeAccessor$ArAttributeAccessor;,
        Lorg/rauschig/jarchivelib/AttributeAccessor$ArjAttributeAccessor;,
        Lorg/rauschig/jarchivelib/AttributeAccessor$CpioAttributeAccessor;,
        Lorg/rauschig/jarchivelib/AttributeAccessor$ZipAttributeAccessor;,
        Lorg/rauschig/jarchivelib/AttributeAccessor$TarAttributeAccessor;,
        Lorg/rauschig/jarchivelib/AttributeAccessor$FallbackAttributeAccessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/rauschig/jarchivelib/AttributeAccessor;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-void
.end method

.method public static create(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Lorg/rauschig/jarchivelib/AttributeAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ")",
            "Lorg/rauschig/jarchivelib/AttributeAccessor<",
            "*>;"
        }
    .end annotation

    .line 64
    instance-of v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lorg/rauschig/jarchivelib/AttributeAccessor$TarAttributeAccessor;

    check-cast p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/AttributeAccessor$TarAttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V

    return-object v0

    .line 66
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lorg/rauschig/jarchivelib/AttributeAccessor$ZipAttributeAccessor;

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/AttributeAccessor$ZipAttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    return-object v0

    .line 68
    :cond_1
    instance-of v0, p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Lorg/rauschig/jarchivelib/AttributeAccessor$CpioAttributeAccessor;

    check-cast p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/AttributeAccessor$CpioAttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V

    return-object v0

    .line 70
    :cond_2
    instance-of v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Lorg/rauschig/jarchivelib/AttributeAccessor$ArjAttributeAccessor;

    check-cast p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/AttributeAccessor$ArjAttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;)V

    return-object v0

    .line 72
    :cond_3
    instance-of v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-eqz v0, :cond_4

    .line 73
    new-instance v0, Lorg/rauschig/jarchivelib/AttributeAccessor$ArAttributeAccessor;

    check-cast p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/AttributeAccessor$ArAttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;)V

    return-object v0

    .line 76
    :cond_4
    new-instance v0, Lorg/rauschig/jarchivelib/AttributeAccessor$FallbackAttributeAccessor;

    invoke-direct {v0, p0}, Lorg/rauschig/jarchivelib/AttributeAccessor$FallbackAttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-object v0
.end method


# virtual methods
.method public getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/rauschig/jarchivelib/AttributeAccessor;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-object v0
.end method

.method public abstract getMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
