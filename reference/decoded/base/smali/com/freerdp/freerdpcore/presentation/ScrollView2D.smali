.class public Lcom/freerdp/freerdpcore/presentation/ScrollView2D;
.super Landroid/widget/FrameLayout;
.source "ScrollView2D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScroller:Landroid/widget/Scroller;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTwoDScrollViewMovedFocus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private scrollEnabled:Z

.field private scrollView2DListener:Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollView2DListener:Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollEnabled:Z

    .line 82
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsLayoutDirty:Z

    .line 88
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mChildToScrollTo:Landroid/view/View;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsBeingDragged:Z

    .line 108
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->initTwoDScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollView2DListener:Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;

    const/4 p2, 0x1

    .line 66
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollEnabled:Z

    .line 82
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsLayoutDirty:Z

    .line 88
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mChildToScrollTo:Landroid/view/View;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsBeingDragged:Z

    .line 114
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->initTwoDScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollView2DListener:Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;

    const/4 p2, 0x1

    .line 66
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollEnabled:Z

    .line 82
    iput-boolean p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsLayoutDirty:Z

    .line 88
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mChildToScrollTo:Landroid/view/View;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsBeingDragged:Z

    .line 120
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->initTwoDScrollView()V

    return-void
.end method

.method private canScroll()Z
    .locals 5

    .line 258
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 260
    :cond_0
    invoke-virtual {p0, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 265
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    if-lt v3, v2, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    if-ge v2, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private clamp(III)I
    .locals 1

    if-ge p2, p3, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    sub-int/2addr p3, p2

    return p3

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private doScroll(II)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 880
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZIIZII)Landroid/view/View;
    .locals 18

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x2

    move-object/from16 v5, p0

    .line 598
    invoke-virtual {v5, v4}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 610
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v6, :cond_b

    .line 613
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 614
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    .line 615
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 616
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 617
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v15

    if-ge v0, v13, :cond_a

    if-ge v12, v1, :cond_a

    if-ge v2, v15, :cond_a

    if-ge v14, v3, :cond_a

    const/16 v16, 0x1

    if-ge v0, v12, :cond_0

    if-ge v13, v1, :cond_0

    if-ge v2, v14, :cond_0

    if-ge v15, v3, :cond_0

    move/from16 v17, v16

    goto :goto_1

    :cond_0
    const/16 v17, 0x0

    :goto_1
    if-nez v7, :cond_1

    move-object v7, v11

    move/from16 v10, v17

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_2

    .line 636
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v12, v8, :cond_3

    :cond_2
    if-nez p1, :cond_4

    .line 637
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-le v13, v8, :cond_4

    :cond_3
    move/from16 v8, v16

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-eqz p4, :cond_5

    .line 639
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v12

    if-lt v14, v12, :cond_6

    :cond_5
    if-nez p4, :cond_7

    .line 640
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v15, v12, :cond_7

    :cond_6
    move/from16 v12, v16

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    if-eqz v10, :cond_8

    if-eqz v17, :cond_a

    if-eqz v8, :cond_a

    if-eqz v12, :cond_a

    goto :goto_4

    :cond_8
    if-eqz v17, :cond_9

    move-object v7, v11

    move/from16 v10, v16

    goto :goto_5

    :cond_9
    if-eqz v8, :cond_a

    if-eqz v12, :cond_a

    :goto_4
    move-object v7, v11

    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_b
    return-object v7
.end method

