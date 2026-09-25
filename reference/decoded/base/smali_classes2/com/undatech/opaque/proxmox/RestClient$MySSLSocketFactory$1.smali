.class Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "RestClient.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;-><init>(Lcom/undatech/opaque/proxmox/RestClient;Ljava/security/KeyStore;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$this$0:Lcom/undatech/opaque/proxmox/RestClient;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;Lcom/undatech/opaque/proxmox/RestClient;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->this$1:Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;

    iput-object p2, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->val$this$0:Lcom/undatech/opaque/proxmox/RestClient;

    iput-object p3, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 95
    iget-object p2, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->this$1:Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;

    iget-object p2, p2, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->cert:Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 96
    iget-object p2, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->val$h:Landroid/os/Handler;

    monitor-enter p2

    .line 98
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 99
    iget-object v2, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->val$h:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    const/4 v2, 0x1

    .line 100
    iput v2, v1, Landroid/os/Message;->what:I

    .line 101
    aget-object p1, p1, v0

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->val$h:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->this$1:Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;

    iget-object p1, p1, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->this$0:Lcom/undatech/opaque/proxmox/RestClient;

    invoke-static {p1}, Lcom/undatech/opaque/proxmox/RestClient;->-$$Nest$fgetconnection(Lcom/undatech/opaque/proxmox/RestClient;)Lcom/undatech/opaque/Connection;

    move-result-object p1

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getOvirtCaData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 106
    :try_start_1
    iget-object p1, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->val$h:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 109
    sget-object p1, Lcom/undatech/opaque/proxmox/RestClient;->TAG:Ljava/lang/String;

    const-string v0, "The x509 cert was not accepted."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "The x509 cert was not accepted."

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_0
    sget-object p1, Lcom/undatech/opaque/proxmox/RestClient;->TAG:Ljava/lang/String;

    const-string v0, "The x509 cert was accepted."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 117
    :cond_1
    :try_start_3
    iget-object p2, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->this$1:Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;

    iget-object p2, p2, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    .line 118
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 121
    :catch_1
    iget-object p2, p0, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory$1;->this$1:Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;

    iget-object p2, p2, Lcom/undatech/opaque/proxmox/RestClient$MySSLSocketFactory;->cert:Ljava/security/cert/Certificate;

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    return-void

    .line 122
    :cond_2
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "The x509 cert does not match."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
