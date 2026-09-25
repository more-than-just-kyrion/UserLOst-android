.class public Lcom/iiordanov/bVNC/SecureTunnel;
.super Ljava/lang/Object;
.source "SecureTunnel.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecureTunnel"


# instance fields
.field m_address:Ljava/lang/String;

.field m_cert:Ljava/lang/String;

.field m_certMatched:Z

.field m_connection:Lcom/iiordanov/bVNC/ConnectionBean;

.field m_hash:Ljava/lang/String;

.field m_idHashAlgorithm:I

.field m_messageBus:Landroid/os/Handler;

.field m_port:I

.field m_sslsock:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_certMatched:Z

    .line 60
    iput-object p1, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_address:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_port:I

    .line 62
    iput p3, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_idHashAlgorithm:I

    .line 63
    iput-object p4, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_hash:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_cert:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_messageBus:Landroid/os/Handler;

    return-void
.end method

.method public static computeSignatureByAlgorithm(I[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 186
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    goto :goto_0

    .line 189
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported hash algorithm."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_1
    const-string p0, "SHA-1"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    goto :goto_0

    .line 180
    :cond_2
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 191
    :goto_0
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 192
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSignatureEqual(ILjava/lang/String;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->isNullOrEmptry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->isNullOrEmptry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 168
    :cond_1
    invoke-static {p0, p2}, Lcom/iiordanov/bVNC/SecureTunnel;->computeSignatureByAlgorithm(I[B)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 148
    array-length p2, p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    .line 152
    iget-object p2, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_messageBus:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 153
    iget-object p2, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_messageBus:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 149
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    invoke-direct {p1}, Ljava/security/cert/CertificateException;-><init>()V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSocket()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_sslsock:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method protected setParam(Ljavax/net/ssl/SSLSocket;)V
    .locals 9

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 106
    :goto_0
    array-length v3, p1

    const-string v4, "Adding cipher: "

    const-string v5, "SecureTunnel"

    const-string v6, "EMPTY"

    const-string v7, "NULL"

    const-string v8, "EXPORT"

    if-ge v2, v3, :cond_4

    .line 109
    aget-object v3, p1, v2

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 117
    :cond_2
    aget-object v3, p1, v2

    const-string v6, "TLS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_4
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_9

    .line 126
    aget-object v2, p1, v1

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 128
    :cond_5
    aget-object v2, p1, v1

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 130
    :cond_6
    aget-object v2, p1, v1

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 133
    :cond_7
    aget-object v2, p1, v1

    const-string v3, "SSL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 135
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method public setup()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_address:Ljava/lang/String;

    iget v2, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 74
    const-string v2, "Generating TLS context."

    const-string v3, "SecureTunnel"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 76
    new-array v4, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 77
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 78
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v6

    invoke-virtual {v2, v0, v4, v6, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_sslsock:Ljavax/net/ssl/SSLSocket;

    .line 80
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    .line 82
    iget-object v0, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_sslsock:Ljavax/net/ssl/SSLSocket;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 83
    iget-object v0, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_sslsock:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/SecureTunnel;->setParam(Ljavax/net/ssl/SSLSocket;)V

    .line 85
    const-string v0, "Performing TLS handshake."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_sslsock:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 87
    const-string v0, "Secure tunnel established."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_sslsock:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 90
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Using Protocol:%s CipherSuite:%s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/iiordanov/bVNC/SecureTunnel;->m_sslsock:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v5}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    return-void
.end method
