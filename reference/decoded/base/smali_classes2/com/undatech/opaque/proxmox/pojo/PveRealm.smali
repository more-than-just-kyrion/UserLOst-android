.class public Lcom/undatech/opaque/proxmox/pojo/PveRealm;
.super Ljava/lang/Object;
.source "PveRealm.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PveRealm"


# instance fields
.field private comment:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private tfa:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->type:Ljava/lang/String;

    .line 31
    :cond_0
    const-string v0, "realm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->realm:Ljava/lang/String;

    .line 33
    :cond_1
    const-string v0, "tfa"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->tfa:Ljava/lang/String;

    .line 35
    :cond_2
    const-string v0, "comment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->comment:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static getRealmsFromJsonArray(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/undatech/opaque/proxmox/pojo/PveRealm;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 17
    new-instance v2, Lcom/undatech/opaque/proxmox/pojo/PveRealm;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/undatech/opaque/proxmox/pojo/PveRealm;-><init>(Lorg/json/JSONObject;)V

    .line 18
    invoke-virtual {v2}, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getTfa()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->tfa:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->comment:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->realm:Ljava/lang/String;

    return-void
.end method

.method public setTfa(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->tfa:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->type:Ljava/lang/String;

    return-void
.end method
