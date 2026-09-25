.class public Lcom/undatech/opaque/proxmox/ProxmoxClient;
.super Lcom/undatech/opaque/proxmox/RestClient;
.source "ProxmoxClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RestClient"


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private csrfToken:Ljava/lang/String;

.field private ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/undatech/opaque/Connection;Landroid/os/Handler;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/undatech/opaque/proxmox/RestClient;-><init>(Lcom/undatech/opaque/Connection;Landroid/os/Handler;)V

    .line 36
    const-string p2, "/api2/json"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/proxmox/ProxmoxClient;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method private request(Ljava/lang/String;Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljavax/security/auth/login/LoginException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/undatech/opaque/proxmox/ProxmoxClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->resetState(Ljava/lang/String;)V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PVEAuthCookie="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/undatech/opaque/proxmox/ProxmoxClient;->ticket:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cookie"

    invoke-virtual {p0, v0, p1}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object p1, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->GET:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    invoke-virtual {p2, p1}, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    const-string p1, "CSRFPreventionToken"

    iget-object v0, p0, Lcom/undatech/opaque/proxmox/ProxmoxClient;->csrfToken:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 108
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, p2}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->execute(Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;)V

    .line 114
    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getResponseCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->isSuccessfulCode(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getResponse()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getResponseCode()I

    move-result p1

    const/16 p2, 0x191

    if-ne p1, p2, :cond_3

    .line 117
    new-instance p1, Ljavax/security/auth/login/LoginException;

    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_3
    new-instance p1, Lorg/apache/http/HttpException;

    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAvailableRealms()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/undatech/opaque/proxmox/pojo/PveRealm;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/undatech/opaque/proxmox/ProxmoxClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/access/domains"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->resetState(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->GET:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    invoke-virtual {p0, v0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->execute(Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;)V

    .line 51
    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/undatech/opaque/proxmox/pojo/PveRealm;->getRealmsFromJsonArray(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/http/HttpException;

    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/undatech/opaque/proxmox/pojo/VmStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/nodes/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/status/current"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->GET:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->request(Ljava/lang/String;Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 219
    new-instance p2, Lcom/undatech/opaque/proxmox/pojo/VmStatus;

    const-string p3, "data"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/undatech/opaque/proxmox/pojo/VmStatus;-><init>(Lorg/json/JSONObject;)V

    return-object p2
.end method

.method public getResources()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/undatech/opaque/proxmox/pojo/PveResource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->GET:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    const/4 v1, 0x0

    const-string v2, "/cluster/resources"

    invoke-direct {p0, v2, v0, v1}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->request(Ljava/lang/String;Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 232
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 234
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 235
    new-instance v3, Lcom/undatech/opaque/proxmox/pojo/PveResource;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/undatech/opaque/proxmox/pojo/PveResource;-><init>(Lorg/json/JSONObject;)V

    .line 236
    invoke-virtual {v3}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getNode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getVmid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {v3}, Lcom/undatech/opaque/proxmox/pojo/PveResource;->getVmid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method isSuccessfulCode(I)Z
    .locals 1

    .line 128
    div-int/lit8 p1, p1, 0x64

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/undatech/opaque/proxmox/ProxmoxClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/access/ticket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->resetState(Ljava/lang/String;)V

    .line 65
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string p1, "password"

    invoke-virtual {p0, p1, p3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string p1, "realm"

    invoke-virtual {p0, p1, p2}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 69
    const-string p1, "otp"

    invoke-virtual {p0, p1, p4}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    sget-object p1, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->execute(Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;)V

    .line 74
    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    .line 75
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getResponse()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 76
    const-string p2, "ticket"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/undatech/opaque/proxmox/ProxmoxClient;->ticket:Ljava/lang/String;

    .line 77
    const-string p2, "CSRFPreventionToken"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/proxmox/ProxmoxClient;->csrfToken:Ljava/lang/String;

    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getResponseCode()I

    move-result p1

    const/16 p2, 0x191

    if-ne p1, p2, :cond_2

    .line 79
    new-instance p1, Ljavax/security/auth/login/LoginException;

    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_2
    new-instance p1, Lorg/apache/http/HttpException;

    invoke-virtual {p0}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spiceNode(Ljava/lang/String;)Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/nodes/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/spiceshell"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->request(Ljava/lang/String;Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 155
    new-instance v0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public spiceVm(Ljava/lang/String;Ljava/lang/String;I)Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/nodes/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/spiceproxy"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->request(Ljava/lang/String;Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 187
    new-instance p2, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;

    const-string p3, "data"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;-><init>(Lorg/json/JSONObject;)V

    return-object p2
.end method

.method public startVm(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/nodes/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/status/start"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->request(Ljava/lang/String;Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 203
    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public vncNode(Ljava/lang/String;)Lcom/undatech/opaque/proxmox/pojo/VncDisplay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/nodes/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/vncshell"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->request(Ljava/lang/String;Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 141
    new-instance v0, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public vncVm(Ljava/lang/String;Ljava/lang/String;I)Lcom/undatech/opaque/proxmox/pojo/VncDisplay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/nodes/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/vncproxy"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;->POST:Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/undatech/opaque/proxmox/ProxmoxClient;->request(Ljava/lang/String;Lcom/undatech/opaque/proxmox/RestClient$RequestMethod;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 171
    new-instance p2, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;

    const-string p3, "data"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/undatech/opaque/proxmox/pojo/VncDisplay;-><init>(Lorg/json/JSONObject;)V

    return-object p2
.end method
