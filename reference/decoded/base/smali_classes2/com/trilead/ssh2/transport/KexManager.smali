.class public Lcom/trilead/ssh2/transport/KexManager;
.super Ljava/lang/Object;
.source "KexManager.java"


# static fields
.field private static final EXT_INFO_C:Ljava/lang/String; = "ext-info-c"

.field private static final HOSTKEY_ALGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEX_ALGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEX_STRICT_C_OPENSSH:Ljava/lang/String; = "kex-strict-c-v00@openssh.com"

.field private static final KEX_STRICT_S_OPENSSH:Ljava/lang/String; = "kex-strict-s-v00@openssh.com"

.field private static final log:Lcom/trilead/ssh2/log/Logger;

.field private static final supportsEc:Z


# instance fields
.field private final accessLock:Ljava/lang/Object;

.field private connectionClosed:Z

.field private csh:Lcom/trilead/ssh2/transport/ClientServerHello;

.field private final hostname:Ljava/lang/String;

.field private ignore_next_kex_packet:Z

.field private kexCount:I

.field private km:Lcom/trilead/ssh2/crypto/KeyMaterial;

.field private kxs:Lcom/trilead/ssh2/transport/KexState;

.field private lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

.field private nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

.field private nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

.field private final port:I

.field private final rnd:Ljava/security/SecureRandom;

