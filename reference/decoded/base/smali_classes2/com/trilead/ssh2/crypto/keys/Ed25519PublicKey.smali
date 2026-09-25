.class public Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;
.super Ljava/lang/Object;
.source "Ed25519PublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final ED25519_OID:[B

.field private static final ENCODED_SIZE:I = 0x2c

.field private static final KEY_BYTES_LENGTH:I = 0x20


# instance fields
.field private final keyBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->ED25519_OID:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2bt
        0x65t
        0x70t
    .end array-data
.end method

.method public constructor <init>(Ljava/security/spec/X509EncodedKeySpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->decode([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->keyBytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->keyBytes:[B

    return-void
.end method

.method private static decode([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 76
    const-string v0, "Key was not encoded correctly"

    array-length v1, p0

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 81
    :try_start_0
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 82
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    sget-object v3, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->ED25519_OID:[B

    array-length v4, v3

    add-int/lit8 v4, v4, 0x27

    if-ne p0, v4, :cond_1

    .line 84
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    if-ne p0, v2, :cond_1

    .line 85
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    array-length v2, v3

    add-int/lit8 v2, v2, 0x2

    if-ne p0, v2, :cond_1

    .line 86
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/4 v2, 0x6

    if-ne p0, v2, :cond_1

    .line 87
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    array-length v2, v3

    if-ne p0, v2, :cond_1

    .line 90
    array-length p0, v3

    invoke-virtual {v1, p0}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object p0

    .line 91
    invoke-static {p0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    const/16 v2, 0x21

    if-ne p0, v2, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x20

    .line 97
    invoke-virtual {v1, p0}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_1
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Key is not of correct size"

    invoke-direct {p0, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 63
    instance-of v0, p1, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    check-cast p1, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;

    .line 68
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->keyBytes:[B

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->keyBytes:[B

    if-nez p1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getAbyte()[B
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->keyBytes:[B

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "EdDSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    .line 39
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0x30

    .line 40
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 41
    sget-object v2, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->ED25519_OID:[B

    array-length v3, v2

    add-int/lit8 v3, v3, 0x7

    iget-object v4, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->keyBytes:[B

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 44
    array-length v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    const/4 v1, 0x6

    .line 45
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 46
    array-length v1, v2

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 47
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    const/4 v1, 0x3

    .line 49
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 50
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->keyBytes:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 52
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->keyBytes:[B

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 53
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 34
    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->keyBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
