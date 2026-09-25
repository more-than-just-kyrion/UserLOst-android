.class public Lcom/iiordanov/pubkeygenerator/PubkeyUtils;
.super Ljava/lang/Object;
.source "PubkeyUtils.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final ITERATIONS:I = 0x3e8

.field public static final PKCS8_END:Ljava/lang/String; = "-----END PRIVATE KEY-----"

.field public static final PKCS8_START:Ljava/lang/String; = "-----BEGIN PRIVATE KEY-----"

.field private static final SALT_SIZE:I = 0x8

.field public static final TAG:Ljava/lang/String; = "PubkeyUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 329
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cipher(I[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p2}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->sha256([B)[B

    move-result-object p2

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 94
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 95
    invoke-virtual {p2, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 96
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static convertToOpenSSHFormat(Ljava/security/PublicKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 261
    const-string p1, "pubkeygenerator@mobiledevice"

    .line 263
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    const-string v1, " "

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ssh-rsa "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->get()Lcom/trilead/ssh2/signature/RSASHA1Verify;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v2, p0}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ssh-dss "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->get()Lcom/trilead/ssh2/signature/DSASHA1Verify;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    invoke-virtual {v2, p0}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 273
    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Unknown key type"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodePrivate([BLjava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 148
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 149
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static decodePrivate([BLjava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    invoke-static {p0, p2}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decodePrivate([BLjava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    .line 156
    :cond_0
    invoke-static {p0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decodePrivate([BLjava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static decodePublic([BLjava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 161
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 162
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x8

    .line 117
    :try_start_0
    new-array v1, v0, [B

    .line 118
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 120
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    invoke-static {p0, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x3e8

    .line 123
    invoke-static {v1, v0, p1, v3}, Lcom/iiordanov/pubkeygenerator/Encryptor;->decrypt([BILjava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 125
    const-string v1, "decrypt"

    const-string v2, "Could not decrypt with new method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->cipher(I[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptAndRecoverKeyPair(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 4

    const/4 v0, 0x0

    .line 222
    const-string v1, "PubkeyUtils"

    if-nez p0, :cond_0

    .line 223
    const-string p0, "SSH private key is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 226
    const-string p0, "SSH private key is empty, not recovering"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 230
    new-instance p1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 233
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 234
    const-string v2, "Passphrase not empty, trying to decrypt key."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object p0

    .line 238
    invoke-static {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->recoverKeyPair([B)Ljava/security/KeyPair;

    move-result-object p0

    goto :goto_0

    .line 240
    :cond_3
    const-string p1, "Passphrase empty, recovering directly."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->recoverKeyPair([B)Ljava/security/KeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 246
    const-string p1, "Either key is not encrypted and we were given passphrase, or the passphrase is wrong,or the key is corrupt."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method protected static encodeHex([B)Ljava/lang/String;
    .locals 8

    .line 332
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 335
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 336
    sget-object v6, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->HEX_DIGITS:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v4, v4, 0xf

    .line 337
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([BLjava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x8

    .line 100
    new-array v1, v0, [B

    const/16 v2, 0x3e8

    .line 102
    invoke-static {v1, v2, p1, p0}, Lcom/iiordanov/pubkeygenerator/Encryptor;->encrypt([BILjava/lang/String;[B)[B

    move-result-object p0

    .line 104
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p1, p1, [B

    const/4 v2, 0x0

    .line 106
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    array-length v3, p0

    invoke-static {p0, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 110
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    return-object p1
.end method

.method public static exportPEM(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 285
    const-string v2, "-----BEGIN PRIVATE KEY-----\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    .line 289
    new-array v1, v1, [B

    .line 290
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 291
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 293
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 294
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 296
    invoke-virtual {v3, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 298
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 300
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 301
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x3

    .line 302
    invoke-virtual {p1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {v4, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 304
    invoke-virtual {v4, p0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p0

    .line 306
    new-instance p1, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {p1, v3, p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>(Ljava/security/AlgorithmParameters;[B)V

    .line 308
    invoke-virtual {p1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object p0

    .line 310
    const-string p1, "Proc-Type: 4,ENCRYPTED\nDEK-Info: DES-EDE3-CBC,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {v1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string p1, "\n\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    .line 316
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .line 317
    invoke-static {v1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x3f

    .line 318
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ge p0, p1, :cond_1

    .line 319
    const-string p1, "\n"

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x40

    goto :goto_0

    :cond_1
    const/16 p0, 0xa

    .line 322
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    const-string p1, "-----END PRIVATE KEY-----"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatKey(Ljava/security/Key;)Ljava/lang/String;
    .locals 4

    .line 81
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-interface {p0}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key[algorithm="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", format="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEncodedPrivate(Ljava/security/PrivateKey;)[B
    .locals 1

    .line 136
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public static getEncodedPrivate(Ljava/security/PrivateKey;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->getEncodedPrivate(Ljava/security/PrivateKey;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->encrypt([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->getEncodedPrivate(Ljava/security/PrivateKey;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getEncodedPublic(Ljava/security/PublicKey;)[B
    .locals 1

    .line 132
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public static getPrivkeyString(Lcom/iiordanov/pubkeygenerator/PubkeyBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 355
    const-string v0, "IMPORTED"

    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getPrivateKey()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 366
    :try_start_1
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getPrivateKey()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decodePrivate([BLjava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getPrivateKey()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decodePrivate([BLjava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    .line 369
    :goto_0
    invoke-static {p0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->exportPEM(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 371
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public static getPubkeyString(Lcom/iiordanov/pubkeygenerator/PubkeyBean;)Ljava/lang/String;
    .locals 1

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 346
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->convertToOpenSSHFormat(Ljava/security/PublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 348
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static importPEM(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 2

    .line 383
    const-string v0, "-----BEGIN RSA PRIVATE KEY-----\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 384
    const-string v0, "-----END RSA PRIVATE KEY-----"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 385
    const-string v0, "-----BEGIN DSA PRIVATE KEY-----\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 386
    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 387
    const-string v0, "-----BEGIN PRIVATE KEY-----\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 388
    const-string v0, "-----END PRIVATE KEY-----"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 391
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 392
    invoke-static {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->recoverKeyPair([B)Ljava/security/KeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 394
    const-string v0, "PubkeyUtils"

    const-string v1, "Could not recover keypair from PEM string."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static importPem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 421
    const-string v0, "PubkeyUtils"

    const/4 v1, 0x0

    .line 425
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lcom/trilead/ssh2/crypto/PEMDecoder;->parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 432
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/PEMDecoder;->isPEMEncrypted(Lcom/trilead/ssh2/crypto/PEMStructure;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    :try_start_1
    invoke-static {p1, p2}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decode(Lcom/trilead/ssh2/crypto/PEMStructure;Ljava/lang/String;)Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    new-instance p1, Ljava/lang/Exception;

    sget p2, Lcom/iiordanov/pubkeygenerator/R$string;->error_decrypting:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_0
    :goto_0
    :try_start_2
    iget-object p0, p1, Lcom/trilead/ssh2/crypto/PEMStructure;->data:[B

    invoke-static {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->recoverKeyPair([B)Ljava/security/KeyPair;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 443
    const-string p1, "Could not recover key-pair from PEM string."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1

    :catch_2
    move-exception p0

    .line 427
    const-string p1, "Key not in PEM format or corrupt."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static importPkcs8(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 406
    const-string v0, "-----BEGIN PRIVATE KEY-----\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 407
    const-string v0, "-----END PRIVATE KEY-----"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 410
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 411
    invoke-static {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->recoverKeyPair([B)Ljava/security/KeyPair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 413
    const-string v0, "PubkeyUtils"

    const-string v1, "Could not recover keypair from PKCS8 string."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isEncrypted(Ljava/lang/String;)Z
    .locals 1

    .line 207
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decryptAndRecoverKeyPair(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static recoverKeyPair([B)Ljava/security/KeyPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 173
    :try_start_0
    const-string p0, "RSA"

    new-instance v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {p0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 174
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 176
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    move-object v3, v1

    check-cast v3, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 177
    invoke-interface {v3}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 178
    invoke-interface {v4}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 180
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    new-instance p0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const-string v1, "DSA"

    invoke-static {v1, p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 183
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 185
    move-object v0, v1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 188
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    .line 189
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 188
    invoke-virtual {v3, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 191
    new-instance v3, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 192
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v3, v0, v4, v5, v2}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 194
    invoke-virtual {p0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    .line 197
    :goto_0
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, p0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public static sha256([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 89
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static tryImportingPemAndPkcs8(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 453
    invoke-static {p0, p1, p2}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->importPem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p2

    if-nez p2, :cond_0

    .line 456
    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->importPkcs8(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    return-object p2

    .line 460
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    sget p2, Lcom/iiordanov/pubkeygenerator/R$string;->error_importing:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
