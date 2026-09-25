.class public Lorg/rauschig/jarchivelib/AttributeAccessor$CpioAttributeAccessor;
.super Lorg/rauschig/jarchivelib/AttributeAccessor;
.source "AttributeAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/rauschig/jarchivelib/AttributeAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpioAttributeAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/rauschig/jarchivelib/AttributeAccessor<",
        "Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lorg/rauschig/jarchivelib/AttributeAccessor;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/rauschig/jarchivelib/AttributeAccessor$CpioAttributeAccessor;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveEntry;->getMode()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
