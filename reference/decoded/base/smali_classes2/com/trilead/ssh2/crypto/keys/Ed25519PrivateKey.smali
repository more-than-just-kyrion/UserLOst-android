.class public Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;
.super Ljava/lang/Object;
.source "Ed25519PrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final ED25519_OID:[B

.field private static final ENCODED_SIZE:I = 0x30

.field private static final KEY_BYTES_LENGTH:I = 0x20


# instance fields
.field private destroyed:Z

.field private final seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->ED25519_OID:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2bt
        0x65t
        0x70t
    .end array-data
.end method

.method public constructor <init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->decode(Ljava/security/spec/PKCS8EncodedKeySpec;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    return-void
.end method

.method private static decode(Ljava/security/spec/PKCS8EncodedKeySpec;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 96
    const-string v0, "Key was not encoded correctly"

    invoke-virtual {p0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    .line 97
    array-length v1, v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    .line 101
    :try_start_0
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-virtual {p0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 102
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    if-ne p0, v2, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/16 v3, 0x2e

    if-ne p0, v3, :cond_1

    .line 104
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    .line 105
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    .line 106
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    if-nez p0, :cond_1

    .line 107
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    if-ne p0, v2, :cond_1

    .line 108
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    sget-object v2, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->ED25519_OID:[B

    array-length v4, v2

    add-int/2addr v4, v3

    if-ne p0, v4, :cond_1

    .line 109
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/4 v3, 0x6

    if-ne p0, v3, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    array-length v3, v2

    if-ne p0, v3, :cond_1

    .line 113
    array-length p0, v2

    invoke-virtual {v1, p0}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object p0

    .line 114
    invoke-static {v2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/4 v2, 0x4

    if-ne p0, v2, :cond_0

    .line 116
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/16 v3, 0x22

    if-ne p0, v3, :cond_0

    .line 117
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    if-ne p0, v2, :cond_0

    .line 118
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/16 v2, 0x20

    if-ne p0, v2, :cond_0

    .line 121
    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object p0

    return-object p0

    .line 119
    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 123
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Key spec is of invalid size"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->destroyed:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 37
    instance-of v0, p1, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    check-cast p1, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;

    .line 43
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    if-eqz v2, :cond_3

    array-length v0, v0

    array-length v2, v2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, v0

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 49
    aget-byte v3, v3, v0

    iget-object v4, p1, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "EdDSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    .line 71
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x30

    .line 73
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 74
    sget-object v2, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->ED25519_OID:[B

    array-length v3, v2

    add-int/lit8 v3, v3, 0xb

    iget-object v4, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    const/4 v3, 0x2

    .line 76
    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    const/4 v4, 0x1

    .line 77
    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 81
    array-length v1, v2

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    const/4 v1, 0x6

    .line 82
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 83
    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    const/4 v1, 0x4

    .line 86
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 87
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    array-length v2, v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 89
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 90
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 92
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->seed:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->destroyed:Z

    return v0
.end method
