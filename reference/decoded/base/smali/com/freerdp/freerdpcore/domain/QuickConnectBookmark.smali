.class public Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark;
.super Lcom/freerdp/freerdpcore/domain/ManualBookmark;
.source "QuickConnectBookmark.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;-><init>()V

    const/4 v0, 0x2

    .line 42
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark;->type:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;-><init>(Landroid/os/Parcel;)V

    const/4 p1, 0x2

    .line 36
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/QuickConnectBookmark;->type:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->readFromSharedPreferences(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->writeToSharedPreferences(Landroid/content/SharedPreferences;)V

    return-void
.end method
