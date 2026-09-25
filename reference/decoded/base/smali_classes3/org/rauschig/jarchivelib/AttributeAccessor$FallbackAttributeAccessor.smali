.class public Lorg/rauschig/jarchivelib/AttributeAccessor$FallbackAttributeAccessor;
.super Lorg/rauschig/jarchivelib/AttributeAccessor;
.source "AttributeAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rauschig/jarchivelib/AttributeAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FallbackAttributeAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/rauschig/jarchivelib/AttributeAccessor<",
        "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/AttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 79
    invoke-super {p0}, Lorg/rauschig/jarchivelib/AttributeAccessor;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
