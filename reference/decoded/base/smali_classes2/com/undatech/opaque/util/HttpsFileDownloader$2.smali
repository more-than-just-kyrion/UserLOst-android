.class Lcom/undatech/opaque/util/HttpsFileDownloader$2;
.super Ljava/lang/Thread;
.source "HttpsFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/util/HttpsFileDownloader;->initiateDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/util/HttpsFileDownloader;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/util/HttpsFileDownloader;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/undatech/opaque/util/HttpsFileDownloader$2;->this$0:Lcom/undatech/opaque/util/HttpsFileDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 82
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/undatech/opaque/util/HttpsFileDownloader$2;->this$0:Lcom/undatech/opaque/util/HttpsFileDownloader;

    iget-object v1, v1, Lcom/undatech/opaque/util/HttpsFileDownloader;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 87
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    int-to-char v0, v0

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 93
    invoke-static {}, Lcom/undatech/opaque/util/HttpsFileDownloader;->resetDefaultTrustManager()V

    .line 94
    iget-object v0, p0, Lcom/undatech/opaque/util/HttpsFileDownloader$2;->this$0:Lcom/undatech/opaque/util/HttpsFileDownloader;

    iget-object v0, v0, Lcom/undatech/opaque/util/HttpsFileDownloader;->listener:Lcom/undatech/opaque/util/HttpsFileDownloader$OnDownloadFinishedListener;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/util/HttpsFileDownloader$OnDownloadFinishedListener;->onDownload(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 86
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method