.method private findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;
    .locals 8

    .line 562
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getVerticalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v3, p2, v0

    .line 564
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    sub-int v4, p2, v0

    .line 565
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHorizontalFadingEdgeLength()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int v6, p4, p2

    .line 567
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sub-int v7, p4, p2

    if-eqz p5, :cond_0

    .line 570
    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p2

    if-ge p2, v4, :cond_0

    .line 571
    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p2

    if-le p2, v3, :cond_0

    .line 572
    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result p2

    if-ge p2, v7, :cond_0

    .line 573
    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p2

    if-le p2, v6, :cond_0

    return-object p5

    :cond_0
    move-object v1, p0

    move v2, p1

    move v5, p3

    .line 577
    invoke-direct/range {v1 .. v7}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private initTwoDScrollView()V
    .locals 2

    .line 207
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 209
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->setWillNotDraw(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTouchSlop:I

    .line 213
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mMinimumVelocity:I

    .line 214
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mMaximumVelocity:I

    return-void
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 1233
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1234
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scrollAndFocus(IIIIII)Z
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p6

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v0

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v13

    add-int v14, v13, v0

    const/16 v16, 0x1

    const/16 v0, 0x21

    if-ne v8, v0, :cond_0

    move/from16 v17, v16

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    .line 750
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v1

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v6

    add-int v5, v6, v1

    move/from16 v1, p4

    if-ne v1, v0, :cond_1

    move/from16 v18, v16

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v18

    move v15, v5

    move/from16 v5, p5

    move v8, v6

    move/from16 v6, p6

    .line 754
    invoke-direct/range {v0 .. v6}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->findFocusableViewInBounds(ZIIZII)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v7

    :cond_2
    if-lt v9, v13, :cond_3

    if-le v10, v14, :cond_4

    :cond_3
    if-lt v11, v8, :cond_5

    if-gt v12, v15, :cond_5

    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    :cond_5
    if-eqz v17, :cond_6

    sub-int v1, v9, v13

    goto :goto_2

    :cond_6
    sub-int v1, v10, v14

    :goto_2
    if-eqz v18, :cond_7

    sub-int v2, v11, v8

    goto :goto_3

    :cond_7
    sub-int v2, v12, v15

    .line 768
    :goto_3
    invoke-direct {v7, v2, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->doScroll(II)V

    .line 770
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_8

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 773
    iput-boolean v0, v7, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTwoDScrollViewMovedFocus:Z

    :cond_8
    return v16
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1019
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1020
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1023
    invoke-virtual {p0, v0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1037
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 1043
    invoke-virtual {p0, v0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollBy(II)V

    goto :goto_1

    .line 1047
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 223
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "TwoDScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwoDScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 250
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 248
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwoDScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 241
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TwoDScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public arrowScroll(IZ)Z
    .locals 5

    .line 787
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 790
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getMaxScrollAmountHorizontal()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getMaxScrollAmountVertical()I

    move-result v1

    :goto_0
    const/16 v2, 0x21

    const/16 v3, 0x82

    const/4 v4, 0x0

    if-nez p2, :cond_7

    if-eqz v0, :cond_2

    .line 798
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 799
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 800
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p2

    .line 801
    invoke-direct {p0, v4, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->doScroll(II)V

    .line 802
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    goto/16 :goto_5

    :cond_2
    if-ne p1, v2, :cond_3

    .line 808
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result p2

    if-ge p2, v1, :cond_3

    .line 810
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v1

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    .line 814
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4

    .line 816
    invoke-virtual {p0, v4}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 817
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr p2, v0

    if-ge p2, v1, :cond_4

    move v1, p2

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    return v4

    :cond_5
    if-ne p1, v3, :cond_6

    goto :goto_2

    :cond_6
    neg-int v1, v1

    .line 828
    :goto_2
    invoke-direct {p0, v4, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->doScroll(II)V

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    .line 835
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 836
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 837
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p2

    .line 838
    invoke-direct {p0, p2, v4}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->doScroll(II)V

    .line 839
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_5

    :cond_8
    if-ne p1, v2, :cond_9

    .line 845
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result p2

    if-ge p2, v1, :cond_9

    .line 847
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v1

    goto :goto_3

    :cond_9
    if-ne p1, v3, :cond_a

    .line 851
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a

    .line 853
    invoke-virtual {p0, v4}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    .line 854
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr p2, v0

    if-ge p2, v1, :cond_a

    move v1, p2

    :cond_a
    :goto_3
    if-nez v1, :cond_b

    return v4

    :cond_b
    if-ne p1, v3, :cond_c

    goto :goto_4

    :cond_c
    neg-int v1, v1

    .line 865
    :goto_4
    invoke-direct {p0, v1, v4}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->doScroll(II)V

    :goto_5
    const/4 p1, 0x1

    return p1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public computeScroll()V
    .locals 7

    .line 966
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 984
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v0

    .line 985
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v1

    .line 986
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 987
    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 988
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 990
    invoke-virtual {p0, v4}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 992
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->clamp(III)I

    move-result v2

    .line 993
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 994
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 993
    invoke-direct {p0, v3, v5, v4}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->clamp(III)I

    move-result v3

    .line 991
    invoke-virtual {p0, v2, v3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollTo(II)V

    goto :goto_0

    .line 998
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollTo(II)V

    .line 1000
    :goto_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1002
    :cond_1
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->onScrollChanged(IIII)V

    .line 1006
    :cond_2
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->postInvalidate()V

    :cond_3
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    .line 1063
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v0

    .line 1066
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 1068
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1070
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    .line 1076
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    sub-int/2addr v3, v4

    .line 1081
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4

    .line 1086
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1089
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_0

    .line 1094
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    .line 1098
    :goto_0
    invoke-virtual {p0, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1100
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 1102
    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_6

    .line 1108
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_5

    .line 1111
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_1

    .line 1116
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1120
    :goto_1
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_2
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 927
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 274
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 293
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->canScroll()Z

    move-result v0

    const/16 v1, 0x82

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    .line 301
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 303
    invoke-virtual {p1, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    :cond_2
    return v3

    .line 308
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 310
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 343
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    const/16 v0, 0x42

    if-nez p1, :cond_4

    .line 345
    invoke-virtual {p0, v0, v2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 349
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->fullScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 333
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    const/16 v0, 0x11

    if-nez p1, :cond_5

    .line 335
    invoke-virtual {p0, v0, v2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 339
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->fullScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 323
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 325
    invoke-virtual {p0, v1, v3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 329
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->fullScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 313
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    const/16 v0, 0x21

    if-nez p1, :cond_7

    .line 315
    invoke-virtual {p0, v0, v3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->arrowScroll(IZ)Z

    move-result v3

    goto :goto_1

    .line 319
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->fullScroll(IZ)Z

    move-result v3

    :cond_8
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(II)V
    .locals 17

    move-object/from16 v6, p0

    .line 1246
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v7, 0x0

    .line 1249
    invoke-virtual {v6, v7}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1251
    invoke-virtual {v6, v7}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1253
    iget-object v8, v6, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v10

    sub-int v14, v3, v2

    const/4 v15, 0x0

    sub-int v16, v1, v0

    const/4 v13, 0x0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v8 .. v16}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-lez p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v7

    .line 1259
    :goto_1
    iget-object v0, v6, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    .line 1260
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v0, v6, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move v3, v8

    .line 1259
    invoke-direct/range {v0 .. v5}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->findFocusableViewInMyBounds(ZIZILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v6

    .line 1266
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_4

    if-eqz v8, :cond_3

    const/16 v1, 0x82

    goto :goto_2

    :cond_3
    const/16 v1, 0x21

    .line 1267
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1270
    iput-boolean v7, v6, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTwoDScrollViewMovedFocus:Z

    .line 1273
    :cond_4
    iget-object v0, v6, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->awakenScrollBars(I)Z

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->invalidate()V

    :cond_5
    return-void
.end method

.method public fullScroll(IZ)Z
    .locals 7

    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    if-ne p1, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 694
    :goto_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v0

    .line 695
    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 696
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz p2, :cond_1

    .line 699
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    sub-int/2addr p2, v1

    .line 702
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 703
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 704
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 707
    :cond_1
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollAndFocus(IIIIII)Z

    move-result p1

    return p1

    :cond_2
    if-ne p1, v0, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v2

    .line 712
    :goto_1
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v0

    .line 713
    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 714
    iget-object v2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_4

    .line 717
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4

    sub-int/2addr p2, v1

    .line 720
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 721
    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iput p2, v1, Landroid/graphics/Rect;->right:I

    .line 722
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 725
    :cond_4
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollAndFocus(IIIIII)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 144
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0, v2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxScrollAmountHorizontal()I
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMaxScrollAmountVertical()I
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 174
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 130
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 945
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 944
    invoke-static {p2, v0, p3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    .line 946
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 948
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    .line 955
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 956
    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    .line 957
    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 958
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, p2

    .line 959
    invoke-static {p5, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 961
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 369
    iget-boolean v3, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v1

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->canScroll()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 375
    iput-boolean v4, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsBeingDragged:Z

    return v4

    .line 378
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_0

    .line 391
    :cond_2
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionY:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 392
    iget v2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionX:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 393
    iget v2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTouchSlop:I

    if-gt v0, v2, :cond_3

    if-le p1, v2, :cond_6

    .line 395
    :cond_3
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsBeingDragged:Z

    goto :goto_0

    .line 415
    :cond_4
    iput-boolean v4, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsBeingDragged:Z

    goto :goto_0

    .line 401
    :cond_5
    iput v3, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionY:F

    .line 402
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionX:F

    .line 409
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsBeingDragged:Z

    .line 423
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsBeingDragged:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1192
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 1193
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsLayoutDirty:Z

    .line 1195
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mChildToScrollTo:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1197
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 1199
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mChildToScrollTo:Landroid/view/View;

    .line 1202
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1164
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1165
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 1173
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 1338
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 1339
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollView2DListener:Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1341
    invoke-interface/range {v0 .. v5}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;->onScrollChanged(Lcom/freerdp/freerdpcore/presentation/ScrollView2D;IIII)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1209
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1216
    :cond_0
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1217
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1218
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1219
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p2

    .line 1220
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->doScroll(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->canScroll()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 443
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v3, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    goto/16 :goto_2

    .line 469
    :cond_3
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    .line 470
    iget v4, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionY:F

    sub-float/2addr v4, v2

    float-to-int v4, v4

    .line 471
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionX:F

    .line 472
    iput v2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionY:F

    if-gez v0, :cond_5

    .line 476
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result p1

    if-gez p1, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-lez v0, :cond_6

    .line 483
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 485
    invoke-virtual {p0, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, p1

    if-lez v2, :cond_4

    .line 488
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_6
    :goto_0
    if-gez v4, :cond_7

    .line 497
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result p1

    if-gez p1, :cond_8

    goto :goto_1

    :cond_7
    if-lez v4, :cond_8

    .line 504
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    .line 506
    invoke-virtual {p0, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, p1

    if-lez v2, :cond_9

    .line 509
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_8
    move v1, v4

    :cond_9
    :goto_1
    if-nez v1, :cond_a

    if-eqz v0, :cond_f

    .line 517
    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollBy(II)V

    goto :goto_2

    .line 520
    :cond_b
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 521
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mMaximumVelocity:I

    int-to-float v0, v0

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 522
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 523
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 524
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mMinimumVelocity:I

    if-le v1, v2, :cond_c

    .line 525
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v1

    if-lez v1, :cond_c

    neg-int v0, v0

    neg-int p1, p1

    .line 527
    invoke-virtual {p0, v0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->fling(II)V

    .line 529
    :cond_c
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    .line 531
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 532
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 458
    :cond_d
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 460
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 464
    :cond_e
    iput v2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionY:F

    .line 465
    iput p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastMotionX:F

    :cond_f
    :goto_2
    return v3
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1127
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mTwoDScrollViewMovedFocus:Z

    if-nez v0, :cond_1

    .line 1129
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1131
    invoke-direct {p0, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 1136
    :cond_0
    iput-object p2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mChildToScrollTo:Landroid/view/View;

    .line 1139
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1180
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1181
    invoke-direct {p0, p2, p3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1186
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mIsLayoutDirty:Z

    .line 1187
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    .line 1286
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 1288
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1289
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->clamp(III)I

    move-result p1

    .line 1290
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v1, v0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->clamp(III)I

    move-result p2

    .line 1291
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 1293
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollEnabled:Z

    return-void
.end method

.method public setScrollViewListener(Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;)V
    .locals 0

    .line 1333
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollView2DListener:Lcom/freerdp/freerdpcore/presentation/ScrollView2D$ScrollView2DListener;

    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 4

    .line 892
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 896
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->awakenScrollBars(I)Z

    .line 897
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->invalidate()V

    goto :goto_0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 905
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollBy(II)V

    .line 907
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    .line 918
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->smoothScrollBy(II)V

    return-void
.end method
