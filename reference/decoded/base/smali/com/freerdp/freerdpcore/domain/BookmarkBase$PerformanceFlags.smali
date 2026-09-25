.class public Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;
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
    name = "PerformanceFlags"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desktopComposition:Z

.field private fontSmoothing:Z

.field private fullWindowDrag:Z

.field private gfx:Z

.field private h264:Z

.field private menuAnimations:Z

.field private remotefx:Z

.field private theming:Z

.field private wallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 379
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->remotefx:Z

    .line 404
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->gfx:Z

    .line 405
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->h264:Z

    .line 406
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->wallpaper:Z

    .line 407
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->theming:Z

    .line 408
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fullWindowDrag:Z

    .line 409
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->menuAnimations:Z

    .line 410
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fontSmoothing:Z

    .line 411
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->desktopComposition:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
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
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->remotefx:Z

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->gfx:Z

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->h264:Z

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->wallpaper:Z

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->theming:Z

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fullWindowDrag:Z

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->menuAnimations:Z

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fontSmoothing:Z

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_8

    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->desktopComposition:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDesktopComposition()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->desktopComposition:Z

    return v0
.end method

.method public getFontSmoothing()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fontSmoothing:Z

    return v0
.end method

.method public getFullWindowDrag()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fullWindowDrag:Z

    return v0
.end method

.method public getGfx()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->gfx:Z

    return v0
.end method

.method public getH264()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->h264:Z

    return v0
.end method

.method public getMenuAnimations()Z
    .locals 1

    .line 489
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->menuAnimations:Z

    return v0
.end method

.method public getRemoteFX()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->remotefx:Z

    return v0
.end method

.method public getTheming()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->theming:Z

    return v0
.end method

.method public getWallpaper()Z
    .locals 1

    .line 459
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->wallpaper:Z

    return v0
.end method

.method public setDesktopComposition(Z)V
    .locals 0

    .line 514
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->desktopComposition:Z

    return-void
.end method

.method public setFontSmoothing(Z)V
    .locals 0

    .line 504
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fontSmoothing:Z

    return-void
.end method

.method public setFullWindowDrag(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fullWindowDrag:Z

    return-void
.end method

.method public setGfx(Z)V
    .locals 0

    .line 444
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->gfx:Z

    return-void
.end method

.method public setH264(Z)V
    .locals 0

    .line 454
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->h264:Z

    return-void
.end method

.method public setMenuAnimations(Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->menuAnimations:Z

    return-void
.end method

.method public setRemoteFX(Z)V
    .locals 0

    .line 434
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->remotefx:Z

    return-void
.end method

.method public setTheming(Z)V
    .locals 0

    .line 474
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->theming:Z

    return-void
.end method

.method public setWallpaper(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->wallpaper:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 524
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->remotefx:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->gfx:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->h264:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->wallpaper:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->theming:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fullWindowDrag:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->menuAnimations:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->fontSmoothing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-boolean p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->desktopComposition:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
