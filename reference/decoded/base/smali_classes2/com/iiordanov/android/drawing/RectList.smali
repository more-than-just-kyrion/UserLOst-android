.class public Lcom/iiordanov/android/drawing/RectList;
.super Ljava/lang/Object;
.source "RectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;,
        Lcom/iiordanov/android/drawing/RectList$OverlapType;,
        Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x40

.field static final BOTTOM_LEFT:I = 0x80

.field static final BOTTOM_RIGHT:I = 0x20

.field static final LEFT:I = 0x1

.field static final MAXLEVELS:I = 0x14

.field static final RIGHT:I = 0x10

.field static final TOP:I = 0x4

.field static final TOP_LEFT:I = 0x2

.field static final TOP_RIGHT:I = 0x8


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private listRectsPool:Lcom/iiordanov/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iiordanov/util/ObjectPool<",
            "Ljava/util/ArrayList<",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "Landroid/graphics/Rect;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

.field private nonOverlappingRectsPool:Lcom/iiordanov/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iiordanov/util/ObjectPool<",
            "Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;",
            ">;"
        }
    .end annotation
.end field

.field private pool:Lcom/iiordanov/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iiordanov/util/ObjectPool<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iiordanov/util/ObjectPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iiordanov/util/ObjectPool<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Lcom/iiordanov/android/drawing/RectList$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/android/drawing/RectList$1;-><init>(Lcom/iiordanov/android/drawing/RectList;)V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingRectsPool:Lcom/iiordanov/util/ObjectPool;

    .line 331
    new-instance v0, Lcom/iiordanov/android/drawing/RectList$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/android/drawing/RectList$2;-><init>(Lcom/iiordanov/android/drawing/RectList;)V

    iput-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->listRectsPool:Lcom/iiordanov/util/ObjectPool;

    .line 345
    iput-object p1, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    .line 346
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    .line 347
    new-instance p1, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    invoke-direct {p1}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    return-void
.end method

