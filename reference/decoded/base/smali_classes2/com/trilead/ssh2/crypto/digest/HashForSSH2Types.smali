.class public Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;
.super Ljava/lang/Object;
.source "HashForSSH2Types.java"


# instance fields
.field md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 24
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDigest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest([BI)V

    return-void
.end method

.method public getDigest([BI)V
    .locals 2

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p1, p2, v1}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unable to digest"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getDigest()[B
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    new-array v0, v0, [B

    .line 73
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->getDigest([B)V

    return-object v0
.end method

.method public getDigestLength()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public updateBigInt(Ljava/math/BigInteger;)V
    .locals 0

    .line 57
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateByteString([B)V

    return-void
.end method

.method public updateByte(B)V
    .locals 2

    const/4 v0, 0x1

    .line 32
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 33
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public updateByteString([B)V
    .locals 1

    .line 51
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateUINT32(I)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->updateBytes([B)V

    return-void
.end method

.method public updateBytes([B)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public updateUINT32(I)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 44
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 45
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 46
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/HashForSSH2Types;->md:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method
