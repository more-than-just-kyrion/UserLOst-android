.class Lorg/rauschig/jarchivelib/ZipFileArchiver;
.super Lorg/rauschig/jarchivelib/CommonsArchiver;
.source "ZipFileArchiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Lorg/rauschig/jarchivelib/ArchiveFormat;->ZIP:Lorg/rauschig/jarchivelib/ArchiveFormat;

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

    .line 40
    new-instance v0, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/rauschig/jarchivelib/ZipFileArchiver$ZipFileArchiveInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    return-object v0
.end method
