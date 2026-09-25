.class public Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "XZCompressorOutputStream.java"


# instance fields
.field private final out:Lorg/tukaani/xz/XZOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 43
    new-instance v0, Lorg/tukaani/xz/XZOutputStream;

    new-instance v1, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v1}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->out:Lorg/tukaani/xz/XZOutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 59
    new-instance v0, Lorg/tukaani/xz/XZOutputStream;

    new-instance v1, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v1, p2}, Lorg/tukaani/xz/LZMA2Options;-><init>(I)V

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->out:Lorg/tukaani/xz/XZOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->out:Lorg/tukaani/xz/XZOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/XZOutputStream;->close()V

    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->out:Lorg/tukaani/xz/XZOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/XZOutputStream;->finish()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->out:Lorg/tukaani/xz/XZOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/XZOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->out:Lorg/tukaani/xz/XZOutputStream;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/XZOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;->out:Lorg/tukaani/xz/XZOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/XZOutputStream;->write([BII)V

    return-void
.end method
