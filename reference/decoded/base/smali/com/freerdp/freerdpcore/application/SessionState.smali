.class public Lcom/freerdp/freerdpcore/application/SessionState;
.super Ljava/lang/Object;
.source "SessionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/application/SessionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

.field private instance:J

.field private openUri:Landroid/net/Uri;

.field private surface:Landroid/graphics/drawable/BitmapDrawable;

.field private uiEventListener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/freerdp/freerdpcore/application/SessionState$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/application/SessionState$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/application/SessionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->instance:J

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 65
    iput-object p3, p0, Lcom/freerdp/freerdpcore/application/SessionState;->openUri:Landroid/net/Uri;

    .line 66
    iput-object p1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->uiEventListener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    return-void
.end method

.method public constructor <init>(JLcom/freerdp/freerdpcore/domain/BookmarkBase;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->instance:J

    .line 56
    iput-object p3, p0, Lcom/freerdp/freerdpcore/application/SessionState;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->openUri:Landroid/net/Uri;

    .line 58
    iput-object p1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->uiEventListener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->instance:J

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    iput-object v1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->openUri:Landroid/net/Uri;

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 50
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->surface:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    if-eqz v0, :cond_0

    .line 73
    iget-wide v1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->instance:J

    invoke-static {p1, v1, v2, v0}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->setConnectionInfo(Landroid/content/Context;JLcom/freerdp/freerdpcore/domain/BookmarkBase;)Z

    goto :goto_0

    .line 77
    :cond_0
    iget-wide v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->instance:J

    iget-object v2, p0, Lcom/freerdp/freerdpcore/application/SessionState;->openUri:Landroid/net/Uri;

    invoke-static {p1, v0, v1, v2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->setConnectionInfo(Landroid/content/Context;JLandroid/net/Uri;)Z

    .line 79
    :goto_0
    iget-wide v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->instance:J

    invoke-static {v0, v1}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->connect(J)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    return-object v0
.end method

.method public getInstance()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->instance:J

    return-wide v0
.end method

.method public getOpenUri()Landroid/net/Uri;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->openUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSurface()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->surface:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getUIEventListener()Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->uiEventListener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    return-object v0
.end method

.method public setSurface(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->surface:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public setUIEventListener(Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/freerdp/freerdpcore/application/SessionState;->uiEventListener:Lcom/freerdp/freerdpcore/services/LibFreeRDP$UIEventListener;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->instance:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget-object v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget-object v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->openUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 127
    iget-object v0, p0, Lcom/freerdp/freerdpcore/application/SessionState;->surface:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
