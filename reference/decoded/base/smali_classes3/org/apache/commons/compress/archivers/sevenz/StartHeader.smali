.class final Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
.super Ljava/lang/Object;
.source "StartHeader.java"


# instance fields
.field final nextHeaderCrc:J

.field final nextHeaderOffset:J

.field final nextHeaderSize:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 27
    iput-wide p3, p0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    .line 28
    iput-wide p5, p0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    return-void
.end method
