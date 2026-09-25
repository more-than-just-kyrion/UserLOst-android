.class public Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;
.super Ljava/lang/Object;
.source "BookmarkBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/domain/BookmarkBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugSettings"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private asyncChannel:Z

.field private asyncInput:Z

.field private asyncTransport:Z

.field private asyncUpdate:Z

.field private debug:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 744
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncChannel:Z

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncTransport:Z

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncInput:Z

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncUpdate:Z

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->debug:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 2

    .line 779
    const-string v0, "INFO"

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->debug:Ljava/lang/String;

    const/4 v0, 0x1

    .line 780
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncChannel:Z

    const/4 v1, 0x0

    .line 781
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncTransport:Z

    .line 782
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncInput:Z

    .line 783
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncUpdate:Z

    return-void
.end method

.method private validate()V
    .locals 6

    const/4 v0, 0x7

    .line 788
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "OFF"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "FATAL"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "ERROR"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "WARN"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "INFO"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v5, "DEBUG"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "TRACE"

    aput-object v5, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 790
    aget-object v2, v1, v3

    .line 792
    iget-object v5, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->debug:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 798
    :cond_1
    iput-object v4, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->debug:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAsyncChannel()Z
    .locals 1

    .line 834
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncChannel:Z

    return v0
.end method

.method public getAsyncInput()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncInput:Z

    return v0
.end method

.method public getAsyncUpdate()Z
    .locals 1

    .line 814
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncUpdate:Z

    return v0
.end method

.method public getDebugLevel()Ljava/lang/String;
    .locals 1

    .line 803
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->validate()V

    .line 804
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->debug:Ljava/lang/String;

    return-object v0
.end method

.method public setAsyncChannel(Z)V
    .locals 0

    .line 839
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncChannel:Z

    return-void
.end method

.method public setAsyncInput(Z)V
    .locals 0

    .line 829
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncInput:Z

    return-void
.end method

.method public setAsyncUpdate(Z)V
    .locals 0

    .line 819
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncUpdate:Z

    return-void
.end method

.method public setDebugLevel(Ljava/lang/String;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->debug:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 849
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncChannel:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncTransport:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncInput:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->asyncUpdate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget-object p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->debug:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
