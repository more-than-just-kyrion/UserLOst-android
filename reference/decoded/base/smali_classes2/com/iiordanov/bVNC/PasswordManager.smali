.class public Lcom/iiordanov/bVNC/PasswordManager;
.super Ljava/lang/Object;
.source "PasswordManager.java"


# static fields
.field private static DELIM:Ljava/lang/String; = "]"


# instance fields
.field password:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/iiordanov/bVNC/PasswordManager;->password:Ljava/lang/String;

    return-void
.end method

.method public static b64Decode(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x3

    .line 122
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static b64Encode([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 118
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 142
    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/PasswordManager;->computeHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeHash(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 128
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v1, 0x2710

    const/16 v2, 0x100

    invoke-direct {v0, p0, p1, v1, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 134
    const-string p0, "PBKDF2WithHmacSHA1"

    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 135
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 136
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>([B)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initialize([B[BI)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v1, p0, Lcom/iiordanov/bVNC/PasswordManager;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v2, 0x2710

    const/16 v3, 0x100

    invoke-direct {v0, v1, p1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 58
    const-string p1, "PBKDF2WithHmacSHA1"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    .line 60
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 62
    const-string p1, "AES/CBC/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 64
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    invoke-static {p2}, Lcom/iiordanov/bVNC/PasswordManager;->randomBytes(I)[B

    move-result-object p2

    .line 66
    :cond_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 67
    invoke-virtual {p1, p3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p1
.end method

.method public static randomBase64EncodedString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 114
    invoke-static {p0}, Lcom/iiordanov/bVNC/PasswordManager;->randomBytes(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/iiordanov/bVNC/PasswordManager;->b64Encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomBytes(I)[B
    .locals 1

    .line 103
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 104
    new-array p0, p0, [B

    .line 105
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/iiordanov/bVNC/PasswordManager;->randomBytes(I)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/iiordanov/bVNC/PasswordManager;->DELIM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/PasswordManager;->b64Decode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    .line 92
    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/iiordanov/bVNC/PasswordManager;->b64Decode(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    .line 93
    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/iiordanov/bVNC/PasswordManager;->b64Decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 94
    invoke-direct {p0, v1, v2, v3}, Lcom/iiordanov/bVNC/PasswordManager;->initialize([B[BI)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 97
    const-string v0, "DECRYPT-ENCRYPTED"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string p1, "DECRYPT FUNCTION CALLED plaintext resulted in: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DECRYPT"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ENCRYPT FUNCTION CALLED with password: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENCRYPT"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x100

    .line 77
    invoke-static {v0}, Lcom/iiordanov/bVNC/PasswordManager;->randomBytes(I)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 79
    invoke-direct {p0, v0, v1, v2}, Lcom/iiordanov/bVNC/PasswordManager;->initialize([B[BI)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 80
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 81
    invoke-static {v0}, Lcom/iiordanov/bVNC/PasswordManager;->b64Encode([B)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iiordanov/bVNC/PasswordManager;->DELIM:Ljava/lang/String;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/PasswordManager;->b64Encode([B)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/iiordanov/bVNC/PasswordManager;->DELIM:Ljava/lang/String;

    invoke-static {p1}, Lcom/iiordanov/bVNC/PasswordManager;->b64Encode([B)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v2, v1, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s%s%s%s%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v0, "ENCRYPT-ENCRYPTED"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
