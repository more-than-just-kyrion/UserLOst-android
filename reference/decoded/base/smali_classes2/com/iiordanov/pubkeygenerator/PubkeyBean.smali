.class public Lcom/iiordanov/pubkeygenerator/PubkeyBean;
.super Lcom/iiordanov/pubkeygenerator/AbstractBean;
.source "PubkeyBean.java"


# static fields
.field public static final BEAN_NAME:Ljava/lang/String; = "pubkey"

.field private static final KEY_TYPE_DSA:Ljava/lang/String; = "DSA"

.field private static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"


# instance fields
.field private confirmUse:Z

.field private encrypted:Z

.field private id:J

.field private lifetime:I

.field private nickname:Ljava/lang/String;

.field private privateKey:[B

.field private publicKey:Ljava/security/PublicKey;

.field private startup:Z

.field private type:Ljava/lang/String;

.field private unlocked:Z

.field private unlockedPrivate:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/iiordanov/pubkeygenerator/AbstractBean;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->encrypted:Z

    .line 52
    iput-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->startup:Z

    .line 53
    iput-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->confirmUse:Z

    .line 54
    iput v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->lifetime:I

    .line 57
    iput-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->unlocked:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->unlockedPrivate:Ljava/lang/Object;

    return-void
.end method

.method private decodePublicKeyAs(Ljava/security/spec/EncodedKeySpec;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1

    const/4 v0, 0x0

    .line 105
    :try_start_0
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    .line 106
    invoke-virtual {p2, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getPrivateKey()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->decodePrivate([BLjava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    invoke-static {p1, p2}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->getEncodedPrivate(Ljava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setPrivateKey([B)V

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-lez p1, :cond_0

    move v0, p2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->setEncrypted(Z)V

    return p2

    :catch_0
    return v0
.end method

.method public getBeanName()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "pubkey"

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    instance-of v2, v1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_0

    .line 187
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 188
    const-string v2, "RSA "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "-bit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    :cond_0
    instance-of v1, v1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "DSA 1024-bit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 194
    :cond_1
    const-string v1, "Unknown Key Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :goto_0
    iget-boolean v1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->encrypted:Z

    if-eqz v1, :cond_2

    .line 198
    const-string v1, " (encrypted)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->id:J

    return-wide v0
.end method

.method public getLifetime()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->lifetime:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->privateKey:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlockedPrivate()Ljava/lang/Object;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->unlockedPrivate:Ljava/lang/Object;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 210
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "type"

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "private"

    iget-object v2, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->privateKey:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 213
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    .line 214
    const-string v2, "public"

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 215
    :cond_0
    iget-boolean v1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->encrypted:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encrypted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    iget-boolean v1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->startup:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "startup"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    iget-boolean v1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->confirmUse:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "confirmuse"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    iget v1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->lifetime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lifetime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public isConfirmUse()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->confirmUse:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->encrypted:Z

    return v0
.end method

.method public isStartup()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->startup:Z

    return v0
.end method

.method public isUnlocked()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->unlocked:Z

    return v0
.end method

.method public setConfirmUse(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->confirmUse:Z

    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->encrypted:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->id:J

    return-void
.end method

.method public setLifetime(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->lifetime:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPrivateKey([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->privateKey:[B

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->privateKey:[B

    :goto_0
    return-void
.end method

.method public setPublicKey([B)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 117
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->type:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 118
    invoke-direct {p0, v0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->decodePublicKeyAs(Ljava/security/spec/EncodedKeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    goto :goto_0

    .line 120
    :cond_1
    const-string p1, "RSA"

    invoke-direct {p0, v0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->decodePublicKeyAs(Ljava/security/spec/EncodedKeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_2

    .line 122
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->type:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_2
    const-string p1, "DSA"

    invoke-direct {p0, v0, p1}, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->decodePublicKeyAs(Ljava/security/spec/EncodedKeySpec;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_3

    .line 126
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->type:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public setStartup(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->startup:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUnlocked(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->unlocked:Z

    return-void
.end method

.method public setUnlockedPrivate(Ljava/lang/Object;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/PubkeyBean;->unlockedPrivate:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic toXML()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/iiordanov/pubkeygenerator/AbstractBean;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
