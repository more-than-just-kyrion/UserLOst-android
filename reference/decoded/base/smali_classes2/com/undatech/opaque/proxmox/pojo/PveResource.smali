.class public Lcom/undatech/opaque/proxmox/pojo/PveResource;
.super Ljava/lang/Object;
.source "PveResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/undatech/opaque/proxmox/pojo/PveResource$Types;
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private node:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private vmid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "node"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->node:Ljava/lang/String;

    .line 24
    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->type:Ljava/lang/String;

    .line 26
    :cond_1
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->id:Ljava/lang/String;

    .line 28
    :cond_2
    const-string v0, "vmid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->vmid:Ljava/lang/String;

    .line 30
    :cond_3
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->name:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVmid()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->vmid:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->name:Ljava/lang/String;

    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->node:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->type:Ljava/lang/String;

    return-void
.end method

.method public setVmid(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveResource;->vmid:Ljava/lang/String;

    return-void
.end method
