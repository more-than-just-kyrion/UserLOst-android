.class Lcom/iiordanov/bVNC/X509Tunnel$1;
.super Ljava/lang/Object;
.source "X509Tunnel.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/X509Tunnel;->initContext(Ljavax/net/ssl/SSLContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/X509Tunnel;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/X509Tunnel;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/iiordanov/bVNC/X509Tunnel$1;->this$0:Lcom/iiordanov/bVNC/X509Tunnel;

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

    .line 111
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "no clients"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 119
    array-length p2, p1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    if-eqz p1, :cond_3

    .line 123
    array-length p2, p1

    if-gt p2, v0, :cond_3

    .line 130
    iget-object p2, p0, Lcom/iiordanov/bVNC/X509Tunnel$1;->this$0:Lcom/iiordanov/bVNC/X509Tunnel;

    iget-object p2, p2, Lcom/iiordanov/bVNC/X509Tunnel;->cert:Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 132
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/iiordanov/bVNC/X509Tunnel$1;->this$0:Lcom/iiordanov/bVNC/X509Tunnel;

    iget-object v2, v2, Lcom/iiordanov/bVNC/X509Tunnel;->handler:Landroid/os/Handler;

    invoke-virtual {p2, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 134
    iput v0, p2, Landroid/os/Message;->what:I

    .line 135
    aget-object p1, p1, v1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lcom/iiordanov/bVNC/X509Tunnel$1;->this$0:Lcom/iiordanov/bVNC/X509Tunnel;

    iget-object p1, p1, Lcom/iiordanov/bVNC/X509Tunnel;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    iget-object p1, p0, Lcom/iiordanov/bVNC/X509Tunnel$1;->this$0:Lcom/iiordanov/bVNC/X509Tunnel;

    iget-object p2, p1, Lcom/iiordanov/bVNC/X509Tunnel;->rfb:Lcom/undatech/opaque/RfbConnectable;

    monitor-enter p2

    .line 140
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/X509Tunnel$1;->this$0:Lcom/iiordanov/bVNC/X509Tunnel;

    iget-object p1, p1, Lcom/iiordanov/bVNC/X509Tunnel;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-interface {p1}, Lcom/undatech/opaque/RfbConnectable;->isCertificateAccepted()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 142
    :try_start_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/X509Tunnel$1;->this$0:Lcom/iiordanov/bVNC/X509Tunnel;

    iget-object p1, p1, Lcom/iiordanov/bVNC/X509Tunnel;->rfb:Lcom/undatech/opaque/RfbConnectable;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 145
    :cond_0
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 152
    :cond_1
    :try_start_3
    iget-object p2, p0, Lcom/iiordanov/bVNC/X509Tunnel$1;->this$0:Lcom/iiordanov/bVNC/X509Tunnel;

    iget-object p2, p2, Lcom/iiordanov/bVNC/X509Tunnel;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    .line 153
    aget-object v0, p1, v1

    invoke-virtual {v0, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 158
    :catch_1
    iget-object p2, p0, Lcom/iiordanov/bVNC/X509Tunnel$1;->this$0:Lcom/iiordanov/bVNC/X509Tunnel;

    iget-object p2, p2, Lcom/iiordanov/bVNC/X509Tunnel;->cert:Ljava/security/cert/Certificate;

    aget-object p1, p1, v1

    invoke-virtual {p2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    return-void

    .line 159
    :cond_2
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "certificate does not match"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_3
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "cert path too long"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_4
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "no certs"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
