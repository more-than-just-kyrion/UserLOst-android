.class public Lorg/apache/commons/compress/MemoryLimitException;
.super Ljava/io/IOException;
.source "MemoryLimitException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final memoryLimitInKb:I

.field private final memoryNeededInKb:J


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    .line 44
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/MemoryLimitException;->buildMessage(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    iput-wide p1, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededInKb:J

    .line 46
    iput p3, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitInKb:I

    return-void
.end method

.method public constructor <init>(JILjava/lang/Exception;)V
    .locals 1

    .line 50
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/MemoryLimitException;->buildMessage(JI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iput-wide p1, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededInKb:J

    .line 52
    iput p3, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitInKb:I

    return-void
.end method

.method private static buildMessage(JI)Ljava/lang/String;
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " kb of memory would be needed; limit was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " kb. If the file is not corrupt, consider increasing the memory limit."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMemoryLimitInKb()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryLimitInKb:I

    return v0
.end method

.method public getMemoryNeededInKb()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lorg/apache/commons/compress/MemoryLimitException;->memoryNeededInKb:J

    return-wide v0
.end method
