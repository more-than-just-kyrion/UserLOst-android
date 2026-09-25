.class public Lcom/trilead/ssh2/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final identification:Ljava/lang/String; = "TrileadSSH2Java_213"


# instance fields
.field private am:Lcom/trilead/ssh2/auth/AuthenticationManager;

.field private authenticated:Z

.field private cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field private compression:Z

.field private connectionMonitors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/ConnectionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

.field private dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

.field private generator:Ljava/security/SecureRandom;

.field private final hostname:Ljava/lang/String;

.field private final port:I

.field private proxyData:Lcom/trilead/ssh2/ProxyData;

.field private tm:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method static bridge synthetic -$$Nest$fgettm(Lcom/trilead/ssh2/Connection;)Lcom/trilead/ssh2/transport/TransportManager;
    .locals 0

    iget-object p0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x16

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 94
    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->compression:Z

    .line 97
    new-instance v0, Lcom/trilead/ssh2/crypto/CryptoWishList;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/CryptoWishList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 99
    new-instance v0, Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v0}, Lcom/trilead/ssh2/DHGexParameters;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;

    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 136
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    .line 137
    iput p2, p0, Lcom/trilead/ssh2/Connection;->port:I

    return-void
.end method

.method private checkRequirements(Ljava/lang/String;)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_4

    .line 477
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_1

    .line 489
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    :cond_1
    if-eqz p1, :cond_2

    return-void

    .line 494
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "user argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 479
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is already authenticated!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 474
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is not established!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private close(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeAllChannels()V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    xor-int/lit8 p2, p2, 0x1

    .line 557
    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 558
    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 560
    :cond_1
    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 561
    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    const/4 p1, 0x0

    .line 562
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    return-void
.end method

.method public static declared-synchronized getAvailableCiphers()[Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/trilead/ssh2/Connection;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getAvailableMACs()[Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/trilead/ssh2/Connection;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MACs;->getMacList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getAvailableServerHostKeyAlgorithms()[Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/trilead/ssh2/Connection;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final getOrCreateSecureRND()Ljava/security/SecureRandom;
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 1139
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_6

    .line 1215
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_3

    .line 1218
    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1222
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_4

    .line 1226
    aget-object v5, p1, v3

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_3

    if-nez v5, :cond_1

    .line 1230
    aget-object v7, v1, v6

    if-nez v7, :cond_2

    goto :goto_2

    :cond_1
    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v4, 0x1

    .line 1240
    aget-object v6, p1, v3

    aput-object v6, v1, v4

    move v4, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-ne v4, v0, :cond_5

    return-object v1

    .line 1246
    :cond_5
    new-array p1, v4, [Ljava/lang/String;

    .line 1247
    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_3
    return-object p1
.end method


# virtual methods
.method public declared-synchronized addConnectionMonitor(Lcom/trilead/ssh2/ConnectionMonitor;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 520
    iget-object p1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 516
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cmon argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/trilead/ssh2/Connection;->authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 200
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->checkRequirements(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 198
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not ne NULL!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized authenticateWithNone(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->checkRequirements(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticateNone(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 238
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->checkRequirements(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 236
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "password argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/SignatureProxy;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 458
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->checkRequirements(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Lcom/trilead/ssh2/auth/SignatureProxy;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/SignatureProxy;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return p1

    .line 462
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Signature manager does not contain a public key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_1

    const/16 v0, 0x100

    .line 412
    :try_start_0
    new-array v0, v0, [C

    .line 414
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 416
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 420
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileReader;->read([C)I

    move-result p2

    if-gez p2, :cond_0

    .line 426
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 428
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/Connection;->authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 v3, 0x0

    .line 423
    :try_start_1
    invoke-virtual {v1, v0, v3, p2}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 410
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pemFile argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;Ljava/security/KeyPair;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 373
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->checkRequirements(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 371
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key pair argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 333
    :try_start_0
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->checkRequirements(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 331
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pemPrivateKey argument is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized cancelRemotePortForwarding(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1465
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 1468
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestCancelGlobalForward(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    monitor-exit p0

    return-void

    .line 1469
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The connection is not authenticated."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1466
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You need to establish a connection first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 546
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Closed due to user request."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 547
    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized connect()Lcom/trilead/ssh2/ConnectionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 576
    :try_start_0
    invoke-virtual {p0, v0, v1, v1}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 590
    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Connection to "

    monitor-enter p0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v1, :cond_8

    if-ltz p2, :cond_7

    if-ltz p3, :cond_6

    .line 693
    new-instance v0, Lcom/trilead/ssh2/Connection$1TimeoutState;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/Connection$1TimeoutState;-><init>(Lcom/trilead/ssh2/Connection;)V

    .line 695
    new-instance v1, Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    iget v3, p0, Lcom/trilead/ssh2/Connection;->port:I

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 697
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 700
    iget-boolean v1, p0, Lcom/trilead/ssh2/Connection;->compression:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "none"

    aput-object v5, v4, v2

    iput-object v4, v1, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_comp_algos:[Ljava/lang/String;

    .line 702
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "none"

    aput-object v5, v4, v2

    iput-object v4, v1, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_comp_algos:[Ljava/lang/String;

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 721
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-lez p3, :cond_1

    .line 729
    :try_start_2
    new-instance v1, Lcom/trilead/ssh2/Connection$1;

    invoke-direct {v1, p0, v0}, Lcom/trilead/ssh2/Connection$1;-><init>(Lcom/trilead/ssh2/Connection;Lcom/trilead/ssh2/Connection$1TimeoutState;)V

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p3

    add-long/2addr v4, v6

    .line 745
    invoke-static {v4, v5, v1}, Lcom/trilead/ssh2/util/TimeoutService;->addTimeoutHandler(JLjava/lang/Runnable;)Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x0

    .line 750
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v5, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iget-object v7, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v9

    iget-object v10, p0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;

    move-object v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v10}, Lcom/trilead/ssh2/transport/TransportManager;->initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 760
    :try_start_4
    iget-object p1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, v3}, Lcom/trilead/ssh2/transport/TransportManager;->getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object p1

    if-eqz v1, :cond_3

    .line 766
    invoke-static {v1}, Lcom/trilead/ssh2/util/TimeoutService;->cancelTimeoutHandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V

    .line 770
    monitor-enter v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 772
    :try_start_5
    iget-boolean p2, v0, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-nez p2, :cond_2

    .line 779
    iput-boolean v3, v0, Lcom/trilead/ssh2/Connection$1TimeoutState;->isCancelled:Z

    .line 780
    monitor-exit v0

    goto :goto_1

    .line 773
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This exception will be replaced by the one below =)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 780
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 783
    :cond_3
    :goto_1
    monitor-exit p0

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 754
    :try_start_7
    new-instance p2, Ljava/net/SocketTimeoutException;

    const-string v1, "The connect() operation on the socket timed out."

    invoke-direct {p2, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/net/SocketTimeoutException;

    throw p1
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 792
    :goto_2
    :try_start_8
    new-instance p2, Ljava/lang/Throwable;

    const-string v1, "There was a problem during connect."

    invoke-direct {p2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/trilead/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V

    .line 794
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 800
    :try_start_9
    iget-boolean p2, v0, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-nez p2, :cond_5

    .line 802
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 805
    :try_start_a
    instance-of p2, p1, Lcom/trilead/ssh2/HTTPProxyException;

    if-eqz p2, :cond_4

    .line 806
    throw p1

    .line 808
    :cond_4
    new-instance p2, Ljava/io/IOException;

    iget-object p3, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    iget v0, p0, Lcom/trilead/ssh2/Connection;->port:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was a problem while connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 801
    :cond_5
    :try_start_b
    new-instance p1, Ljava/net/SocketTimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The kexTimeout ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " ms) expired."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 802
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw p1

    .line 787
    :goto_3
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_2
    move-exception p1

    .line 721
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw p1

    .line 691
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "kexTimeout must be non-negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 688
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connectTimeout must be non-negative!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 685
    :cond_8
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is already in connected state!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw p1
.end method

.method public declared-synchronized createDynamicPortForwarder(I)Lcom/trilead/ssh2/DynamicPortForwarder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 918
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 921
    new-instance v0, Lcom/trilead/ssh2/DynamicPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/DynamicPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 919
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot forward ports, connection is not authenticated."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 916
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createDynamicPortForwarder(Ljava/net/InetSocketAddress;)Lcom/trilead/ssh2/DynamicPortForwarder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 945
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 948
    new-instance v0, Lcom/trilead/ssh2/DynamicPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/DynamicPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 946
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot forward ports, connection is not authenticated."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 943
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createLocalPortForwarder(ILjava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 837
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 840
    new-instance v0, Lcom/trilead/ssh2/LocalPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/trilead/ssh2/LocalPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 838
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward ports, connection is not authenticated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 835
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createLocalPortForwarder(Ljava/net/InetSocketAddress;Ljava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 869
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 872
    new-instance v0, Lcom/trilead/ssh2/LocalPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/trilead/ssh2/LocalPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 870
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward ports, connection is not authenticated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 867
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createLocalStreamForwarder(Ljava/lang/String;I)Lcom/trilead/ssh2/LocalStreamForwarder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 893
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 896
    new-instance v0, Lcom/trilead/ssh2/LocalStreamForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2}, Lcom/trilead/ssh2/LocalStreamForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 894
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward, connection is not authenticated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 891
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot forward, you need to establish a connection first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createSCPClient()Lcom/trilead/ssh2/SCPClient;
    .locals 2

    monitor-enter p0

    .line 963
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 966
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 969
    new-instance v0, Lcom/trilead/ssh2/SCPClient;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/SCPClient;-><init>(Lcom/trilead/ssh2/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 967
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create SCP client, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create SCP client, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized enableDebugging(ZLcom/trilead/ssh2/DebugLogger;)V
    .locals 0

    monitor-enter p0

    .line 1511
    :try_start_0
    sput-boolean p1, Lcom/trilead/ssh2/log/Logger;->enabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1515
    sput-object p1, Lcom/trilead/ssh2/log/Logger;->logger:Lcom/trilead/ssh2/DebugLogger;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1521
    new-instance p2, Lcom/trilead/ssh2/Connection$2;

    invoke-direct {p2, p0}, Lcom/trilead/ssh2/Connection$2;-><init>(Lcom/trilead/ssh2/Connection;)V

    .line 1532
    :cond_1
    sput-object p2, Lcom/trilead/ssh2/log/Logger;->logger:Lcom/trilead/ssh2/DebugLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    :goto_0
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

.method public declared-synchronized forceKeyExchange()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_0

    .line 990
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->forceKeyExchange(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    monitor-exit p0

    return-void

    .line 988
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getConnectionInfo()Lcom/trilead/ssh2/ConnectionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1024
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1027
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1025
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get details of connection, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getHostname()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    monitor-enter p0

    .line 1010
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/Connection;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 1060
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_3

    .line 1063
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_1

    .line 1070
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1064
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is already authenticated!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1061
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is not established!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1058
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "user argument may not be NULL!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_2

    .line 1125
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/Connection;->getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 1127
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1129
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1130
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1123
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method argument may not be NULL!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized isAuthenticationComplete()Z
    .locals 1

    monitor-enter p0

    .line 1084
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isAuthenticationPartialSuccess()Z
    .locals 1

    monitor-enter p0

    .line 1101
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1102
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 1104
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getPartialSuccess()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized openSession()Lcom/trilead/ssh2/Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 1157
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 1160
    new-instance v0, Lcom/trilead/ssh2/Session;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/Session;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1158
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1556
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 1559
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/ChannelManager;->requestGlobalTrileadPing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1563
    monitor-exit p0

    return-void

    .line 1560
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1557
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized requestRemotePortForwarding(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1438
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_2

    .line 1441
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-lez p2, :cond_0

    if-lez p4, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/channel/ChannelManager;->requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    monitor-exit p0

    return-void

    .line 1445
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1442
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The connection is not authenticated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1439
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You need to establish a connection first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized sendIgnorePacket()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1174
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x10

    .line 1176
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    new-array v1, v1, [B

    .line 1177
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1179
    invoke-virtual {p0, v1}, Lcom/trilead/ssh2/Connection;->sendIgnorePacket([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized sendIgnorePacket([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1194
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_0

    .line 1198
    new-instance v0, Lcom/trilead/ssh2/packets/PacketIgnore;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/PacketIgnore;-><init>()V

    .line 1199
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/PacketIgnore;->setData([B)V

    .line 1201
    iget-object p1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketIgnore;->getPayload()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    monitor-exit p0

    return-void

    .line 1195
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot send SSH_MSG_IGNORE packet, you need to establish a connection first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1192
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "data argument must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setClient2ServerCiphers([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1259
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1261
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1262
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    monitor-exit p0

    return-void

    .line 1260
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setClient2ServerMACs([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1273
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1275
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1276
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/MACs;->checkMacList([Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    monitor-exit p0

    return-void

    .line 1274
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setCompression(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Connection to "

    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v1, :cond_0

    .line 535
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->compression:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 533
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already in connected state!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setDHGexParameters(Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1294
    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1292
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setKeyExchangeAlgorithms([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1360
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1363
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1364
    invoke-static {p1}, Lcom/trilead/ssh2/transport/KexManager;->checkKexAlgorithmList([Ljava/lang/String;)V

    .line 1365
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    monitor-exit p0

    return-void

    .line 1361
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setProxyData(Lcom/trilead/ssh2/ProxyData;)V
    .locals 0

    monitor-enter p0

    .line 1388
    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
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

.method public declared-synchronized setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1489
    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1487
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setServer2ClientCiphers([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1304
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1306
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1307
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    monitor-exit p0

    return-void

    .line 1305
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setServer2ClientMACs([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1318
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1321
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1322
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/MACs;->checkMacList([Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    monitor-exit p0

    return-void

    .line 1319
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setServerHostKeyAlgorithms([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1341
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 1344
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1345
    invoke-static {p1}, Lcom/trilead/ssh2/transport/KexManager;->checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    monitor-exit p0

    return-void

    .line 1342
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
