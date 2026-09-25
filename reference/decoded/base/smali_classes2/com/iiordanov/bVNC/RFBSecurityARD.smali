.class public Lcom/iiordanov/bVNC/RFBSecurityARD;
.super Ljava/lang/Object;
.source "RFBSecurityARD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;
    }
.end annotation


# static fields
.field private static final MSG_ERROR:Ljava/lang/String; = "A cryptography error occurred while trying to perform Mac Authentication."

.field private static final MSG_NO_SUPPORT:Ljava/lang/String; = "Your device does not support the required cryptography to perform Mac Authentication."

.field private static final NAME:Ljava/lang/String; = "Mac Authentication"


# instance fields
.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/iiordanov/bVNC/RFBSecurityARD;->username:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/iiordanov/bVNC/RFBSecurityARD;->password:Ljava/lang/String;

    return-void
.end method

.method private convertBigIntegerToByteArray(Ljava/math/BigInteger;I)[B
    .locals 3

    .line 245
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 246
    array-length v0, p1

    const/4 v1, 0x0

    if-le v0, p2, :cond_0

    .line 247
    new-array v0, p2, [B

    .line 248
    array-length v2, p1

    sub-int/2addr v2, p2

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 250
    :cond_0
    array-length v0, p1

    if-ge v0, p2, :cond_1

    .line 251
    new-array v0, p2, [B

    .line 252
    array-length v2, p1

    sub-int/2addr p2, v2

    array-length v2, p1

    invoke-static {p1, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p1
.end method

.method private keyToBytes(Ljava/security/Key;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 268
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/iiordanov/bVNC/RFBSecurityARD;->convertBigIntegerToByteArray(Ljava/math/BigInteger;I)[B

    move-result-object p1

    return-object p1

    .line 270
    :cond_0
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_1

    .line 271
    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/iiordanov/bVNC/RFBSecurityARD;->convertBigIntegerToByteArray(Ljava/math/BigInteger;I)[B

    move-result-object p1

    return-object p1

    .line 273
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A cryptography error occurred while trying to perform Mac Authentication. (key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to bytes)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 266
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "A cryptography error occurred while trying to perform Mac Authentication. (null key to bytes)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performAES128([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 228
    const-string p1, "AES/ECB/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x1

    .line 229
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 230
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 233
    new-instance p1, Ljava/io/IOException;

    const-string p2, "A cryptography error occurred while trying to perform Mac Authentication. (AES128)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performDHKeyAgreement(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const-string v0, "DH"

    :try_start_0
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 167
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v2

    .line 168
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :try_start_1
    new-instance v3, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-direct {v3, p3, p1, p2}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 183
    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p3

    check-cast p3, Ljavax/crypto/interfaces/DHPublicKey;

    .line 186
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 189
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 p2, 0x1

    .line 193
    invoke-virtual {v2, p3, p2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 196
    new-instance p2, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;-><init>(Lcom/iiordanov/bVNC/RFBSecurityARD-IA;)V

    .line 197
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p3

    invoke-direct {p0, p3, p4}, Lcom/iiordanov/bVNC/RFBSecurityARD;->keyToBytes(Ljava/security/Key;I)[B

    move-result-object p3

    invoke-static {p2, p3}, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->-$$Nest$fputpublicKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;[B)V

    .line 198
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/iiordanov/bVNC/RFBSecurityARD;->keyToBytes(Ljava/security/Key;I)[B

    move-result-object p1

    invoke-static {p2, p1}, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->-$$Nest$fputprivateKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;[B)V

    .line 199
    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    invoke-static {p2, p1}, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->-$$Nest$fputsecretKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;[B)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 205
    new-instance p1, Ljava/io/IOException;

    const-string p2, "A cryptography error occurred while trying to perform Mac Authentication. (Key agreement)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 171
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Your device does not support the required cryptography to perform Mac Authentication. (Diffie-Hellman)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performMD5([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 215
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 218
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Your device does not support the required cryptography to perform Mac Authentication. (MD5)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getType()B
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "Mac Authentication"

    return-object v0
.end method

.method public perform(Lcom/iiordanov/bVNC/RfbProto;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 103
    new-array v1, v0, [B

    .line 104
    iget-object v2, p1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 105
    iget-object v0, p1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 106
    new-array v2, v0, [B

    .line 107
    iget-object v4, p1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 108
    new-array v4, v0, [B

    .line 109
    iget-object v5, p1, Lcom/iiordanov/bVNC/RfbProto;->is:Ljava/io/DataInputStream;

    invoke-virtual {v5, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 114
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p0, v5, v2, v1, v0}, Lcom/iiordanov/bVNC/RFBSecurityARD;->performDHKeyAgreement(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->-$$Nest$fgetsecretKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iiordanov/bVNC/RFBSecurityARD;->performMD5([B)[B

    move-result-object v1

    const/16 v2, 0x80

    .line 127
    new-array v2, v2, [B

    .line 129
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 130
    invoke-virtual {v4, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 131
    iget-object v4, p0, Lcom/iiordanov/bVNC/RFBSecurityARD;->username:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 132
    iget-object v7, p0, Lcom/iiordanov/bVNC/RFBSecurityARD;->password:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 133
    array-length v7, v4

    const/16 v8, 0x3f

    if-ge v7, v8, :cond_0

    array-length v7, v4

    goto :goto_0

    :cond_0
    move v7, v8

    .line 134
    :goto_0
    array-length v9, v5

    if-ge v9, v8, :cond_1

    array-length v8, v5

    .line 135
    :cond_1
    invoke-static {v4, v3, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x40

    .line 136
    invoke-static {v5, v3, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    aput-byte v3, v2, v7

    add-int/2addr v8, v4

    .line 138
    aput-byte v3, v2, v8

    .line 139
    invoke-direct {p0, v1, v2}, Lcom/iiordanov/bVNC/RFBSecurityARD;->performAES128([B[B)[B

    move-result-object v1

    .line 142
    iget-object v2, p1, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 143
    iget-object p1, p1, Lcom/iiordanov/bVNC/RfbProto;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;->-$$Nest$fgetpublicKey(Lcom/iiordanov/bVNC/RFBSecurityARD$DHResult;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return v6
.end method