.method private recursiveAdd(Lcom/iiordanov/util/ObjectPool$Entry;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "Landroid/graphics/Rect;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x14

    if-lt p2, v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 381
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 385
    iget-object v1, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iiordanov/util/ObjectPool$Entry;

    .line 386
    invoke-virtual {v1}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 387
    sget-object v3, Lcom/iiordanov/android/drawing/RectList$3;->$SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType:[I

    iget-object v4, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    invoke-virtual {v4, v2, v0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->overlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/iiordanov/android/drawing/RectList$OverlapType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iiordanov/android/drawing/RectList$OverlapType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 408
    :pswitch_0
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {p2, p1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    .line 409
    iget-object p1, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingRectsPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {p1}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;

    .line 411
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    iget-object v1, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    iget v2, v0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r2Owns:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->Populate(Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;Lcom/iiordanov/util/ObjectPool;I)V

    move v0, v3

    .line 412
    :goto_0
    iget v1, p2, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->count:I

    if-ge v0, v1, :cond_2

    .line 414
    iget-object v1, p2, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->rectEntries:[Lcom/iiordanov/util/ObjectPool$Entry;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v3}, Lcom/iiordanov/android/drawing/RectList;->recursiveAdd(Lcom/iiordanov/util/ObjectPool$Entry;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_2
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingRectsPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {p2, p1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    goto :goto_1

    .line 402
    :pswitch_1
    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v2, v1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    .line 403
    iget-object v1, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    iget-object p2, p2, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->coalesced:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 405
    invoke-direct {p0, p1, v3}, Lcom/iiordanov/android/drawing/RectList;->recursiveAdd(Lcom/iiordanov/util/ObjectPool$Entry;I)V

    goto :goto_1

    .line 397
    :pswitch_2
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v0, v1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    .line 398
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/iiordanov/android/drawing/RectList;->recursiveAdd(Lcom/iiordanov/util/ObjectPool$Entry;I)V

    goto :goto_1

    .line 394
    :pswitch_3
    iget-object p2, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {p2, p1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    goto :goto_1

    :pswitch_4
    add-int/lit8 p2, p2, 0x1

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/iiordanov/android/drawing/RectList;->recursiveAdd(Lcom/iiordanov/util/ObjectPool$Entry;I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public add(Landroid/graphics/Rect;)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v0}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 430
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 432
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/iiordanov/android/drawing/RectList;->recursiveAdd(Lcom/iiordanov/util/ObjectPool$Entry;I)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iiordanov/util/ObjectPool$Entry;

    .line 368
    iget-object v2, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v2, v1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public get(I)Landroid/graphics/Rect;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/util/ObjectPool$Entry;

    invoke-virtual {p1}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public intersect(Landroid/graphics/Rect;)V
    .locals 7

    .line 445
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 446
    iget-object v1, p0, Lcom/iiordanov/android/drawing/RectList;->listRectsPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v1}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 448
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 451
    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iiordanov/util/ObjectPool$Entry;

    .line 452
    invoke-virtual {v5}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 453
    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 458
    :cond_0
    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v6, v5}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 460
    :cond_1
    iget-object p1, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 461
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v3

    :goto_2
    if-ge v0, p1, :cond_2

    .line 465
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iiordanov/util/ObjectPool$Entry;

    invoke-direct {p0, v4, v3}, Lcom/iiordanov/android/drawing/RectList;->recursiveAdd(Lcom/iiordanov/util/ObjectPool$Entry;I)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 470
    :cond_2
    iget-object p1, p0, Lcom/iiordanov/android/drawing/RectList;->listRectsPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {p1, v1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    return-void
.end method

.method public subtract(Landroid/graphics/Rect;)V
    .locals 11

    .line 496
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/iiordanov/android/drawing/RectList;->listRectsPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v1}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 499
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_7

    .line 502
    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iiordanov/util/ObjectPool$Entry;

    .line 503
    invoke-virtual {v5}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 504
    sget-object v7, Lcom/iiordanov/android/drawing/RectList$3;->$SwitchMap$com$iiordanov$android$drawing$RectList$OverlapType:[I

    iget-object v8, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    invoke-virtual {v8, v6, p1}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->overlap(Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/iiordanov/android/drawing/RectList$OverlapType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iiordanov/android/drawing/RectList$OverlapType;->ordinal()I

    move-result v6

    aget v6, v7, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    goto :goto_2

    .line 520
    :cond_0
    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    iget-boolean v6, v6, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->verticalOverlap:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    iget-boolean v6, v6, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->horizontalOverlap:Z

    if-nez v6, :cond_2

    goto :goto_2

    .line 512
    :cond_1
    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v6, v5}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    .line 513
    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 523
    :cond_2
    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    invoke-virtual {v6}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->setCornerOwnership()V

    .line 526
    :cond_3
    iget-object v6, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingRectsPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v6}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v6

    .line 527
    invoke-virtual {v6}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;

    .line 528
    iget-object v8, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingPortion:Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;

    iget-object v9, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    iget v10, v8, Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;->r1Owns:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->Populate(Lcom/iiordanov/android/drawing/RectList$NonOverlappingPortion;Lcom/iiordanov/util/ObjectPool;I)V

    .line 529
    iget-object v8, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v8, v5}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    .line 530
    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v0, -0x1

    move v5, v3

    .line 533
    :goto_1
    iget v8, v7, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->count:I

    if-ge v5, v8, :cond_4

    .line 535
    iget-object v8, v7, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;->rectEntries:[Lcom/iiordanov/util/ObjectPool$Entry;

    aget-object v8, v8, v5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 537
    :cond_4
    iget-object v5, p0, Lcom/iiordanov/android/drawing/RectList;->nonOverlappingRectsPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {v5, v6}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 507
    :cond_6
    iget-object p1, p0, Lcom/iiordanov/android/drawing/RectList;->pool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {p1, v5}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    .line 508
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 509
    iget-object p1, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 541
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v3

    :goto_3
    if-ge v0, p1, :cond_8

    .line 545
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iiordanov/util/ObjectPool$Entry;

    invoke-direct {p0, v4, v3}, Lcom/iiordanov/android/drawing/RectList;->recursiveAdd(Lcom/iiordanov/util/ObjectPool$Entry;I)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 550
    :cond_8
    iget-object p1, p0, Lcom/iiordanov/android/drawing/RectList;->listRectsPool:Lcom/iiordanov/util/ObjectPool;

    invoke-virtual {p1, v1}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    return-void
.end method

.method public testIntersect(Landroid/graphics/Rect;)Z
    .locals 8

    .line 480
    iget-object v0, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 484
    iget-object v3, p0, Lcom/iiordanov/android/drawing/RectList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iiordanov/util/ObjectPool$Entry;

    invoke-virtual {v3}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 560
    :goto_0
    invoke-virtual {p0}, Lcom/iiordanov/android/drawing/RectList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 562
    invoke-virtual {p0, v1}, Lcom/iiordanov/android/drawing/RectList;->get(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