.field sessionId:[B

.field private final tm:Lcom/trilead/ssh2/transport/TransportManager;

.field private verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const-class v0, Lcom/trilead/ssh2/transport/KexManager;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 63
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    sget-object v0, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v1, 0xa

    const-string v2, "Disabling EC support due to lack of KeyFactory"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_1
    sput-boolean v0, Lcom/trilead/ssh2/transport/KexManager;->supportsEc:Z

    .line 71
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Lcom/trilead/ssh2/transport/KexManager;->HOSTKEY_ALGS:Ljava/util/Set;

    .line 73
    const-string v2, "ssh-ed25519"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 75
    const-string v2, "ecdsa-sha2-nistp256"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v2, "ecdsa-sha2-nistp384"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v2, "ecdsa-sha2-nistp521"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    const-string v2, "rsa-sha2-512"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v2, "rsa-sha2-256"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v2, "ssh-rsa"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v2, "ssh-dss"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Lcom/trilead/ssh2/transport/KexManager;->KEX_ALGS:Ljava/util/Set;

    .line 87
    const-string v2, "curve25519-sha256"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v2, "curve25519-sha256@libssh.org"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "ecdh-sha2-nistp256"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v0, "ecdh-sha2-nistp384"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v0, "ecdh-sha2-nistp521"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    const-string v0, "diffie-hellman-group18-sha512"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v0, "diffie-hellman-group16-sha512"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v0, "diffie-hellman-group-exchange-sha256"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v0, "diffie-hellman-group14-sha256"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v0, "diffie-hellman-group-exchange-sha1"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v0, "diffie-hellman-group14-sha1"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v0, "diffie-hellman-group1-sha1"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;Lcom/trilead/ssh2/transport/ClientServerHello;Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/lang/String;ILcom/trilead/ssh2/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 118
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    .line 120
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 135
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 136
    iput-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    .line 137
    iput-object p3, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 138
    new-instance p1, Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {p1}, Lcom/trilead/ssh2/DHGexParameters;-><init>()V

    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 139
    iput-object p4, p0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    .line 140
    iput p5, p0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    .line 141
    iput-object p6, p0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    .line 142
    iput-object p7, p0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    return-void
.end method

.method private static addExtraKexAlgorithms(Lcom/trilead/ssh2/crypto/CryptoWishList;)V
    .locals 8

    .line 324
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "kex-strict-c-v00@openssh.com"

    const-string v6, "ext-info-c"

    if-ge v4, v2, :cond_1

    aget-object v7, v0, v4

    .line 328
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 329
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    return-void
.end method

.method public static checkKexAlgorithmList([Ljava/lang/String;)V
    .locals 4

    .line 447
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 448
    sget-object v3, Lcom/trilead/ssh2/transport/KexManager;->KEX_ALGS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown kex algorithm \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V
    .locals 4

    .line 434
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 435
    sget-object v3, Lcom/trilead/ssh2/transport/KexManager;->HOSTKEY_ALGS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown server host key algorithm \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 190
    array-length v0, p1

    if-nez v0, :cond_0

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 193
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    aget-object p1, p1, v1

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1

    .line 188
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private containsAlgo([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 205
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private establishKeyMaterial()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/digest/MACs;->getKeyLen(Ljava/lang/String;)I

    move-result v7

    .line 375
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v5

    .line 376
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v6

    .line 378
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/digest/MACs;->getKeyLen(Ljava/lang/String;)I

    move-result v10

    .line 379
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v8

    .line 380
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v9

    .line 382
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v0, Lcom/trilead/ssh2/transport/KexState;->hashAlgo:Ljava/lang/String;

    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v0, Lcom/trilead/ssh2/transport/KexState;->H:[B

    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v0, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    invoke-static/range {v1 .. v10}, Lcom/trilead/ssh2/crypto/KeyMaterial;->create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lcom/trilead/ssh2/crypto/KeyMaterial;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 387
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not establish key material: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private filterHostKeyTypes(Lcom/trilead/ssh2/crypto/CryptoWishList;)V
    .locals 10

    .line 344
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;

    instance-of v1, v0, Lcom/trilead/ssh2/ExtendedServerHostKeyVerifier;

    if-eqz v1, :cond_3

    .line 345
    check-cast v0, Lcom/trilead/ssh2/ExtendedServerHostKeyVerifier;

    .line 347
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    iget v2, p0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/ExtendedServerHostKeyVerifier;->getKnownKeyAlgorithmsForHost(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 348
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    iget-object v2, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 357
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 358
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 364
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private finishKex()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->H:[B

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/trilead/ssh2/transport/KexManager;->establishKeyMaterial()V

    .line 400
    new-instance v0, Lcom/trilead/ssh2/packets/PacketNewKeys;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/PacketNewKeys;-><init>()V

    .line 401
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketNewKeys;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v1, v1, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_client_to_server:[B

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v2, v2, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    iget-object v3, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v3, v3, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 414
    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v2, v2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    invoke-static {v2}, Lcom/trilead/ssh2/compression/CompressionFactory;->createCompressor(Ljava/lang/String;)Lcom/trilead/ssh2/compression/ICompressor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    iget-object v3, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3, v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 423
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->changeSendCompression(Lcom/trilead/ssh2/compression/ICompressor;)V

    .line 424
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/TransportManager;->kexFinished()V

    return-void

    .line 419
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fatal error during MAC startup!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultKexAlgorithmList()[Ljava/lang/String;
    .locals 2

    .line 442
    sget-object v0, Lcom/trilead/ssh2/transport/KexManager;->KEX_ALGS:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;
    .locals 2

    .line 429
    sget-object v0, Lcom/trilead/ssh2/transport/KexManager;->HOSTKEY_ALGS:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/trilead/ssh2/transport/NegotiateException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 173
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 176
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 177
    array-length v4, p2

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p2, v5

    .line 178
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_3
    new-instance p1, Lcom/trilead/ssh2/transport/NegotiateException;

    invoke-direct {p1}, Lcom/trilead/ssh2/transport/NegotiateException;-><init>()V

    throw p1

    .line 171
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private isGuessOK(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 217
    iget-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v1, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 222
    :cond_0
    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 215
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private mergeKexParameters(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Lcom/trilead/ssh2/transport/NegotiatedParameters;
    .locals 13

    const-string v0, "comp_algo_server_to_client="

    const-string v1, "comp_algo_client_to_server="

    const-string v2, "mac_algo_server_to_client="

    const-string v3, "mac_algo_client_to_server="

    const-string v4, "enc_algo_server_to_client="

    const-string v5, "enc_algo_client_to_server="

    const-string v6, "server_host_key_algo="

    const-string v7, "kex_algo="

    .line 227
    new-instance v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;

    invoke-direct {v8}, Lcom/trilead/ssh2/transport/NegotiatedParameters;-><init>()V

    const/4 v9, 0x0

    .line 231
    :try_start_0
    iget-object v10, p1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v11, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    .line 233
    iget-object v10, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    const-string v11, "kex-strict-s-v00@openssh.com"

    invoke-direct {p0, v10, v11}, Lcom/trilead/ssh2/transport/KexManager;->containsAlgo([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->isStrictKex:Z

    .line 235
    sget-object v10, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    iget-object v11, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x14

    invoke-virtual {v10, v11, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 237
    iget-object v7, p1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    iget-object v12, p2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v7, v12}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    .line 240
    iget-object v7, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v11, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 242
    iget-object v6, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    iget-object v7, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 244
    iget-object v6, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    iget-object v7, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 247
    iget-object v6, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v11, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 248
    iget-object v5, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v11, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 250
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    .line 252
    iget-object v4, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    iget-object v5, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    .line 255
    iget-object v4, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v11, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 256
    iget-object v3, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 258
    iget-object v2, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    iget-object v3, p2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    .line 260
    iget-object v2, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    iget-object v3, p2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    .line 263
    iget-object v2, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 264
    iget-object v1, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 274
    :try_start_1
    iget-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    iget-object v1, p2, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;
    :try_end_1
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    iput-object v9, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;

    .line 284
    :goto_0
    :try_start_2
    iget-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    iget-object v1, p2, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;
    :try_end_2
    .catch Lcom/trilead/ssh2/transport/NegotiateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 289
    :catch_1
    iput-object v9, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;

    .line 292
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->isGuessOK(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 293
    iput-boolean p1, v8, Lcom/trilead/ssh2/transport/NegotiatedParameters;->guessOK:Z

    :cond_0
    return-object v8

    :catch_2
    return-object v9
.end method

.method private verifySignature([B[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-static {}, Lcom/trilead/ssh2/signature/Ed25519Verify;->get()Lcom/trilead/ssh2/signature/Ed25519Verify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/Ed25519Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-static {}, Lcom/trilead/ssh2/signature/Ed25519Verify;->get()Lcom/trilead/ssh2/signature/Ed25519Verify;

    move-result-object v0

    goto/16 :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object v0

    goto/16 :goto_0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP384Verify;

    move-result-object v0

    goto/16 :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP521Verify;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA512Verify;->get()Lcom/trilead/ssh2/signature/RSASHA512Verify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/RSASHA512Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA512Verify;->get()Lcom/trilead/ssh2/signature/RSASHA512Verify;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA256Verify;->get()Lcom/trilead/ssh2/signature/RSASHA256Verify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/RSASHA256Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 466
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA256Verify;->get()Lcom/trilead/ssh2/signature/RSASHA256Verify;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->get()Lcom/trilead/ssh2/signature/RSASHA1Verify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 468
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->get()Lcom/trilead/ssh2/signature/RSASHA1Verify;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_6
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-static {}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->get()Lcom/trilead/ssh2/signature/DSASHA1Verify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 470
    invoke-static {}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->get()Lcom/trilead/ssh2/signature/DSASHA1Verify;

    move-result-object v0

    .line 475
    :goto_0
    invoke-interface {v0, p2}, Lcom/trilead/ssh2/signature/SSHSignature;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2

    .line 476
    sget-object v1, Lcom/trilead/ssh2/transport/KexManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-interface {v0}, Lcom/trilead/ssh2/signature/SSHSignature;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Verifying "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v1, v3, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->H:[B

    invoke-interface {v0, v1, p1, p2}, Lcom/trilead/ssh2/signature/SSHSignature;->verifySignature([B[BLjava/security/PublicKey;)Z

    move-result p1

    return p1

    .line 472
    :cond_7
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown server host key algorithm \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getOrWaitForConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeCounter:I

    if-lt v1, p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    monitor-exit v0

    return-object p1

    .line 154
    :cond_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 159
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Key exchange was not finished, connection is closed."

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized handleMessage([BI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Unkown KEX method! ("

    const-string v1, "Fatal error during MAC startup: "

    const-string v2, "Unexpected KEX message (type "

    monitor-enter p0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 486
    :try_start_0
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 488
    :try_start_1
    iput-boolean v3, p0, Lcom/trilead/ssh2/transport/KexManager;->connectionClosed:Z

    .line 489
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 490
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    .line 491
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2

    .line 494
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    const/16 v5, 0x14

    const/4 v6, 0x0

    if-nez v4, :cond_2

    aget-byte v7, p1, v6

    if-ne v7, v5, :cond_1

    goto :goto_0

    .line 495
    :cond_1
    new-instance p2, Ljava/io/IOException;

    aget-byte p1, p1, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 497
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    if-eqz v2, :cond_3

    .line 499
    iput-boolean v6, p0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 500
    monitor-exit p0

    return-void

    .line 503
    :cond_3
    :try_start_4
    aget-byte v2, p1, v6

    if-ne v2, v5, :cond_10

    if-eqz v4, :cond_5

    .line 505
    iget v0, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-nez v0, :cond_4

    goto :goto_1

    .line 506
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected SSH_MSG_KEXINIT message during on-going kex exchange!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 508
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    if-nez v0, :cond_6

    .line 514
    new-instance v0, Lcom/trilead/ssh2/transport/KexState;

    invoke-direct {v0}, Lcom/trilead/ssh2/transport/KexState;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 515
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 516
    new-instance v0, Lcom/trilead/ssh2/packets/PacketKexInit;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>(Lcom/trilead/ssh2/crypto/CryptoWishList;)V

    .line 517
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput-object v0, v1, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 518
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 521
    :cond_6
    new-instance v0, Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-direct {v0, p1, v6, p2}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>([BII)V

    .line 522
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput-object v0, p1, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 524
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketKexInit;->getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;

    move-result-object p2

    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexInit;->getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/trilead/ssh2/transport/KexManager;->mergeKexParameters(Lcom/trilead/ssh2/transport/KexParameters;Lcom/trilead/ssh2/transport/KexParameters;)Lcom/trilead/ssh2/transport/NegotiatedParameters;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    .line 526
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    if-eqz p1, :cond_f

    .line 529
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/PacketKexInit;->isFirst_kex_packet_follows()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-boolean p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->guessOK:Z

    if-nez p1, :cond_7

    .line 535
    iput-boolean v3, p0, Lcom/trilead/ssh2/transport/KexManager;->ignore_next_kex_packet:Z

    .line 538
    :cond_7
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group-exchange-sha256"

    .line 539
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_3

    .line 560
    :cond_8
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "curve25519-sha256"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "curve25519-sha256@libssh.org"

    .line 561
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "ecdh-sha2-nistp521"

    .line 562
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "ecdh-sha2-nistp384"

    .line 563
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "ecdh-sha2-nistp256"

    .line 564
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group18-sha512"

    .line 565
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group16-sha512"

    .line 566
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group14-sha256"

    .line 567
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group14-sha1"

    .line 568
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "diffie-hellman-group1-sha1"

    .line 569
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    .line 581
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown KEX method!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 570
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-static {p2}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->getInstance(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;

    .line 572
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->init(Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->getHashAlgo()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->hashAlgo:Ljava/lang/String;

    .line 575
    new-instance p1, Lcom/trilead/ssh2/packets/PacketKexDHInit;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->getE()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/trilead/ssh2/packets/PacketKexDHInit;-><init>([B)V

    .line 576
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/PacketKexDHInit;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 577
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v3, p1, Lcom/trilead/ssh2/transport/KexState;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 578
    monitor-exit p0

    return-void

    .line 541
    :cond_b
    :goto_3
    :try_start_5
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-virtual {p1}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    const-string p2, "OpenSSH_2\\.([0-4]\\.|5\\.[0-2]).*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    .line 548
    :cond_c
    new-instance p1, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {p1, p2}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;-><init>(Lcom/trilead/ssh2/DHGexParameters;)V

    .line 549
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    goto :goto_5

    .line 543
    :cond_d
    :goto_4
    new-instance p1, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {p1, p2}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;-><init>(Lcom/trilead/ssh2/DHGexParameters;)V

    .line 544
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 551
    :goto_5
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string p2, "sha1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 552
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    const-string p2, "SHA1"

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->hashAlgo:Ljava/lang/String;

    goto :goto_6

    .line 554
    :cond_e
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    const-string p2, "SHA-256"

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->hashAlgo:Ljava/lang/String;

    .line 556
    :goto_6
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v3, p1, Lcom/trilead/ssh2/transport/KexState;->state:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 557
    monitor-exit p0

    return-void

    .line 527
    :cond_f
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot negotiate, proposals do not match."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    const/16 v5, 0x15

    if-ne v2, v5, :cond_12

    .line 586
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_11

    .line 595
    :try_start_7
    iget-object p1, v4, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object p2, p2, Lcom/trilead/ssh2/crypto/KeyMaterial;->enc_key_server_to_client:[B

    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v0, v0, Lcom/trilead/ssh2/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    invoke-static {p1, v6, p2, v0}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    move-result-object p1

    .line 598
    new-instance p2, Lcom/trilead/ssh2/crypto/digest/HMAC;

    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    iget-object v2, p0, Lcom/trilead/ssh2/transport/KexManager;->km:Lcom/trilead/ssh2/crypto/KeyMaterial;

    iget-object v2, v2, Lcom/trilead/ssh2/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    invoke-direct {p2, v0, v2}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 600
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/trilead/ssh2/compression/CompressionFactory;->createCompressor(Ljava/lang/String;)Lcom/trilead/ssh2/compression/ICompressor;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 607
    :try_start_8
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1, p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 608
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->changeRecvCompression(Lcom/trilead/ssh2/compression/ICompressor;)V

    .line 610
    new-instance p1, Lcom/trilead/ssh2/ConnectionInfo;

    invoke-direct {p1}, Lcom/trilead/ssh2/ConnectionInfo;-><init>()V

    .line 612
    iget p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    .line 614
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    iput-object p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeAlgorithm:Ljava/lang/String;

    .line 615
    iget p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kexCount:I

    iput p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->keyExchangeCounter:I

    .line 616
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    iput-object p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerCryptoAlgorithm:Ljava/lang/String;

    .line 617
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    iput-object p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientCryptoAlgorithm:Ljava/lang/String;

    .line 618
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    iput-object p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerMACAlgorithm:Ljava/lang/String;

    .line 619
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    iput-object p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientMACAlgorithm:Ljava/lang/String;

    .line 620
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    iput-object p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKeyAlgorithm:Ljava/lang/String;

    .line 621
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    iput-object p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->serverHostKey:[B

    .line 622
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    iput-object p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->clientToServerCompressionAlgorithm:Ljava/lang/String;

    .line 623
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    iput-object p2, p1, Lcom/trilead/ssh2/ConnectionInfo;->serverToClientCompressionAlgorithm:Ljava/lang/String;

    .line 625
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 627
    :try_start_9
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->lastConnInfo:Lcom/trilead/ssh2/ConnectionInfo;

    .line 628
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 629
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 p1, 0x0

    .line 631
    :try_start_a
    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 632
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 629
    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw p1

    :catch_0
    move-exception p1

    .line 604
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 587
    :cond_11
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Peer sent SSH_MSG_NEWKEYS, but I have no key material ready!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    if-eqz v4, :cond_1f

    .line 635
    iget v1, v4, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-eqz v1, :cond_1f

    .line 638
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v2, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group-exchange-sha256"

    .line 639
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_8

    .line 705
    :cond_13
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group1-sha1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group14-sha1"

    .line 706
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group14-sha256"

    .line 707
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group16-sha512"

    .line 708
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "diffie-hellman-group18-sha512"

    .line 709
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "ecdh-sha2-nistp256"

    .line 710
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "ecdh-sha2-nistp384"

    .line 711
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "ecdh-sha2-nistp521"

    .line 712
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "curve25519-sha256"

    .line 713
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v4, "curve25519-sha256@libssh.org"

    .line 714
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 716
    :cond_14
    iget-object v1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v1, v1, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-ne v1, v3, :cond_18

    .line 719
    new-instance v0, Lcom/trilead/ssh2/packets/PacketKexDHReply;

    invoke-direct {v0, p1, v6, p2}, Lcom/trilead/ssh2/packets/PacketKexDHReply;-><init>([BII)V

    .line 721
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    .line 723
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz p1, :cond_16

    .line 729
    :try_start_d
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    iget v1, p0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    iget-object v3, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {p1, p2, v1, v3, v4}, Lcom/trilead/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z

    move-result p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz p1, :cond_15

    goto :goto_7

    .line 738
    :cond_15
    :try_start_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 733
    new-instance p2, Ljava/io/IOException;

    const-string v0, "The server hostkey was not accepted by the verifier callback."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 741
    :cond_16
    :goto_7
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getF()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->setF([B)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 745
    :try_start_f
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, p1, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {p2}, Lcom/trilead/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v4

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {p2}, Lcom/trilead/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v5

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v6

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 746
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v8

    .line 745
    invoke-virtual/range {v3 .. v8}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->calculateH([B[B[B[B[B)[B

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->H:[B
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 753
    :try_start_10
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDHReply;->getSignature()[B

    move-result-object p1

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 758
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->dhx:Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/dh/GenericDhExchange;->getK()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 760
    invoke-direct {p0}, Lcom/trilead/ssh2/transport/KexManager;->finishKex()V

    .line 761
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v2, p1, Lcom/trilead/ssh2/transport/KexState;->state:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 762
    monitor-exit p0

    return-void

    .line 756
    :cond_17
    :try_start_11
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Hostkey signature sent by remote is wrong!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 750
    new-instance p2, Ljava/io/IOException;

    const-string v0, "KEX error."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 766
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 641
    :cond_19
    :goto_8
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v0, v0, Lcom/trilead/ssh2/transport/KexState;->state:I

    const/4 v1, 0x2

    if-ne v0, v3, :cond_1a

    .line 643
    new-instance v0, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;

    invoke-direct {v0, p1, v6, p2}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;-><init>([BII)V

    .line 644
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    new-instance p2, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p2, v2, v0}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    .line 645
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->init(Ljava/security/SecureRandom;)V

    .line 646
    new-instance p1, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getE()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;-><init>(Ljava/math/BigInteger;)V

    .line 647
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/PacketKexDhGexInit;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V

    .line 648
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v1, p1, Lcom/trilead/ssh2/transport/KexState;->state:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 649
    monitor-exit p0

    return-void

    .line 652
    :cond_1a
    :try_start_12
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget v0, v0, Lcom/trilead/ssh2/transport/KexState;->state:I

    if-ne v0, v1, :cond_1e

    .line 654
    new-instance v0, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;

    invoke-direct {v0, p1, v6, p2}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;-><init>([BII)V

    .line 656
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    .line 658
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->verifier:Lcom/trilead/ssh2/ServerHostKeyVerifier;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz p1, :cond_1c

    .line 664
    :try_start_13
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->hostname:Ljava/lang/String;

    iget v1, p0, Lcom/trilead/ssh2/transport/KexManager;->port:I

    iget-object v3, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    iget-object v4, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, v4, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-interface {p1, p2, v1, v3, v4}, Lcom/trilead/ssh2/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z

    move-result p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz p1, :cond_1b

    goto :goto_9

    .line 673
    :cond_1b
    :try_start_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p1

    .line 668
    new-instance p2, Ljava/io/IOException;

    const-string v0, "The server hostkey was not accepted by the verifier callback."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 676
    :cond_1c
    :goto_9
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p1, p1, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getF()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 680
    :try_start_15
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v3, p1, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v4, p2, Lcom/trilead/ssh2/transport/KexState;->hashAlgo:Ljava/lang/String;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    .line 681
    invoke-virtual {p2}, Lcom/trilead/ssh2/transport/ClientServerHello;->getClientString()[B

    move-result-object v5

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->csh:Lcom/trilead/ssh2/transport/ClientServerHello;

    invoke-virtual {p2}, Lcom/trilead/ssh2/transport/ClientServerHello;->getServerString()[B

    move-result-object v6

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 682
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object v8

    .line 683
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v9

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v10, p2, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 680
    invoke-virtual/range {v3 .. v10}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->calculateH(Ljava/lang/String;[B[B[B[B[BLcom/trilead/ssh2/DHGexParameters;)[B

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->H:[B
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 690
    :try_start_16
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketKexDhGexReply;->getSignature()[B

    move-result-object p1

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p2, Lcom/trilead/ssh2/transport/KexState;->hostkey:[B

    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->verifySignature([B[B)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 695
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;->getK()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->K:Ljava/math/BigInteger;

    .line 697
    invoke-direct {p0}, Lcom/trilead/ssh2/transport/KexManager;->finishKex()V

    .line 698
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput v2, p1, Lcom/trilead/ssh2/transport/KexState;->state:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 699
    monitor-exit p0

    return-void

    .line 693
    :cond_1d
    :try_start_17
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Hostkey signature sent by remote is wrong!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    move-exception p1

    .line 687
    new-instance p2, Ljava/io/IOException;

    const-string v0, "KEX error."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 702
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Illegal State in KEX Exchange!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 636
    :cond_1f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected Kex submessage!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    throw p1
.end method

.method public declared-synchronized initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 300
    :try_start_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/CryptoWishList;->clone()Lcom/trilead/ssh2/crypto/CryptoWishList;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 301
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/transport/KexManager;->filterHostKeyTypes(Lcom/trilead/ssh2/crypto/CryptoWishList;)V

    .line 302
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    invoke-static {p1}, Lcom/trilead/ssh2/transport/KexManager;->addExtraKexAlgorithms(Lcom/trilead/ssh2/crypto/CryptoWishList;)V

    .line 304
    iput-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 306
    iget-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    if-nez p1, :cond_0

    .line 308
    new-instance p1, Lcom/trilead/ssh2/transport/KexState;

    invoke-direct {p1}, Lcom/trilead/ssh2/transport/KexState;-><init>()V

    iput-object p1, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    .line 310
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXdhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexState;->dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

    .line 311
    new-instance p1, Lcom/trilead/ssh2/packets/PacketKexInit;

    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->nextKEXcryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    invoke-direct {p1, p2}, Lcom/trilead/ssh2/packets/PacketKexInit;-><init>(Lcom/trilead/ssh2/crypto/CryptoWishList;)V

    .line 312
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iput-object p1, p2, Lcom/trilead/ssh2/transport/KexState;->localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

    .line 313
    iget-object p2, p0, Lcom/trilead/ssh2/transport/KexManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/PacketKexInit;->getPayload()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/trilead/ssh2/transport/TransportManager;->sendKexMessage([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isStrictKex()Z
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/trilead/ssh2/transport/KexManager;->kxs:Lcom/trilead/ssh2/transport/KexState;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexState;->np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

    iget-boolean v0, v0, Lcom/trilead/ssh2/transport/NegotiatedParameters;->isStrictKex:Z

    return v0
.end method
