.class public Lcom/iiordanov/android/drawing/OverlappingCopy;
.super Ljava/lang/Object;
.source "OverlappingCopy.java"


# static fields
.field private static ocRectPool:Lcom/iiordanov/util/SafeObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iiordanov/util/SafeObjectPool<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/iiordanov/android/drawing/OverlappingCopy$1;

    invoke-direct {v0}, Lcom/iiordanov/android/drawing/OverlappingCopy$1;-><init>()V

    sput-object v0, Lcom/iiordanov/android/drawing/OverlappingCopy;->ocRectPool:Lcom/iiordanov/util/SafeObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Copy(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;II)V
    .locals 7

    .line 36
    sget-object v6, Lcom/iiordanov/android/drawing/OverlappingCopy;->ocRectPool:Lcom/iiordanov/util/SafeObjectPool;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/iiordanov/android/drawing/OverlappingCopy;->Copy(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;IILcom/iiordanov/util/ObjectPool;)V

    return-void
.end method

.method public static Copy(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;IILcom/iiordanov/util/ObjectPool;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Rect;",
            "II",
            "Lcom/iiordanov/util/ObjectPool<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    .line 41
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, p4, v2

    .line 42
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v10, p5, v3

    if-gez v2, :cond_0

    neg-int v3, v2

    move v11, v3

    goto :goto_0

    :cond_0
    move v11, v2

    :goto_0
    if-gez v10, :cond_1

    neg-int v3, v10

    move v12, v3

    goto :goto_1

    :cond_1
    move v12, v10

    :goto_1
    if-nez v11, :cond_2

    if-nez v12, :cond_2

    return-void

    .line 50
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-ge v11, v3, :cond_b

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-lt v12, v3, :cond_3

    goto/16 :goto_6

    .line 61
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v13

    .line 62
    invoke-virtual {v13}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/Rect;

    .line 63
    invoke-static {v0, v14, v2, v10}, Lcom/iiordanov/android/drawing/OverlappingCopy;->transformRect(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 64
    invoke-virtual/range {p6 .. p6}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v15

    .line 65
    invoke-virtual {v15}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v3, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 67
    invoke-virtual {v3, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 68
    invoke-virtual/range {p6 .. p6}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v9

    .line 69
    invoke-virtual {v9}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/graphics/Rect;

    .line 70
    invoke-virtual {v8, v14, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    if-le v11, v12, :cond_4

    .line 78
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v12

    move/from16 v16, v3

    move v0, v11

    goto :goto_2

    .line 82
    :cond_4
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v11

    move v0, v3

    move/from16 v16, v12

    .line 86
    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v7

    .line 87
    invoke-virtual {v7}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/graphics/Rect;

    .line 88
    invoke-virtual/range {p6 .. p6}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v5

    .line 89
    invoke-virtual {v5}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    move/from16 v3, v18

    move/from16 v19, v3

    :goto_3
    if-nez v3, :cond_8

    .line 93
    iget v4, v8, Landroid/graphics/Rect;->right:I

    mul-int v20, v19, v0

    sub-int v4, v4, v20

    move/from16 p3, v3

    sub-int v3, v4, v0

    move/from16 p4, v0

    .line 95
    iget v0, v8, Landroid/graphics/Rect;->left:I

    const/16 v20, 0x1

    if-gt v3, v0, :cond_5

    .line 97
    iget v3, v8, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    goto :goto_4

    :cond_5
    move/from16 v0, p3

    :goto_4
    move/from16 v21, v18

    move/from16 v22, v21

    :goto_5
    if-nez v21, :cond_7

    move/from16 p3, v0

    .line 103
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    mul-int v23, v22, v16

    sub-int v0, v0, v23

    move-object/from16 p5, v5

    sub-int v5, v0, v16

    move-object/from16 v23, v7

    .line 105
    iget v7, v8, Landroid/graphics/Rect;->top:I

    if-gt v5, v7, :cond_6

    .line 107
    iget v5, v8, Landroid/graphics/Rect;->top:I

    move/from16 v21, v20

    .line 110
    :cond_6
    invoke-virtual {v6, v3, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    move v0, v3

    move-object v3, v6

    move/from16 v24, v4

    move-object/from16 v4, v17

    move-object/from16 v7, p5

    move v5, v2

    move/from16 p5, v0

    move-object v0, v6

    move v6, v10

    move-object/from16 v25, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v15

    move-object v15, v7

    move-object/from16 v7, p0

    move-object/from16 v26, v13

    move-object v13, v8

    move-object/from16 v8, p1

    move-object/from16 v27, v9

    move-object/from16 v9, p2

    .line 112
    invoke-static/range {v3 .. v9}, Lcom/iiordanov/android/drawing/OverlappingCopy;->copyTransformedRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    add-int/lit8 v22, v22, 0x1

    move/from16 v3, p5

    move-object v6, v0

    move-object v8, v13

    move-object v5, v15

    move-object/from16 v15, v23

    move/from16 v4, v24

    move-object/from16 v13, v25

    move-object/from16 v7, v26

    move-object/from16 v9, v27

    move/from16 v0, p3

    goto :goto_5

    :cond_7
    move/from16 p3, v0

    move-object v0, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    move-object v15, v5

    move-object v13, v8

    add-int/lit8 v19, v19, 0x1

    move/from16 v3, p3

    move-object/from16 v15, v23

    move-object/from16 v13, v25

    move/from16 v0, p4

    goto/16 :goto_3

    :cond_8
    move-object v0, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v9

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    move-object v15, v5

    move-object v13, v8

    if-lez v11, :cond_9

    .line 118
    iget v3, v14, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    iget v6, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object v3, v0

    move-object/from16 v4, v17

    move v5, v2

    move v6, v10

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 119
    invoke-static/range {v3 .. v9}, Lcom/iiordanov/android/drawing/OverlappingCopy;->copyTransformedRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_9
    if-lez v12, :cond_a

    .line 124
    iget v3, v13, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    iget v5, v14, Landroid/graphics/Rect;->right:I

    iget v6, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object v3, v0

    move-object/from16 v4, v17

    move v5, v2

    move v6, v10

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 125
    invoke-static/range {v3 .. v9}, Lcom/iiordanov/android/drawing/OverlappingCopy;->copyTransformedRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 128
    :cond_a
    invoke-virtual {v1, v15}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    move-object/from16 v0, v26

    .line 129
    invoke-virtual {v1, v0}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    move-object/from16 v0, v27

    .line 130
    invoke-virtual {v1, v0}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    move-object/from16 v0, v23

    .line 131
    invoke-virtual {v1, v0}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    move-object/from16 v0, v25

    .line 132
    invoke-virtual {v1, v0}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    return-void

    .line 53
    :cond_b
    :goto_6
    invoke-virtual/range {p6 .. p6}, Lcom/iiordanov/util/ObjectPool;->reserve()Lcom/iiordanov/util/ObjectPool$Entry;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/iiordanov/util/ObjectPool$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 55
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v10

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v10

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 56
    invoke-virtual {v5, v2, v0, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 57
    invoke-virtual {v1, v3}, Lcom/iiordanov/util/ObjectPool;->release(Lcom/iiordanov/util/ObjectPool$Entry;)V

    return-void
.end method

.method private static copyTransformedRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 29
    invoke-static {p0, p0, p2, p3}, Lcom/iiordanov/android/drawing/OverlappingCopy;->transformRect(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 30
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 31
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 32
    invoke-virtual {p5, p4, p0, p1, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static transformRect(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 2

    if-gez p2, :cond_0

    .line 22
    iget v0, p0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    :goto_0
    if-gez p3, :cond_1

    .line 23
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/graphics/Rect;->top:I

    :goto_1
    if-gez p2, :cond_2

    .line 24
    iget p2, p0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->right:I

    :goto_2
    if-gez p3, :cond_3

    .line 25
    iget p0, p0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 p0, p0, -0x1

    goto :goto_3

    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 22
    :goto_3
    invoke-virtual {p1, v0, v1, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
