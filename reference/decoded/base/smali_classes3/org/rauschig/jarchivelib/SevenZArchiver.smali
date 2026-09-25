.class Lorg/rauschig/jarchivelib/SevenZArchiver;
.super Lorg/rauschig/jarchivelib/CommonsArchiver;
.source "SevenZArchiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZOutputStream;,
        Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    sget-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->SEVEN_Z:Lorg/rauschig/jarchivelib/ArchiveFormat;

    invoke-direct {p0, v0}, Lorg/rauschig/jarchivelib/CommonsArchiver;-><init>(Lorg/rauschig/jarchivelib/ArchiveFormat;)V

    return-void
.end method


# virtual methods
.method protected createArchiveInputStream(Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZInputStream;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZInputStream;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    return-object v0
.end method

.method protected createArchiveOutputStream(Ljava/io/File;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZOutputStream;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/rauschig/jarchivelib/SevenZArchiver$SevenZOutputStream;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V

    return-object v0
.end method
