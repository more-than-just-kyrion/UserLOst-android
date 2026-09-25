.class public final Lcom/trilead/ssh2/crypto/digest/HMAC;
.super Ljava/lang/Object;
.source "HMAC.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/digest/MAC;


# static fields
.field private static final ETM_SUFFIX:Ljava/lang/String; = "-etm@openssh.com"

.field static final HMAC_MD5:Ljava/lang/String; = "hmac-md5"

.field static final HMAC_MD5_96:Ljava/lang/String; = "hmac-md5-96"

.field static final HMAC_SHA1:Ljava/lang/String; = "hmac-sha1"

.field static final HMAC_SHA1_96:Ljava/lang/String; = "hmac-sha1-96"

.field static final HMAC_SHA1_ETM:Ljava/lang/String; = "hmac-sha1-etm@openssh.com"

.field static final HMAC_SHA2_256:Ljava/lang/String; = "hmac-sha2-256"

.field static final HMAC_SHA2_256_ETM:Ljava/lang/String; = "hmac-sha2-256-etm@openssh.com"

.field static final HMAC_SHA2_512:Ljava/lang/String; = "hmac-sha2-512"

.field static final HMAC_SHA2_512_ETM:Ljava/lang/String; = "hmac-sha2-512-etm@openssh.com"


# instance fields
.field private final buffer:[B

.field private final encryptThenMac:Z

.field private final mac:Ljavax/crypto/Mac;

.field private final outSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5

    const-string v0, "Unknown algorithm "

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    :try_start_0
    const-string v1, "hmac-sha1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "HmacSHA1"

    const/4 v3, 0x0

    if-nez v1, :cond_8

    :try_start_1
    const-string v1, "hmac-sha1-96"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 78
    :cond_0
    const-string v1, "hmac-sha1-etm@openssh.com"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 80
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    .line 81
    iput-boolean v4, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->encryptThenMac:Z

    goto/16 :goto_2

    .line 83
    :cond_1
    const-string v1, "hmac-md5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "hmac-md5-96"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "hmac-sha2-256"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "HmacSHA256"

    if-eqz v1, :cond_3

    .line 90
    :try_start_2
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    .line 91
    iput-boolean v3, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->encryptThenMac:Z

    goto :goto_2

    .line 93
    :cond_3
    const-string v1, "hmac-sha2-256-etm@openssh.com"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    .line 96
    iput-boolean v4, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->encryptThenMac:Z

    goto :goto_2

    .line 98
    :cond_4
    const-string v1, "hmac-sha2-512"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "HmacSHA512"

    if-eqz v1, :cond_5

    .line 100
    :try_start_3
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    .line 101
    iput-boolean v3, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->encryptThenMac:Z

    goto :goto_2

    .line 103
    :cond_5
    const-string v1, "hmac-sha2-512-etm@openssh.com"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    .line 106
    iput-boolean v4, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->encryptThenMac:Z

    goto :goto_2

    .line 109
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 85
    :cond_7
    :goto_0
    const-string v1, "HmacMD5"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    .line 86
    iput-boolean v3, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->encryptThenMac:Z

    goto :goto_2

    .line 75
    :cond_8
    :goto_1
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    .line 76
    iput-boolean v3, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->encryptThenMac:Z
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    .line 114
    :goto_2
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    .line 115
    const-string v1, "-96"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xc

    .line 116
    iput v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->outSize:I

    .line 117
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->buffer:[B

    goto :goto_3

    .line 119
    :cond_9
    iput v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->outSize:I

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->buffer:[B

    .line 124
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p2

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final getMac([BI)V
    .locals 3

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->buffer:[B

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljavax/crypto/Mac;->doFinal([BI)V

    .line 149
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->buffer:[B

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Mac;->doFinal([BI)V
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 154
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final initMac(I)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    .line 133
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 134
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 135
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 136
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method public isEncryptThenMac()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->encryptThenMac:Z

    return v0
.end method

.method public final size()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->outSize:I

    return v0
.end method

.method public final update([BII)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HMAC;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
