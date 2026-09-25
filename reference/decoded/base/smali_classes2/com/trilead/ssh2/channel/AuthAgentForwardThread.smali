.class public Lcom/trilead/ssh2/channel/AuthAgentForwardThread;
.super Ljava/lang/Thread;
.source "AuthAgentForwardThread.java"

# interfaces
.implements Lcom/trilead/ssh2/channel/IChannelWorkerThread;


# static fields
.field private static final SSH2_AGENTC_ADD_IDENTITY:I = 0x11

.field private static final SSH2_AGENTC_ADD_ID_CONSTRAINED:I = 0x19

.field private static final SSH2_AGENTC_REMOVE_ALL_IDENTITIES:I = 0x13

.field private static final SSH2_AGENTC_REMOVE_IDENTITY:I = 0x12

.field private static final SSH2_AGENTC_REQUEST_IDENTITIES:I = 0xb

.field private static final SSH2_AGENTC_SIGN_REQUEST:I = 0xd

.field private static final SSH2_AGENT_IDENTITIES_ANSWER:I = 0xc

.field private static final SSH2_AGENT_SIGN_RESPONSE:I = 0xe

.field private static final SSH_AGENTC_LOCK:I = 0x16

.field private static final SSH_AGENTC_UNLOCK:I = 0x17

.field private static final SSH_AGENT_CONSTRAIN_CONFIRM:I = 0x2

.field private static final SSH_AGENT_CONSTRAIN_LIFETIME:I = 0x1

