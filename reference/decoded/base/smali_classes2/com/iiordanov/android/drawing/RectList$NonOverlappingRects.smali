.class Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;
.super Ljava/lang/Object;
.source "RectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/android/drawing/RectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonOverlappingRects"
.end annotation


# static fields
.field static final MAX_RECTS:I = 0x8


# instance fields
.field count:I

.field rectEntries:[Lcom/iiordanov/util/ObjectPool$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 289
    new-array v0, v0, [Lcom/iiordanov/util/ObjectPool$Entry;

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->rectEntries:[Lcom/iiordanov/util/ObjectPool$Entry;

    return-void
.end method

.method private addOwnedRect(IILcom/iiordanov/util/ObjectPool;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/iiordanov/util/ObjectPool<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    .line 296
    invoke-virtual {p3}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object p1

    .line 297
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->rectEntries:[Lcom/iiordanov/util/ObjectPool$Entry;

    iget p3, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->count:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->count:I

    aput-object p1, p2, p3

    .line 298
    invoke-virtual {p1}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method Populate(Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;Lcom/iiordanov/util/ObjectPool;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;",
            "Lcom/iiordanov/util/ObjectPool<",
            "Landroid/graphics/Rect;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->count:I

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->rectEntries:[Lcom/iiordanov/util/ObjectPool$Entry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    .line 307
    iget-object v2, p1, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomLeftPortion:Landroid/graphics/Rect;

    invoke-direct {p0, p3, v0, p2, v2}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->addOwnedRect(IILcom/iiordanov/util/ObjectPool;Landroid/graphics/Rect;)V

    .line 308
    iget-object v0, p1, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    const/16 v2, 0x40

    invoke-direct {p0, p3, v2, p2, v0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->addOwnedRect(IILcom/iiordanov/util/ObjectPool;Landroid/graphics/Rect;)V

    const/16 v0, 0x20

    .line 309
    iget-object v3, p1, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomRightPortion:Landroid/graphics/Rect;

    invoke-direct {p0, p3, v0, p2, v3}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->addOwnedRect(IILcom/iiordanov/util/ObjectPool;Landroid/graphics/Rect;)V

    .line 310
    iget-object v0, p1, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->bottomPortion:Landroid/graphics/Rect;

    invoke-direct {p0, p3, v2, p2, v0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->addOwnedRect(IILcom/iiordanov/util/ObjectPool;Landroid/graphics/Rect;)V

    .line 311
    iget-object v0, p1, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topRightPortion:Landroid/graphics/Rect;

    invoke-direct {p0, p3, v1, p2, v0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->addOwnedRect(IILcom/iiordanov/util/ObjectPool;Landroid/graphics/Rect;)V

    const/4 v0, 0x4

    .line 312
    iget-object v1, p1, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topPortion:Landroid/graphics/Rect;

    invoke-direct {p0, p3, v0, p2, v1}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->addOwnedRect(IILcom/iiordanov/util/ObjectPool;Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    .line 313
    iget-object v1, p1, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->topLeftPortion:Landroid/graphics/Rect;

    invoke-direct {p0, p3, v0, p2, v1}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->addOwnedRect(IILcom/iiordanov/util/ObjectPool;Landroid/graphics/Rect;)V

    .line 314
    iget-object p1, p1, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->leftPortion:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0, p2, p1}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->addOwnedRect(IILcom/iiordanov/util/ObjectPool;Landroid/graphics/Rect;)V

    return-void
.end method
