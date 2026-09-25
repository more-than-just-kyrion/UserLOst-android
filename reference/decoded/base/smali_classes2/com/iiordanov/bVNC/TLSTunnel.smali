.class public Lcom/iiordanov/bVNC/TLSTunnel;
.super Lcom/iiordanov/bVNC/TLSTunnelBase;
.source "TLSTunnel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TLSTunnel"


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/TLSTunnelBase;-><init>(Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method protected setParam(Ljavax/net/ssl/SSLSocket;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iiordanov/bVNC/exceptions/AnonCipherUnsupportedException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 46
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 47
    aget-object v4, v1, v3

    const-string v5, ".*DH_anon.*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding cipher: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TLSTunnel"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void

    .line 54
    :cond_2
    new-instance p1, Lcom/iiordanov/bVNC/exceptions/AnonCipherUnsupportedException;

    invoke-direct {p1}, Lcom/iiordanov/bVNC/exceptions/AnonCipherUnsupportedException;-><init>()V

    throw p1
.end method
