.class public Lcom/trilead/ssh2/auth/AuthenticationManager;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Lcom/trilead/ssh2/transport/MessageHandler;


# instance fields
.field authenticated:Z

.field banner:Ljava/lang/String;

.field connectionClosed:Z

.field initDone:Z

.field isPartialSuccess:Z

.field packets:Ljava/util/Vector;

.field remainingMethods:[Ljava/lang/String;

.field tm:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 57
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 58
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    .line 60
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 61
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 65
    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    return-void
.end method

.method private generatePublicKeyUserAuthenticationRequest(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4

    .line 502
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 504
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/transport/TransportManager;->getSessionIdentifier()[B

    move-result-object v1

    .line 506
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    const/16 v1, 0x32

    .line 507
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 508
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 509
    const-string p1, "ssh-connection"

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 510
    const-string p1, "publickey"

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 511
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 512
    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 513
    array-length p1, p3

    invoke-virtual {v0, p3, v3, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 516
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method private initialize(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, p0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 137
    new-instance v0, Lcom/trilead/ssh2/packets/PacketServiceRequest;

    const-string v3, "ssh-userauth"

    invoke-direct {v0, v3}, Lcom/trilead/ssh2/packets/PacketServiceRequest;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketServiceRequest;->getPayload()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 140
    new-instance v0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;

    const-string v3, "ssh-connection"

    invoke-direct {v0, v3, p1}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->getPayload()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 143
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 144
    new-instance v0, Lcom/trilead/ssh2/packets/PacketServiceAccept;

    array-length v3, p1

    invoke-direct {v0, p1, v1, v3}, Lcom/trilead/ssh2/packets/PacketServiceAccept;-><init>([BII)V

    .line 145
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->initDone:Z

    .line 149
    aget-byte v3, p1, v1

    const/16 v4, 0x34

    if-ne v3, v4, :cond_0

    .line 151
    iput-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 152
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, p0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return v0

    :cond_0
    const/16 v0, 0x33

    if-ne v3, v0, :cond_1

    .line 158
    new-instance v0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 160
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 161
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v1

    .line 165
    :cond_1
    new-instance v0, Ljava/io/IOException;

    aget-byte p1, p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected SSH message (type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    iget-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    return p1
.end method

.method private isAuthenticationSuccessful([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 481
    aget-byte v1, p1, v0

    const/16 v2, 0x34

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    .line 483
    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z

    .line 484
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/16 v2, 0xff

    invoke-virtual {v1, p0, v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    return p1

    :cond_0
    const/16 v2, 0x33

    if-ne v1, v2, :cond_1

    .line 490
    new-instance v1, Lcom/trilead/ssh2/packets/PacketUserauthFailure;

    array-length v2, p1

    invoke-direct {v1, p1, v0, v2}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;-><init>([BII)V

    .line 492
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->getAuthThatCanContinue()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    .line 493
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->isPartialSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0

    .line 498
    :cond_1
    new-instance v1, Ljava/io/IOException;

    aget-byte p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected SSH message (type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 401
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 403
    const-string v1, "keyboard-interactive"

    invoke-virtual {p0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    .line 408
    new-array p2, v0, [Ljava/lang/String;

    .line 410
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;

    const-string v2, "ssh-connection"

    invoke-direct {v1, v2, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 417
    :goto_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 419
    aget-byte p2, p1, v0

    const/16 v1, 0x3c

    if-ne p2, v1, :cond_2

    .line 421
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;

    array-length v1, p1

    invoke-direct {p2, p1, v0, v1}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    :try_start_1
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getInstruction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getNumPrompts()I

    move-result v5

    .line 428
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getPrompt()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->getEcho()[Z

    move-result-object v7

    move-object v2, p3

    .line 427
    invoke-interface/range {v2 .. v7}, Lcom/trilead/ssh2/InteractiveCallback;->replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_1

    .line 438
    :try_start_2
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;

    invoke-direct {p2, p1}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;-><init>([Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthInfoResponse;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    goto :goto_0

    .line 436
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Your callback may not return NULL!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 432
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Exception in callback."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 444
    :cond_2
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->isAuthenticationSuccessful([B)Z

    move-result p1

    return p1

    .line 404
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method keyboard-interactive not supported by the server at this stage."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 449
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2, p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 450
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Keyboard-interactive authentication failed."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public authenticateNone(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 365
    iget-boolean p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticated:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 369
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 370
    new-instance v0, Ljava/io/IOException;

    const-string v1, "None authentication failed."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 380
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;

    const-string v1, "ssh-connection"

    invoke-direct {v0, v1, p1, p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 386
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 388
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->isAuthenticationSuccessful([B)Z

    move-result p1

    return p1

    .line 381
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method password not supported by the server at this stage."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 392
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 393
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Password authentication failed."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public authenticatePublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/SignatureProxy;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;Lcom/trilead/ssh2/auth/SignatureProxy;)Z

    move-result p1

    return p1
.end method

.method public authenticatePublicKey(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;Lcom/trilead/ssh2/auth/SignatureProxy;)Z

    move-result p1

    return p1
.end method

.method public authenticatePublicKey(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;Lcom/trilead/ssh2/auth/SignatureProxy;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const-string v0, "rsa-sha2-256"

    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    .line 198
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object p2, v1

    :goto_0
    if-eqz p4, :cond_1

    .line 202
    invoke-virtual {p4}, Lcom/trilead/ssh2/auth/SignatureProxy;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    .line 207
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 209
    const-string v2, "publickey"

    invoke-virtual {p0, v2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->methodPossible(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 212
    instance-of v2, p2, Ljava/security/interfaces/DSAPublicKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "SHA-1"

    if-eqz v2, :cond_3

    .line 214
    :try_start_1
    invoke-static {}, Lcom/trilead/ssh2/signature/DSASHA1Verify;->get()Lcom/trilead/ssh2/signature/DSASHA1Verify;

    move-result-object v0

    .line 215
    invoke-interface {v0, p2}, Lcom/trilead/ssh2/signature/SSHSignature;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v8

    .line 217
    const-string p2, "ssh-dss"

    invoke-direct {p0, p1, p2, v8}, Lcom/trilead/ssh2/auth/AuthenticationManager;->generatePublicKeyUserAuthenticationRequest(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p2

    if-eqz p4, :cond_2

    .line 222
    invoke-virtual {p4, p2, v3}, Lcom/trilead/ssh2/auth/SignatureProxy;->sign([BLjava/lang/String;)[B

    move-result-object p2

    goto :goto_1

    .line 226
    :cond_2
    invoke-interface {v0, p2, v1, p3}, Lcom/trilead/ssh2/signature/SSHSignature;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p2

    :goto_1
    move-object v9, p2

    .line 229
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v5, "ssh-connection"

    const-string v7, "ssh-dss"

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 231
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    goto/16 :goto_7

    .line 233
    :cond_3
    instance-of v2, p2, Ljava/security/interfaces/RSAPublicKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "SHA-512"

    if-eqz v2, :cond_9

    .line 235
    :try_start_2
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->get()Lcom/trilead/ssh2/signature/RSASHA1Verify;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v9

    .line 241
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/transport/TransportManager;->getExtensionInfo()Lcom/trilead/ssh2/ExtensionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/trilead/ssh2/ExtensionInfo;->getSignatureAlgorithmsAccepted()Ljava/util/Set;

    move-result-object p2

    .line 244
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA512Verify;->get()Lcom/trilead/ssh2/signature/RSASHA512Verify;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trilead/ssh2/signature/RSASHA512Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 246
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA512Verify;->get()Lcom/trilead/ssh2/signature/RSASHA512Verify;

    move-result-object p2

    .line 247
    invoke-interface {p2}, Lcom/trilead/ssh2/signature/SSHSignature;->getKeyFormat()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-direct {p0, p1, v0, v9}, Lcom/trilead/ssh2/auth/AuthenticationManager;->generatePublicKeyUserAuthenticationRequest(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    if-eqz p4, :cond_4

    .line 251
    invoke-virtual {p4, v2, v4}, Lcom/trilead/ssh2/auth/SignatureProxy;->sign([BLjava/lang/String;)[B

    move-result-object p2

    goto :goto_2

    .line 255
    :cond_4
    invoke-interface {p2, v2, v1, p3}, Lcom/trilead/ssh2/signature/SSHSignature;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p2

    :goto_2
    move-object v10, p2

    move-object v8, v0

    goto :goto_3

    .line 258
    :cond_5
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 261
    invoke-direct {p0, p1, v0, v9}, Lcom/trilead/ssh2/auth/AuthenticationManager;->generatePublicKeyUserAuthenticationRequest(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p2

    if-eqz p4, :cond_6

    .line 265
    const-string p3, "SHA-256"

    invoke-virtual {p4, p2, p3}, Lcom/trilead/ssh2/auth/SignatureProxy;->sign([BLjava/lang/String;)[B

    move-result-object p2

    goto :goto_2

    .line 269
    :cond_6
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA256Verify;->get()Lcom/trilead/ssh2/signature/RSASHA256Verify;

    move-result-object p4

    invoke-virtual {p4, p2, v1, p3}, Lcom/trilead/ssh2/signature/RSASHA256Verify;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p2

    goto :goto_2

    .line 274
    :cond_7
    const-string v0, "ssh-rsa"

    .line 275
    invoke-direct {p0, p1, v0, v9}, Lcom/trilead/ssh2/auth/AuthenticationManager;->generatePublicKeyUserAuthenticationRequest(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p2

    if-eqz p4, :cond_8

    .line 278
    invoke-virtual {p4, p2, v3}, Lcom/trilead/ssh2/auth/SignatureProxy;->sign([BLjava/lang/String;)[B

    move-result-object p2

    goto :goto_2

    .line 283
    :cond_8
    invoke-static {}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->get()Lcom/trilead/ssh2/signature/RSASHA1Verify;

    move-result-object p4

    invoke-virtual {p4, p2, v1, p3}, Lcom/trilead/ssh2/signature/RSASHA1Verify;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p2

    goto :goto_2

    .line 287
    :goto_3
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v6, "ssh-connection"

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 290
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    goto/16 :goto_7

    .line 292
    :cond_9
    instance-of v0, p2, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_b

    .line 294
    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    .line 296
    invoke-static {p2}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getVerifierForKey(Ljava/security/interfaces/ECKey;)Lcom/trilead/ssh2/signature/ECDSASHA2Verify;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getKeyFormat()Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v6

    .line 302
    invoke-direct {p0, p1, v5, v6}, Lcom/trilead/ssh2/auth/AuthenticationManager;->generatePublicKeyUserAuthenticationRequest(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    if-eqz p4, :cond_a

    .line 307
    invoke-static {p2}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->getDigestAlgorithmForParams(Ljava/security/interfaces/ECKey;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v2, p2}, Lcom/trilead/ssh2/auth/SignatureProxy;->sign([BLjava/lang/String;)[B

    move-result-object p2

    goto :goto_4

    .line 311
    :cond_a
    invoke-virtual {v0, v2, v1, p3}, Lcom/trilead/ssh2/signature/ECDSASHA2Verify;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p2

    :goto_4
    move-object v7, p2

    .line 314
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v3, "ssh-connection"

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 317
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    goto :goto_7

    .line 319
    :cond_b
    instance-of v0, p2, Lcom/trilead/ssh2/crypto/keys/Ed25519PublicKey;

    if-eqz v0, :cond_d

    .line 323
    invoke-static {}, Lcom/trilead/ssh2/signature/Ed25519Verify;->get()Lcom/trilead/ssh2/signature/Ed25519Verify;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/trilead/ssh2/signature/Ed25519Verify;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v9

    .line 325
    const-string p2, "ssh-ed25519"

    invoke-direct {p0, p1, p2, v9}, Lcom/trilead/ssh2/auth/AuthenticationManager;->generatePublicKeyUserAuthenticationRequest(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p2

    if-eqz p4, :cond_c

    .line 330
    invoke-virtual {p4, p2, v4}, Lcom/trilead/ssh2/auth/SignatureProxy;->sign([BLjava/lang/String;)[B

    move-result-object p2

    :goto_5
    move-object v10, p2

    goto :goto_6

    .line 334
    :cond_c
    check-cast v1, Lcom/trilead/ssh2/crypto/keys/Ed25519PrivateKey;

    .line 335
    invoke-static {}, Lcom/trilead/ssh2/signature/Ed25519Verify;->get()Lcom/trilead/ssh2/signature/Ed25519Verify;

    move-result-object p4

    invoke-virtual {p4, p2, v1, p3}, Lcom/trilead/ssh2/signature/Ed25519Verify;->generateSignature([BLjava/security/PrivateKey;Ljava/security/SecureRandom;)[B

    move-result-object p2

    goto :goto_5

    .line 338
    :goto_6
    new-instance p2, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;

    const-string v6, "ssh-connection"

    const-string v8, "ssh-ed25519"

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 341
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->getPayload()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 348
    :goto_7
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getNextMessage()[B

    move-result-object p1

    .line 350
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->isAuthenticationSuccessful([B)Z

    move-result p1

    return p1

    .line 345
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unknown public key type."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication method publickey not supported by the server at this stage."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 354
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 355
    iget-object p2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 356
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Publickey authentication failed."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-static {p2, p3}, Lcom/trilead/ssh2/crypto/PEMDecoder;->decode([CLjava/lang/String;)Ljava/security/KeyPair;

    move-result-object p2

    .line 175
    invoke-virtual {p0, p1, p2, p4}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;)Z

    move-result p1

    return p1
.end method

.method deQueue()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v0

    .line 85
    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 87
    iget-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The connection is closed."

    iget-object v3, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 100
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 101
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 102
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method getNextMessage()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->deQueue()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    aget-byte v2, v0, v1

    const/16 v3, 0x35

    if-eq v2, v3, :cond_0

    return-object v0

    .line 114
    :cond_0
    new-instance v2, Lcom/trilead/ssh2/packets/PacketUserauthBanner;

    array-length v3, v0

    invoke-direct {v2, v0, v1, v3}, Lcom/trilead/ssh2/packets/PacketUserauthBanner;-><init>([BII)V

    .line 116
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->getBanner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->banner:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPartialSuccess()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->isPartialSuccess:Z

    return v0
.end method

.method public getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->initialize(Ljava/lang/String;)Z

    .line 123
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    return-object p1
.end method

.method public handleMessage([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 460
    :try_start_0
    iput-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    goto :goto_0

    .line 464
    :cond_0
    new-array v2, p2, [B

    const/4 v3, 0x0

    .line 465
    invoke-static {p1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 469
    :goto_0
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 471
    iget-object p1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->packets:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_1

    .line 476
    monitor-exit v0

    return-void

    .line 473
    :cond_1
    iput-boolean v1, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->connectionClosed:Z

    .line 474
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error, peer is flooding us with authentication packets."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 476
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method methodPossible(Ljava/lang/String;)Z
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/trilead/ssh2/auth/AuthenticationManager;->remainingMethods:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 75
    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
