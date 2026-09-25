.class final Lorg/apache/commons/compress/archivers/sevenz/Coder;
.super Ljava/lang/Object;
.source "Coder.java"


# instance fields
.field final decompressionMethodId:[B

.field final numInStreams:J

.field final numOutStreams:J

.field final properties:[B


# direct methods
.method constructor <init>([BJJ[B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 28
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 29
    iput-wide p4, p0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 30
    iput-object p6, p0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    return-void
.end method
