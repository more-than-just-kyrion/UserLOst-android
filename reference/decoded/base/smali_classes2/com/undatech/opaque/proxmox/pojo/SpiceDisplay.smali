.class public Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;
.super Ljava/lang/Object;
.source "SpiceDisplay.java"


# instance fields
.field private ca:Ljava/lang/String;

.field private deleteThisFile:I

.field private host:Ljava/lang/String;

.field private hostSubject:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private proxy:Ljava/lang/String;

.field private releaseCursor:Ljava/lang/String;

.field private secureAttention:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tlsPort:I

.field private toggleFullscreen:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "password"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->password:Ljava/lang/String;

    .line 26
    const-string v0, "tls-port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->tlsPort:I

    .line 27
    const-string v0, "host"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->host:Ljava/lang/String;

    .line 28
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->title:Ljava/lang/String;

    .line 29
    const-string v0, "ca"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->ca:Ljava/lang/String;

    .line 30
    const-string v0, "host-subject"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->hostSubject:Ljava/lang/String;

    .line 31
    const-string v0, "proxy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->proxy:Ljava/lang/String;

    .line 32
    const-string v0, "delete-this-file"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->deleteThisFile:I

    .line 33
    const-string v0, "secure-attention"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->secureAttention:Ljava/lang/String;

    .line 34
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->type:Ljava/lang/String;

    .line 35
    const-string v0, "toggle-fullscreen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->toggleFullscreen:Ljava/lang/String;

    .line 36
    const-string v0, "release-cursor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->releaseCursor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCa()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->ca:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteThisFile()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->deleteThisFile:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostSubject()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->hostSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->proxy:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseCursor()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->releaseCursor:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureAttention()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->secureAttention:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTlsPort()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->tlsPort:I

    return v0
.end method

.method public getToggleFullscreen()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->toggleFullscreen:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->type:Ljava/lang/String;

    return-object v0
.end method

.method public outputToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 138
    const-string v0, "[virt-viewer]\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tls-port="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->tlsPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ca="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->ca:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "host="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "host-subject="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->hostSubject:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "password="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 144
    const-string v0, "proxy="

    if-eqz p2, :cond_0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->proxy:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "//"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "//.*:"

    invoke-virtual {v0, v3, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 147
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->proxy:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 149
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "title="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "delete-this-file="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->deleteThisFile:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "release-cursor="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->releaseCursor:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "secure-attention="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->secureAttention:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "toggle-fullscreen="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->toggleFullscreen:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 155
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public setCa(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->ca:Ljava/lang/String;

    return-void
.end method

.method public setDeleteThisFile(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->deleteThisFile:I

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->host:Ljava/lang/String;

    return-void
.end method

.method public setHostSubject(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->hostSubject:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->password:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->proxy:Ljava/lang/String;

    return-void
.end method

.method public setReleaseCursor(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->releaseCursor:Ljava/lang/String;

    return-void
.end method

.method public setSecureAttention(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->secureAttention:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->title:Ljava/lang/String;

    return-void
.end method

.method public setTlsPort(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->tlsPort:I

    return-void
.end method

.method public setToggleFullscreen(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->toggleFullscreen:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/undatech/opaque/proxmox/pojo/SpiceDisplay;->type:Ljava/lang/String;

    return-void
.end method
