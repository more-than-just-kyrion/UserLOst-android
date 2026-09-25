.class Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings$1;
.super Ljava/lang/Object;
.source "BookmarkBase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;
    .locals 1

    .line 748
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    invoke-direct {v0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 745
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;
    .locals 0

    .line 753
    new-array p1, p1, [Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 745
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings$1;->newArray(I)[Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object p1

    return-object p1
.end method
