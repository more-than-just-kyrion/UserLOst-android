.class public Lcom/trilead/ssh2/crypto/dh/EcDhExchange;
.super Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;
.source "EcDhExchange.java"


# instance fields
.field private clientPrivate:Ljava/security/interfaces/ECPrivateKey;

.field private clientPublic:Ljava/security/interfaces/ECPublicKey;

.field private serverPublic:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;-><init>()V

    return-void
.end method


# virtual methods
.method public getE()[B
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->clientPublic:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->clientPublic:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->encodeECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgo()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->clientPublic:Ljava/security/interfaces/ECPublicKey;

    invoke-static {v0}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getDigestAlgorithmForParams(Ljava/security/interfaces/ECKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getServerE()[B
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->serverPublic:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->serverPublic:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->encodeECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const-string v0, "ecdh-sha2-nistp256"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object p1

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->getParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "ecdh-sha2-nistp384"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;

    move-result-object p1

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->getParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "ecdh-sha2-nistp521"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;

    move-result-object p1

    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->getParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    .line 47
    :goto_0
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->clientPrivate:Ljava/security/interfaces/ECPrivateKey;

    .line 51
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->clientPublic:Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid DH parameters"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 53
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No DH keypair generator"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown EC curve "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setF([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->clientPublic:Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    .line 79
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->clientPublic:Ljava/security/interfaces/ECPublicKey;

    invoke-static {v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getVerifierForKey(Ljava/security/interfaces/ECKey;)Lcom/trilead/ssh2/signature/ECDSASHA2Verify;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->decodeECPoint([B)Ljava/security/spec/ECPoint;

    move-result-object p1

    .line 86
    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, p1, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    iput-object p1, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->serverPublic:Ljava/security/interfaces/ECPublicKey;

    .line 90
    const-string p1, "ECDH"

    invoke-static {p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->clientPrivate:Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {p1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 92
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->serverPublic:Ljava/security/interfaces/ECPublicKey;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/dh/EcDhExchange;->sharedSecret:Ljava/math/BigInteger;

    return-void

    .line 82
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No such EC group"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 96
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid ECDH key"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ECDH key agreement method"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DhDsaExchange not initialized!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