.field private static final SSH_AGENT_FAILURE:[B

.field private static final SSH_AGENT_RSA_SHA2_256:I = 0x2

.field private static final SSH_AGENT_RSA_SHA2_512:I = 0x4

.field private static final SSH_AGENT_SUCCESS:[B

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

.field buffer:[B

.field c:Lcom/trilead/ssh2/channel/Channel;

.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    .line 77
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    .line 78
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    .line 109
    const-class v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x5t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x6t
    .end array-data
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/AuthAgentCallback;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x7530

    .line 116
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->buffer:[B

    .line 120
    iput-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 121
    iput-object p2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    .line 123
    sget-object p1, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {p1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x14

    .line 124
    const-string v0, "AuthAgentForwardThread started"

    invoke-virtual {p1, p2, v0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addIdentity(Lcom/trilead/ssh2/packets/TypesReader;Z)V
    .locals 15

    move-object v0, p0

    const-string v1, "Invalid curve name for ecdsa-sha2-nistp256: "

    const-string v2, "Unknown key type: "

    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 309
    const-string v4, "ssh-rsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 310
    const-string v1, "RSA"

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v7

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v8

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v9

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v14

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v10

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v11

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 322
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 324
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v7, v8}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 325
    new-instance v4, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 326
    :cond_1
    const-string v4, "ssh-dss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    const-string v1, "DSA"

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v3

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v4

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v6

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v7

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v8

    .line 336
    new-instance v9, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v9, v6, v2, v3, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 337
    new-instance v6, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v6, v7, v2, v3, v4}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v4, v6

    move-object v2, v8

    move-object v3, v9

    goto :goto_0

    .line 338
    :cond_2
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object v4

    invoke-virtual {v4}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 339
    invoke-static {}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;->get()Lcom/trilead/ssh2/signature/ECDSASHA2Verify$ECDSASHA2NISTP256Verify;

    move-result-object v2

    .line 340
    const-string v3, "EC"

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v6

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v7

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v8

    .line 347
    const-string v9, "nistp256"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 348
    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 349
    iget-object v1, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 353
    :cond_3
    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 354
    invoke-virtual {v2, v6}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->decodeECPoint([B)Ljava/security/spec/ECPoint;

    move-result-object v2

    if-nez v2, :cond_4

    .line 357
    iget-object v1, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 361
    :cond_4
    new-instance v4, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v4, v2, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 362
    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v2, v7, v1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v8

    .line 372
    :goto_0
    :try_start_1
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 373
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 374
    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 385
    :try_start_2
    new-instance v4, Ljava/security/KeyPair;

    invoke-direct {v4, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    const/4 v1, 0x0

    move v3, v1

    if-eqz p2, :cond_7

    .line 391
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v6

    if-lez v6, :cond_7

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v5, :cond_5

    move v1, v7

    goto :goto_1

    :cond_5
    if-ne v6, v7, :cond_6

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v3

    goto :goto_1

    .line 399
    :cond_6
    iget-object v1, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 405
    :cond_7
    iget-object v5, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v5, v4, v2, v1, v3}, Lcom/trilead/ssh2/AuthAgentCallback;->addIdentity(Ljava/security/KeyPair;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 406
    iget-object v1, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    .line 408
    :cond_8
    iget-object v1, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    .line 381
    :catch_0
    iget-object v1, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 377
    :catch_1
    iget-object v1, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 364
    :cond_9
    sget-object v1, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 365
    iget-object v1, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 414
    :catch_2
    :try_start_3
    iget-object v1, v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :goto_2
    return-void
.end method

.method private failWhenLocked()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v0}, Lcom/trilead/ssh2/AuthAgentCallback;->isAgentLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v1, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processLockRequest(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 1

    .line 546
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 550
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v0, p1}, Lcom/trilead/ssh2/AuthAgentCallback;->setAgentLock(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 551
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method private processSignRequest(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 5

    const-string v0, "Unrecognized ssh-agent flags: "

    .line 479
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v1

    .line 483
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object v2

    .line 485
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    and-int/lit8 v3, p1, -0x7

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    .line 489
    sget-object v1, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/AuthAgentCallback;->getKeyPair([B)Ljava/security/KeyPair;

    move-result-object v0

    if-nez v0, :cond_2

    .line 497
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 503
    :cond_2
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 504
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_5

    .line 505
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 507
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA512Verify;->get()Lcom/trilead/ssh2/signature/RSASHA512Verify;

    move-result-object p1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1, v2, v0, v1}, Lcom/trilead/ssh2/signature/RSASHA512Verify;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p1

    goto :goto_0

    :cond_3
    and-int/2addr p1, v4

    if-eqz p1, :cond_4

    .line 509
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA256Verify;->get()Lcom/trilead/ssh2/signature/RSASHA256Verify;

    move-result-object p1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1, v2, v0, v1}, Lcom/trilead/ssh2/signature/RSASHA256Verify;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p1

    goto :goto_0

    .line 511
    :cond_4
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->get()Lcom/trilead/ssh2/signature/RSASHA1Verify;

    move-result-object p1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1, v2, v0, v1}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p1

    goto :goto_0

    .line 513
    :cond_5
    instance-of p1, v0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz p1, :cond_6

    .line 514
    invoke-static {}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->get()Lcom/trilead/ssh2/signature/DSASHA1Verify;

    move-result-object p1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1, v2, v0, v1}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p1

    goto :goto_0

    .line 515
    :cond_6
    instance-of p1, v0, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;

    if-eqz p1, :cond_7

    .line 516
    invoke-static {}, Lcom/trilead/ssh2/signature/Ed25519Verify;->get()Lcom/trilead/ssh2/signature/Ed25519Verify;

    move-result-object p1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1, v2, v0, v1}, Lcom/trilead/ssh2/signature/Ed25519Verify;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p1

    .line 522
    :goto_0
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0xe

    .line 523
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 524
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 526
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->sendPacket([B)V

    goto :goto_1

    .line 518
    :cond_7
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 532
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    return-void
.end method

.method private processUnlockRequest(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 1

    .line 575
    :try_start_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 577
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v0, p1}, Lcom/trilead/ssh2/AuthAgentCallback;->requestAgentUnlock(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 578
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method private removeAllIdentities(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 1

    .line 455
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {p1}, Lcom/trilead/ssh2/AuthAgentCallback;->removeAllIdentities()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 459
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method private removeIdentity(Lcom/trilead/ssh2/packets/TypesReader;)V
    .locals 1

    .line 428
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->failWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 431
    :cond_0
    invoke-virtual {p1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    move-result-object p1

    .line 432
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v0, p1}, Lcom/trilead/ssh2/AuthAgentCallback;->removeIdentity([B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 433
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_SUCCESS:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method private sendIdentities()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    const/16 v1, 0xc

    .line 271
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 274
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v1}, Lcom/trilead/ssh2/AuthAgentCallback;->isAgentLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-interface {v1}, Lcom/trilead/ssh2/AuthAgentCallback;->retrieveIdentities()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 278
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    .line 280
    :goto_1
    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    if-eqz v1, :cond_2

    .line 283
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 285
    array-length v5, v4

    invoke-virtual {v0, v4, v2, v5}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 286
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 290
    :cond_2
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->sendPacket([B)V

    return-void
.end method

.method private sendPacket([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 601
    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 602
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([B)V

    .line 603
    iget-object p1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v0, 0x1

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v1, v1, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V

    .line 144
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v1}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->is:Ljava/io/InputStream;

    .line 145
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v1}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    const/4 v2, 0x4

    move v3, v1

    move v4, v2

    .line 155
    :cond_0
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->is:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->buffer:[B

    array-length v7, v6

    sub-int/2addr v7, v3

    invoke-virtual {v5, v6, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-gtz v5, :cond_1

    .line 211
    :try_start_3
    iget-object v1, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v1, v1, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const-string v3, "EOF on both streams reached."

    invoke-virtual {v1, v2, v3, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_1
    add-int/2addr v3, v5

    if-lt v3, v2, :cond_2

    .line 169
    new-instance v4, Lcom/trilead/ssh2/packets/TypesReader;

    iget-object v5, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->buffer:[B

    invoke-direct {v4, v5, v1, v2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 170
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v4

    add-int/2addr v4, v2

    :cond_2
    if-ne v4, v3, :cond_0

    .line 174
    new-instance v5, Lcom/trilead/ssh2/packets/TypesReader;

    iget-object v6, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->buffer:[B

    add-int/lit8 v3, v3, -0x4

    invoke-direct {v5, v6, v2, v3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 175
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v3

    const/16 v6, 0xb

    if-eq v3, v6, :cond_7

    const/16 v6, 0xd

    if-eq v3, v6, :cond_6

    const/16 v6, 0x19

    if-eq v3, v6, :cond_5

    const/16 v6, 0x16

    if-eq v3, v6, :cond_4

    const/16 v6, 0x17

    if-eq v3, v6, :cond_3

    packed-switch v3, :pswitch_data_0

    .line 203
    iget-object v3, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    sget-object v5, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->SSH_AGENT_FAILURE:[B

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 191
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->removeAllIdentities(Lcom/trilead/ssh2/packets/TypesReader;)V

    goto :goto_1

    .line 188
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->removeIdentity(Lcom/trilead/ssh2/packets/TypesReader;)V

    goto :goto_1

    .line 182
    :pswitch_2
    invoke-direct {p0, v5, v1}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->addIdentity(Lcom/trilead/ssh2/packets/TypesReader;Z)V

    goto :goto_1

    .line 200
    :cond_3
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->processUnlockRequest(Lcom/trilead/ssh2/packets/TypesReader;)V

    goto :goto_1

    .line 197
    :cond_4
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->processLockRequest(Lcom/trilead/ssh2/packets/TypesReader;)V

    goto :goto_1

    .line 185
    :cond_5
    invoke-direct {p0, v5, v0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->addIdentity(Lcom/trilead/ssh2/packets/TypesReader;Z)V

    goto :goto_1

    .line 194
    :cond_6
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->processSignRequest(Lcom/trilead/ssh2/packets/TypesReader;)V

    goto :goto_1

    .line 179
    :cond_7
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->sendIdentities()V

    :goto_1
    move v3, v1

    goto :goto_0

    .line 159
    :catch_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->stopWorking()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v1

    .line 215
    sget-object v2, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException in agent forwarder: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    invoke-virtual {v2, v4, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 219
    :try_start_4
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 227
    :catch_2
    :try_start_5
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 235
    :catch_3
    :try_start_6
    iget-object v2, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException in agent forwarder ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :goto_2
    return-void

    .line 136
    :catch_5
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->stopWorking()V

    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopWorking()V
    .locals 1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
