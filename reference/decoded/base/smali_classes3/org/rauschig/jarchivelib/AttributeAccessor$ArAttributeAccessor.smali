.class public Lorg/rauschig/jarchivelib/AttributeAccessor$ArAttributeAccessor;
.super Lorg/rauschig/jarchivelib/AttributeAccessor;
.source "AttributeAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rauschig/jarchivelib/AttributeAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArAttributeAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/rauschig/jarchivelib/AttributeAccessor<",
        "Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/AttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/AttributeAccessor$ArAttributeAccessor;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getMode()I

    move-result v0

    return v0
.end method
