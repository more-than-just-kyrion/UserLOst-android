.class public Lcom/iiordanov/bVNC/X509Tunnel;
.super Lcom/iiordanov/bVNC/TLSTunnelBase;
.source "X509Tunnel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "X509Tunnel"


# instance fields
.field cert:Ljava/security/cert/Certificate;

.field handler:Landroid/os/Handler;

.field rfb:Lcom/undatech/opaque/RfbConnectable;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;Landroid/os/Handler;Lcom/undatech/opaque/RfbConnectable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/TLSTunnelBase;-><init>(Ljava/net/Socket;)V

    .line 52
    const-string p1, "X509Tunnel began."

    const-string v0, "X509Tunnel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p4, p0, Lcom/iiordanov/bVNC/X509Tunnel;->rfb:Lcom/undatech/opaque/RfbConnectable;

    .line 54
    iput-object p3, p0, Lcom/iiordanov/bVNC/X509Tunnel;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 55
    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 57
    new-instance p3, Ljava/io/ByteArrayInputStream;

    const/4 p4, 0x0

    invoke-static {p2, p4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    invoke-virtual {p1, p3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    iput-object p1, p0, Lcom/iiordanov/bVNC/X509Tunnel;->cert:Ljava/security/cert/Certificate;

    .line 61
    :cond_0
    const-string p1, "X509Tunnel ended."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tlsIsOrNewerThan1_2([Ljava/lang/String;)Z
    .locals 5

    .line 66
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 67
    const-string v4, "TLSv1.[2-9]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TLSv[2-9].*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method protected initContext(Ljavax/net/ssl/SSLContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 100
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/iiordanov/bVNC/X509Tunnel$1;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/X509Tunnel$1;-><init>(Lcom/iiordanov/bVNC/X509Tunnel;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected setParam(Ljavax/net/ssl/SSLSocket;)V
    .locals 8

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Supported TLS Protocols: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X509Tunnel"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move v5, v3

    .line 83
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 84
    aget-object v6, v1, v5

    const-string v7, ".*DH_anon.*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    invoke-direct {p0, v2}, Lcom/iiordanov/bVNC/X509Tunnel;->tlsIsOrNewerThan1_2([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v1, v5

    const-string v7, "TLS_FALLBACK_SCSV"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 86
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding cipher: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    aget-object v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Omitting cipher: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    :cond_2
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method
