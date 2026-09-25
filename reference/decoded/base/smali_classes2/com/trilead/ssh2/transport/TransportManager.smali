.class public Lcom/trilead/ssh2/transport/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;,
        Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    }
.end annotation


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field private final asynchronousQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation
.end field

.field private asynchronousThread:Ljava/lang/Thread;

.field connectionClosed:Z

.field connectionMonitors:Ljava/util/Vector;

.field private final connectionSemaphore:Ljava/lang/Object;

.field private volatile extensionInfo:Lcom/trilead/ssh2/ExtensionInfo;

.field firstKexFinished:Z

.field flagKexOngoing:Z

.field hostname:Ljava/lang/String;

.field km:Lcom/trilead/ssh2/transport/KexManager;

.field messageHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;",
            ">;"
        }
    .end annotation
.end field

.field monitorsWereInformed:Z

.field port:I

.field reasonClosedCause:Ljava/lang/Throwable;

.field receiveThread:Ljava/lang/Thread;

.field sock:Ljava/net/Socket;

.field tc:Lcom/trilead/ssh2/transport/TransportConnection;


# direct methods
.method static bridge synthetic -$$Nest$fgetasynchronousQueue(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputasynchronousThread(Lcom/trilead/ssh2/transport/TransportManager;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetlog()Lcom/trilead/ssh2/log/Logger;
    .locals 1

    sget-object v0, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/trilead/ssh2/transport/TransportManager;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 125
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 127
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 128
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    .line 129
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->firstKexFinished:Z

    .line 131
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 136
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 141
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 143
    invoke-static {}, Lcom/trilead/ssh2/ExtensionInfo;->noExtInfoSeen()Lcom/trilead/ssh2/ExtensionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->extensionInfo:Lcom/trilead/ssh2/ExtensionInfo;

    .line 146
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    .line 147
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    return-void
.end method

.method private static connectDirect(Ljava/lang/String;II)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 280
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 281
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 p0, 0x0

    .line 282
    invoke-virtual {v0, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    return-object v0
.end method

.method private establishConnection(Lcom/trilead/ssh2/ProxyData;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    iget v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    invoke-static {p1, v0, p2}, Lcom/trilead/ssh2/transport/TransportManager;->connectDirect(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    iget v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    invoke-interface {p1, v0, v1, p2}, Lcom/trilead/ssh2/ProxyData;->openConnection(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    :goto_0
    return-void
.end method


# virtual methods
.method public changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 425
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {p1}, Lcom/trilead/ssh2/transport/KexManager;->isStrictKex()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 426
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {p1}, Lcom/trilead/ssh2/transport/TransportConnection;->resetReceiveSequenceNumber()V

    :cond_0
    return-void
.end method

.method public changeRecvCompression(Lcom/trilead/ssh2/compression/ICompressor;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->changeRecvCompression(Lcom/trilead/ssh2/compression/ICompressor;)V

    return-void
.end method

.method public changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 432
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {p1}, Lcom/trilead/ssh2/transport/KexManager;->isStrictKex()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {p1}, Lcom/trilead/ssh2/transport/TransportConnection;->resetSendSequenceNumber()V

    :cond_0
    return-void
.end method

.method public changeSendCompression(Lcom/trilead/ssh2/compression/ICompressor;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->changeSendCompression(Lcom/trilead/ssh2/compression/ICompressor;)V

    return-void
.end method

.method public close(Ljava/lang/Throwable;Z)V
    .locals 5

    if-nez p2, :cond_0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_1
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    .line 209
    :try_start_2
    new-instance p2, Lcom/trilead/ssh2/packets/PacketDisconnect;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const/16 v4, 0xb

    invoke-direct {p2, v4, v1, v3}, Lcom/trilead/ssh2/packets/PacketDisconnect;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketDisconnect;->getPayload()[B

    move-result-object p2

    .line 211
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    :catch_1
    :cond_1
    :try_start_3
    iget-object p2, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    if-eqz p2, :cond_2

    .line 221
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    :catch_2
    :cond_2
    :try_start_4
    iput-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    .line 229
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 231
    :cond_3
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 232
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    monitor-enter p0

    .line 245
    :try_start_5
    iget-boolean p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    if-nez p1, :cond_4

    .line 247
    iput-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 248
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 250
    :goto_0
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 254
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 258
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/ConnectionMonitor;

    .line 259
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/trilead/ssh2/ConnectionMonitor;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 250
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 232
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method public forceKeyExchange(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V

    return-void
.end method

.method public getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/KexManager;->getOrWaitForConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getExtensionInfo()Lcom/trilead/ssh2/ExtensionInfo;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->extensionInfo:Lcom/trilead/ssh2/ExtensionInfo;

    return-object v0
.end method

.method public getPacketOverheadEstimate()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/TransportConnection;->getPacketOverheadEstimate()I

    move-result v0

    return v0
.end method

.method public getReasonClosedCause()Ljava/lang/Throwable;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionIdentifier()[B
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    return-object v0
.end method

.method public initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-direct {p0, p6, p4}, Lcom/trilead/ssh2/transport/TransportManager;->establishConnection(Lcom/trilead/ssh2/ProxyData;I)V

    .line 298
    new-instance v2, Lcom/trilead/ssh2/transport/ClientServerHello;

    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    iget-object p6, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p6

    invoke-direct {v2, p4, p6}, Lcom/trilead/ssh2/transport/ClientServerHello;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 300
    new-instance p4, Lcom/trilead/ssh2/transport/TransportConnection;

    iget-object p6, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p6

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p4, p6, v0, p5}, Lcom/trilead/ssh2/transport/TransportConnection;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    iput-object p4, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 302
    new-instance p4, Lcom/trilead/ssh2/transport/KexManager;

    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    iget v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/trilead/ssh2/transport/KexManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;Lcom/trilead/ssh2/transport/ClientServerHello;Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/lang/String;ILcom/trilead/ssh2/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V

    iput-object p4, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    .line 303
    invoke-virtual {p4, p1, p3}, Lcom/trilead/ssh2/transport/KexManager;->initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V

    .line 305
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/trilead/ssh2/transport/TransportManager$1;

    invoke-direct {p2, p0}, Lcom/trilead/ssh2/transport/TransportManager$1;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    const/4 p2, 0x1

    .line 351
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 352
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public kexFinished()V
    .locals 2

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->firstKexFinished:Z

    .line 410
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 412
    :try_start_0
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 413
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 414
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public receiveLoop()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x88bc

    .line 533
    new-array v1, v0, [B

    .line 537
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/trilead/ssh2/transport/TransportConnection;->receiveMessage([BII)I

    move-result v2

    .line 539
    aget-byte v4, v1, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    const/16 v6, 0x7e

    const v7, 0xfffd

    const/16 v8, 0x20

    .line 541
    const-string v9, "UTF-8"

    const/4 v10, 0x1

    if-ne v4, v10, :cond_4

    .line 543
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 544
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 545
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 546
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 547
    invoke-virtual {v0, v9}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 556
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    const/16 v0, 0xfe

    const/16 v4, 0x2e

    .line 557
    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/16 v0, 0xfd

    .line 558
    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/16 v0, 0xfc

    .line 559
    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 569
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 571
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_2

    if-gt v0, v6, :cond_2

    goto :goto_2

    .line 575
    :cond_2
    invoke-virtual {v2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 578
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 579
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Peer sent DISCONNECT message (reason code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v5, 0x14

    if-eq v4, v5, :cond_12

    const/16 v5, 0x15

    if-eq v4, v5, :cond_12

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_5

    const/16 v5, 0x31

    if-gt v4, v5, :cond_5

    goto/16 :goto_8

    .line 596
    :cond_5
    iget-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->firstKexFinished:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v5}, Lcom/trilead/ssh2/transport/KexManager;->isStrictKex()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 598
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected packet received when kex-strict enabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 606
    sget-object v4, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    new-instance v4, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v4, v1, v3, v2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 609
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 610
    invoke-virtual {v4}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 611
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 612
    invoke-virtual {v4, v9}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-lt v4, v8, :cond_9

    if-gt v4, v6, :cond_9

    goto :goto_5

    .line 620
    :cond_9
    invoke-virtual {v2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 623
    :cond_a
    sget-object v3, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG Message from remote: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x32

    invoke-virtual {v3, v4, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x3

    if-eq v4, v5, :cond_11

    const/16 v5, 0x34

    if-ne v4, v5, :cond_c

    .line 634
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v5}, Lcom/trilead/ssh2/transport/TransportConnection;->startCompression()V

    :cond_c
    const/4 v5, 0x7

    if-ne v4, v5, :cond_d

    .line 639
    new-instance v4, Lcom/trilead/ssh2/packets/PacketExtInfo;

    invoke-direct {v4, v1, v3, v2}, Lcom/trilead/ssh2/packets/PacketExtInfo;-><init>([BII)V

    invoke-static {v4}, Lcom/trilead/ssh2/ExtensionInfo;->fromPacketExtInfo(Lcom/trilead/ssh2/packets/PacketExtInfo;)Lcom/trilead/ssh2/ExtensionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->extensionInfo:Lcom/trilead/ssh2/ExtensionInfo;

    goto/16 :goto_0

    .line 646
    :cond_d
    :goto_6
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_f

    .line 648
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 649
    iget v6, v5, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    if-gt v6, v4, :cond_e

    iget v6, v5, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    if-gt v4, v6, :cond_e

    .line 651
    iget-object v3, v5, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    goto :goto_7

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_10

    .line 659
    invoke-interface {v3, v1, v2}, Lcom/trilead/ssh2/transport/MessageHandler;->handleMessage([BI)V

    goto/16 :goto_0

    .line 657
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected SSH message (type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Peer sent UNIMPLEMENTED message, that should not happen."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_12
    :goto_8
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v3, v1, v2}, Lcom/trilead/ssh2/transport/KexManager;->handleMessage([BI)V

    goto/16 :goto_0
.end method

.method public registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V
    .locals 1

    .line 357
    new-instance v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 358
    iput-object p1, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    .line 359
    iput p2, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    .line 360
    iput p3, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    .line 362
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter p1

    .line 364
    :try_start_0
    iget-object p2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 365
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    .line 372
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 375
    iget-object v3, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    if-ne v3, p1, :cond_0

    iget v3, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    if-ne v3, p2, :cond_0

    iget v2, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    if-ne v2, p3, :cond_0

    .line 377
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendAsynchronousMessage([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 469
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/16 v1, 0x64

    if-gt p1, v1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 476
    new-instance p1, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;

    invoke-direct {p1, p0}, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 477
    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 478
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 482
    :cond_0
    monitor-exit v0

    return-void

    .line 470
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Error: the peer is not consuming our asynchronous replies."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 482
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendKexMessage([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 393
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    .line 401
    invoke-virtual {p0, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 402
    throw p1

    .line 390
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Sorry, this connection is closed."

    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-direct {p1, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 404
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public sendMessage([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_2

    .line 498
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    if-nez v1, :cond_1

    .line 507
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 521
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    :try_start_2
    monitor-exit v0

    return-void

    :catch_1
    move-exception p1

    const/4 v1, 0x0

    .line 525
    invoke-virtual {p0, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 526
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 504
    :cond_1
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Sorry, this connection is closed."

    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-direct {p1, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 528
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 496
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Assertion error: sendMessage may never be invoked by the receiver thread!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConnectionMonitors(Ljava/util/Vector;)V
    .locals 0

    .line 487
    monitor-enter p0

    .line 489
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 490
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startCompression()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/TransportConnection;->startCompression()V

    return-void
.end method
