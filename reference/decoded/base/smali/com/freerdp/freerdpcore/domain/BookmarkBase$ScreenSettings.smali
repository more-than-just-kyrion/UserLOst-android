.class public Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;
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
    name = "ScreenSettings"
.end annotation


# static fields
.field public static final AUTOMATIC:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM:I = 0x0

.field public static final FITSCREEN:I = -0x2

.field public static final PREDEFINED:I = 0x1


# instance fields
.field private colors:I

.field private height:I

.field private resolution:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 543
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->colors:I

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, -0x1

    .line 613
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    const/16 v0, 0x10

    .line 614
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->colors:I

    const/4 v0, 0x0

    .line 615
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    .line 616
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    return-void
.end method

.method private validate()V
    .locals 3

    .line 575
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->colors:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    .line 584
    iput v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->colors:I

    .line 588
    :cond_0
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    const/high16 v1, 0x10000

    if-lez v0, :cond_1

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v0, 0x400

    .line 590
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    .line 593
    :cond_2
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    if-lez v0, :cond_3

    if-le v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x300

    .line 595
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    .line 598
    :cond_4
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_5

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 606
    iput v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    :cond_5
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColors()I
    .locals 1

    .line 718
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->validate()V

    .line 719
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->colors:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 707
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->validate()V

    .line 708
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    return v0
.end method

.method public getResolution()I
    .locals 1

    .line 648
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    return v0
.end method

.method public getResolutionString()Ljava/lang/String;
    .locals 2

    .line 664
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->isPredefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->isFitScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fitscreen"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->isAutomatic()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "automatic"

    goto :goto_0

    :cond_2
    const-string v0, "custom"

    :goto_0
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 696
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->validate()V

    .line 697
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    return v0
.end method

.method public isAutomatic()Z
    .locals 2

    .line 678
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->validate()V

    .line 679
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCustom()Z
    .locals 1

    .line 690
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->validate()V

    .line 691
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFitScreen()Z
    .locals 2

    .line 684
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->validate()V

    .line 685
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPredefined()Z
    .locals 2

    .line 672
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->validate()V

    .line 673
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setColors(I)V
    .locals 0

    .line 724
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->colors:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 713
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    return-void
.end method

.method public setResolution(I)V
    .locals 1

    .line 653
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 657
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    .line 658
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    :cond_1
    return-void
.end method

.method public setResolution(Ljava/lang/String;II)V
    .locals 3

    .line 621
    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 624
    aget-object p2, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    const/4 p2, 0x1

    .line 625
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    .line 626
    iput p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    goto :goto_0

    .line 628
    :cond_0
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    iput p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    .line 631
    iput p3, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    .line 632
    iput v2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    goto :goto_0

    .line 634
    :cond_1
    const-string p2, "fitscreen"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 636
    iput v2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    iput v2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    const/4 p1, -0x2

    .line 637
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    goto :goto_0

    .line 641
    :cond_2
    iput v2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    iput v2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    const/4 p1, -0x1

    .line 642
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    :goto_0
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 702
    iput p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 734
    iget p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->resolution:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->colors:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    iget p2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
