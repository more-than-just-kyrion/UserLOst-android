.class public Lcom/freerdp/freerdpcore/domain/ManualBookmark;
.super Lcom/freerdp/freerdpcore/domain/BookmarkBase;
.source "ManualBookmark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/domain/ManualBookmark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enableGatewaySettings:Z

.field private gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

.field private hostname:Ljava/lang/String;

.field private port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;-><init>()V

    .line 50
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->type:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->hostname:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->port:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->enableGatewaySettings:Z

    .line 44
    const-class v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->type:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->hostname:Ljava/lang/String;

    const/16 v0, 0xd3d

    .line 57
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->port:I

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->enableGatewaySettings:Z

    .line 59
    new-instance v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;-><init>()V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 149
    invoke-super {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableGatewaySettings()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->enableGatewaySettings:Z

    return v0
.end method

.method public getGatewaySettings()Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->port:I

    return v0
.end method

.method public readFromSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 4

    .line 134
    invoke-super {p0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->readFromSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 136
    const-string v0, "bookmark.hostname"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->hostname:Ljava/lang/String;

    .line 137
    const-string v0, "bookmark.port"

    const/16 v2, 0xd3d

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->port:I

    .line 138
    const-string v0, "bookmark.enable_gateway_settings"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->enableGatewaySettings:Z

    .line 139
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    const-string v2, "bookmark.gateway_hostname"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setHostname(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    const-string v2, "bookmark.gateway_port"

    const/16 v3, 0x1bb

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setPort(I)V

    .line 141
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    const-string v2, "bookmark.gateway_username"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setUsername(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    const-string v2, "bookmark.gateway_password"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setPassword(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    const-string v2, "bookmark.gateway_domain"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->setDomain(Ljava/lang/String;)V

    return-void
.end method

.method public setEnableGatewaySettings(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->enableGatewaySettings:Z

    return-void
.end method

.method public setGatewaySettings(Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->port:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->enableGatewaySettings:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->writeToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 120
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 121
    const-string v0, "bookmark.hostname"

    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->hostname:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string v0, "bookmark.port"

    iget v1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->port:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v0, "bookmark.enable_gateway_settings"

    iget-boolean v1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->enableGatewaySettings:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getHostname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookmark.gateway_hostname"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getPort()I

    move-result v0

    const-string v1, "bookmark.gateway_port"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookmark.gateway_username"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookmark.gateway_password"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->gatewaySettings:Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookmark.gateway_domain"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
