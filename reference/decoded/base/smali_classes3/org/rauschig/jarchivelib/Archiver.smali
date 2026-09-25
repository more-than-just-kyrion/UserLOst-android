.class public interface abstract Lorg/rauschig/jarchivelib/Archiver;
.super Ljava/lang/Object;
.source "Archiver.java"


# virtual methods
.method public abstract create(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract create(Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extract(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extract(Ljava/io/InputStream;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFilenameExtension()Ljava/lang/String;
.end method

.method public abstract stream(Ljava/io/File;)Lorg/rauschig/jarchivelib/ArchiveStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
