.class public Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "RestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/undatech/opaque/proxmox/RestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySSLSocketFactory"
.end annotation


# instance fields
.field cert:Ljava/security/cert/Certificate;

.field sslContext:Ljavax/net/ssl/SSLContext;

.field final synthetic this$0:Lcom/undatech/opaque/proxmox/RestClient;


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/proxmox/RestClient;Ljava/security/KeyStore;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->this$0:Lcom/undatech/opaque/proxmox/RestClient;

    .line 83
    invoke-direct {p0, p2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const/4 p2, 0x0

    .line 77
    iput-object p2, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->cert:Ljava/security/cert/Certificate;

    .line 78
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 84
    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {p3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    const-string p3, "X.509"

    invoke-static {p3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p3

    .line 87
    invoke-virtual {p3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    iput-object p3, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->cert:Ljava/security/cert/Certificate;

    .line 90
    :cond_0
    new-instance p3, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;

    invoke-direct {p3, p0, p1, p4}, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;-><init>(Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;Lcom/undatech/opaque/proxmox/RestClient;Landroid/os/Handler;)V

    .line 132
    iget-object p1, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 p4, 0x1

    new-array p4, p4, [Ljavax/net/ssl/TrustManager;

    aput-object p3, p4, v0

    invoke-virtual {p1, p2, p4, p2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
