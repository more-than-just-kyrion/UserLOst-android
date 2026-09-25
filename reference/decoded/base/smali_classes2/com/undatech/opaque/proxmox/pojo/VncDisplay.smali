.class public Lcom/undatech/opaque/proxmox/pojo/VncDisplay;
.super Ljava/lang/Object;
.source "VncDisplay.java"


# instance fields
.field private cert:Ljava/lang/String;

.field private port:I

.field private ticket:Ljava/lang/String;

.field private upid:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "cert"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->cert:Ljava/lang/String;

    .line 15
    const-string v0, "port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->port:I

    .line 16
    const-string v0, "ticket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->ticket:Ljava/lang/String;

    .line 17
    const-string v0, "upid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->upid:Ljava/lang/String;

    .line 18
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->user:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCert()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->port:I

    return v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getUpid()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->upid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;->user:Ljava/lang/String;

    return-object v0
.end method
