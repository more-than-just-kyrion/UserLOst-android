.class public Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;
.super Lcom/freerdp/freerdpcore/domain/BookmarkBase;
.source "PlaceholderBookmark.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;-><init>()V

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->type:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x3

    .line 37
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->type:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->name:Ljava/lang/String;

    return-object v0
.end method

.method public readFromSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->readFromSharedPreferences(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->name:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-object p2, p0, Lcom/freerdp/freerdpcore/domain/PlaceholderBookmark;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->writeToSharedPreferences(Landroid/content/SharedPreferences;)V

    return-void
.end method
