.class public Lcom/iiordanov/bVNC/MemInStream;
.super Lcom/iiordanov/bVNC/InStream;
.source "MemInStream.java"


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iiordanov/bVNC/InStream;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iiordanov/bVNC/MemInStream;->b:[B

    .line 25
    iput p2, p0, Lcom/iiordanov/bVNC/MemInStream;->ptr:I

    add-int/2addr p2, p3

    .line 26
    iput p2, p0, Lcom/iiordanov/bVNC/MemInStream;->end:I

    return-void
.end method


# virtual methods
.method protected overrun(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "MemInStream overrun: end of stream"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pos()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/iiordanov/bVNC/MemInStream;->ptr:I

    return v0
.end method
