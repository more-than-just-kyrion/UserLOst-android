.class public Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;
.super Ljava/lang/Object;
.source "ManualBookmark.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/domain/ManualBookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GatewaySettings"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private domain:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:I

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->hostname:Ljava/lang/String;

    const/16 v1, 0x1bb

    .line 176
    iput v1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->port:I

    .line 177
    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->username:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->password:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->domain:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->hostname:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->port:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->username:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->password:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->domain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->port:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->domain:Ljava/lang/String;

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->hostname:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->password:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->port:I

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->username:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 248
    iget-object p2, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->hostname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget p2, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->port:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object p2, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/freerdp/freerdpcore/domain/ManualBookmark$GatewaySettings;->domain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
