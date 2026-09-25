.class public final Lcom/google/crypto/tink/util/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method private constructor <init>([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "buf",
            "start",
            "len"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    const/4 v1, 0x0

    .line 82
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copyFrom([B)Lcom/google/crypto/tink/util/Bytes;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 41
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([BII)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "data must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyFrom([BII)Lcom/google/crypto/tink/util/Bytes;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "start",
            "len"
        }
    .end annotation

    if-eqz p0, :cond_1

    add-int v0, p1, p2

    .line 58
    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 59
    array-length p2, p0

    sub-int/2addr p2, p1

    .line 61
    :cond_0
    new-instance v0, Lcom/google/crypto/tink/util/Bytes;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/crypto/tink/util/Bytes;-><init>([BII)V

    return-object v0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "data must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 87
    instance-of v0, p1, Lcom/google/crypto/tink/util/Bytes;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/util/Bytes;

    .line 91
    iget-object p1, p1, Lcom/google/crypto/tink/util/Bytes;->data:[B

    iget-object v0, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    array-length v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 69
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bytes("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/util/Bytes;->data:[B

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Hex;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
