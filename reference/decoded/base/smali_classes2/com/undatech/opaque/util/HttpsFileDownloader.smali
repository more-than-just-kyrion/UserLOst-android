.class public Lcom/undatech/opaque/util/HttpsFileDownloader;
.super Ljava/lang/Object;
.source "HttpsFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/undatech/opaque/util/HttpsFileDownloader$OnDownloadFinishedListener;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field listener:Lcom/undatech/opaque/util/HttpsFileDownloader$OnDownloadFinishedListener;

.field url:Ljava/lang/String;

.field verifySslCerts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/undatech/opaque/util/HttpsFileDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/undatech/opaque/util/HttpsFileDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/undatech/opaque/util/HttpsFileDownloader$OnDownloadFinishedListener;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/undatech/opaque/util/HttpsFileDownloader;->url:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lcom/undatech/opaque/util/HttpsFileDownloader;->verifySslCerts:Z

    .line 32
    iput-object p3, p0, Lcom/undatech/opaque/util/HttpsFileDownloader;->listener:Lcom/undatech/opaque/util/HttpsFileDownloader$OnDownloadFinishedListener;

    return-void
.end method

.method public static initDefaultTrustManager(Z)V
    .locals 3

    .line 36
    sget-object v0, Lcom/undatech/opaque/util/HttpsFileDownloader;->TAG:Ljava/lang/String;

    const-string v1, "initDefaultTrustManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "SSL"

    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-static {p0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 46
    new-array p0, p0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/undatech/opaque/util/HttpsFileDownloader$1;

    invoke-direct {v1}, Lcom/undatech/opaque/util/HttpsFileDownloader$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, p0, v2

    .line 55
    :try_start_1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 57
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-static {p0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static resetDefaultTrustManager()V
    .locals 3

    .line 65
    sget-object v0, Lcom/undatech/opaque/util/HttpsFileDownloader;->TAG:Ljava/lang/String;

    const-string v1, "resetDefaultTrustManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_0
    const-string v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 69
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public initiateDownload()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/undatech/opaque/util/HttpsFileDownloader;->verifySslCerts:Z

    invoke-static {v0}, Lcom/undatech/opaque/util/HttpsFileDownloader;->initDefaultTrustManager(Z)V

    .line 78
    new-instance v0, Lcom/undatech/opaque/util/HttpsFileDownloader$2;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/util/HttpsFileDownloader$2;-><init>(Lcom/undatech/opaque/util/HttpsFileDownloader;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
