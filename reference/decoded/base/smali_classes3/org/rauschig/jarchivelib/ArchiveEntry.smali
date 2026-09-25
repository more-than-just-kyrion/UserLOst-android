.class public interface abstract Lorg/rauschig/jarchivelib/ArchiveEntry;
.super Ljava/lang/Object;
.source "ArchiveEntry.java"


# static fields
.field public static final UNKNOWN_SIZE:J = -0x1L


# virtual methods
.method public abstract extract(Ljava/io/File;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getLastModifiedDate()Ljava/util/Date;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract isDirectory()Z
.end method
