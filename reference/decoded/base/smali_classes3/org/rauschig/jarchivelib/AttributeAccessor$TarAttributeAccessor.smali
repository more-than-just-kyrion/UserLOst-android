.class public Lorg/rauschig/jarchivelib/AttributeAccessor$TarAttributeAccessor;
.super Lorg/rauschig/jarchivelib/AttributeAccessor;
.source "AttributeAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rauschig/jarchivelib/AttributeAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TarAttributeAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/rauschig/jarchivelib/AttributeAccessor<",
        "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/AttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/AttributeAccessor$TarAttributeAccessor;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    move-result v0

    return v0
.end method
