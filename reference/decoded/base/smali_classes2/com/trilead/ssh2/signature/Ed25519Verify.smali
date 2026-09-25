.class public Lcom/trilead/ssh2/signature/Ed25519Verify;
.super Ljava/lang/Object;
.source "Ed25519Verify.java"

# interfaces
.implements Lcom/trilead/ssh2/signature/SSHSignature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/signature/Ed25519Verify$InstanceHolder;
    }
.end annotation


# static fields
.field public static final ED25519_ID:Ljava/lang/String; = "ssh-ed25519"

.field private static final ED25519_PK_SIZE_BYTES:I = 0x20

.field private static final ED25519_SIG_SIZE_BYTES:I = 0x40

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/trilead/ssh2/signature/Ed25519Verify;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/signature/Ed25519Verify;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/trilead/ssh2/signature/Ed25519Verify-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/trilead/ssh2/signature/Ed25519Verify;-><init>()V

    return-void
.end method

.method private static decodeSSHEd25519Signature([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 139
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p0

    .line 140
    const-string v1, "ssh-ed25519"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 144
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p0

    .line 146
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    array-length v0, p0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    return-object p0

    .line 151
    :cond_0
    new-instance v0, Ljava/io/IOException;

    array-length p0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ed25519 signature was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " bytes (32 expected)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Padding in Ed25519 signature!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Peer sent wrong signature format"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encodeSSHEd25519Signature([B)[B
    .locals 3

    .line 126
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 128
    const-string v1, "ssh-ed25519"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 129
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 131
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static get()Lcom/trilead/ssh2/signature/Ed25519Verify;
    .locals 1

    .line 65
    invoke-static {}, Lcom/trilead/ssh2/signature/Ed25519Verify$InstanceHolder;->-$$Nest$sfgetsInstance()Lcom/trilead/ssh2/signature/Ed25519Verify;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodePublicKey([B)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 85
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 86
    const-string v1, "ssh-ed25519"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    .line 92
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v1

    if-nez v1, :cond_1

    .line 96
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 100
    new-instance v0, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;

    invoke-direct {v0, p1}, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;-><init>([B)V

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/io/IOException;

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ed25519 was not of correct length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " vs 32"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Padding in Ed25519 public key! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes left."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "This is not an Ed25519 key"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 3

    .line 70
    check-cast p1, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;

    .line 72
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 74
    const-string v1, "ssh-ed25519"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->getAbyte()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 76
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 78
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    check-cast p2, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;

    .line 107
    :try_start_0
    new-instance p3, Lcom/google/crypto/tink/subtle/Ed25519Sign;

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;->getSeed()[B

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/google/crypto/tink/subtle/Ed25519Sign;-><init>([B)V

    invoke-virtual {p3, p1}, Lcom/google/crypto/tink/subtle/Ed25519Sign;->sign([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/signature/Ed25519Verify;->encodeSSHEd25519Signature([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getKeyFormat()Ljava/lang/String;
    .locals 1

    .line 159
    const-string v0, "ssh-ed25519"

    return-object v0
.end method

.method public verifySignature([B[BLjava/security/PublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    check-cast p3, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;

    .line 116
    invoke-static {p2}, Lcom/trilead/ssh2/signature/Ed25519Verify;->decodeSSHEd25519Signature([B)[B

    move-result-object p2

    .line 118
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519Verify;

    invoke-virtual {p3}, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;->getAbyte()[B

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/google/crypto/tink/subtle/Ed25519Verify;-><init>([B)V

    invoke-virtual {v0, p2, p1}, Lcom/google/crypto/tink/subtle/Ed25519Verify;->verify([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
