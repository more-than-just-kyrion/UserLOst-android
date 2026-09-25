.class Lcom/trilead/ssh2/transport/TransportManager$1;
.super Ljava/lang/Object;
.source "TransportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/transport/TransportManager;->initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/transport/TransportManager;->receiveLoop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 315
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2, v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 317
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->-$$Nest$sfgetlog()Lcom/trilead/ssh2/log/Logger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->-$$Nest$sfgetlog()Lcom/trilead/ssh2/log/Logger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Receive thread: error in receiveLoop: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 321
    :cond_0
    :goto_0
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->-$$Nest$sfgetlog()Lcom/trilead/ssh2/log/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-static {}, Lcom/trilead/ssh2/transport/TransportManager;->-$$Nest$sfgetlog()Lcom/trilead/ssh2/log/Logger;

    move-result-object v1

    const/16 v2, 0x32

    const-string v3, "Receive thread: back from receiveLoop"

    invoke-virtual {v1, v2, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 330
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v1, v1, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v1, v2, v0}, Lcom/trilead/ssh2/transport/KexManager;->handleMessage([BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    move v1, v0

    .line 337
    :goto_1
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 339
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager$1;->this$0:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v3, v3, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 342
    :try_start_2
    iget-object v3, v3, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    invoke-interface {v3, v2, v0}, Lcom/trilead/ssh2/transport/MessageHandler;->handleMessage([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
