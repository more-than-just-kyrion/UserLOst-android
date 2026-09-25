.class Lcom/termux/view/TerminalView$HandleView;
.super Landroid/view/View;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/view/TerminalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleView"
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2


# instance fields
.field private mContainer:Landroid/widget/PopupWindow;

.field private mController:Lcom/termux/view/TerminalView$CursorController;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleHeight:I

.field mHandleWidth:I

.field private mHotspotX:F

.field private mHotspotY:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mLastTime:J

.field private mOrientation:I

.field private final mOrigOrient:I

.field private mPointX:I

.field private mPointY:I

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Lcom/termux/view/TerminalView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandleHeight(Lcom/termux/view/TerminalView$HandleView;)I
    .locals 0

    iget p0, p0, Lcom/termux/view/TerminalView$HandleView;->mHandleHeight:I

    return p0
.end method

.method public constructor <init>(Lcom/termux/view/TerminalView;Lcom/termux/view/TerminalView$CursorController;I)V
    .locals 2

    .line 914
    iput-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    .line 915
    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 916
    iput-object p2, p0, Lcom/termux/view/TerminalView$HandleView;->mController:Lcom/termux/view/TerminalView$CursorController;

    .line 917
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x10102c8

    invoke-direct {p2, p1, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 p1, 0x1

    .line 919
    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 920
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 921
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 p2, 0x3ea

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 922
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 923
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 925
    iput p3, p0, Lcom/termux/view/TerminalView$HandleView;->mOrigOrient:I

    .line 926
    invoke-virtual {p0, p3}, Lcom/termux/view/TerminalView$HandleView;->setOrientation(I)V

    return-void
.end method

.method private checkChangedOrientation(IZ)V
    .locals 6

    .line 1002
    iget-boolean v0, p0, Lcom/termux/view/TerminalView$HandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 1005
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 1006
    iget-wide v2, p0, Lcom/termux/view/TerminalView$HandleView;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 1009
    :cond_1
    iput-wide v0, p0, Lcom/termux/view/TerminalView$HandleView;->mLastTime:J

    .line 1011
    iget-object p2, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    .line 1012
    invoke-virtual {p2}, Lcom/termux/view/TerminalView;->getLeft()I

    move-result v0

    .line 1013
    invoke-virtual {p2}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v1

    .line 1014
    invoke-virtual {p2}, Lcom/termux/view/TerminalView;->getTop()I

    move-result v2

    .line 1015
    invoke-virtual {p2}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v3

    .line 1017
    iget-object v4, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mTempRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 1018
    iget-object v4, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Lcom/termux/view/TerminalView;->mTempRect:Landroid/graphics/Rect;

    .line 1020
    :cond_2
    iget-object v4, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mTempRect:Landroid/graphics/Rect;

    .line 1021
    iget-object v5, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v5}, Lcom/termux/view/TerminalView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1022
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getPaddingTop()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 1023
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 1024
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 1026
    invoke-virtual {p2}, Lcom/termux/view/TerminalView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 1027
    invoke-interface {v0, p2, v4, v1}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 1031
    :cond_3
    iget p2, p0, Lcom/termux/view/TerminalView$HandleView;->mHandleWidth:I

    sub-int p2, p1, p2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    if-ge p2, v0, :cond_4

    const/4 p1, 0x2

    .line 1032
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView$HandleView;->changeOrientation(I)V

    goto :goto_0

    .line 1033
    :cond_4
    iget p2, p0, Lcom/termux/view/TerminalView$HandleView;->mHandleWidth:I

    add-int/2addr p1, p2

    iget p2, v4, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_5

    const/4 p1, 0x0

    .line 1034
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView$HandleView;->changeOrientation(I)V

    goto :goto_0

    .line 1036
    :cond_5
    iget p1, p0, Lcom/termux/view/TerminalView$HandleView;->mOrigOrient:I

    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView$HandleView;->changeOrientation(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private isPositionVisible()Z
    .locals 6

    .line 1042
    iget-boolean v0, p0, Lcom/termux/view/TerminalView$HandleView;->mIsDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    .line 1048
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v2

    .line 1050
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v3

    .line 1052
    iget-object v4, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mTempRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 1053
    iget-object v4, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Lcom/termux/view/TerminalView;->mTempRect:Landroid/graphics/Rect;

    .line 1055
    :cond_1
    iget-object v4, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mTempRect:Landroid/graphics/Rect;

    .line 1056
    iget-object v5, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v5}, Lcom/termux/view/TerminalView;->getPaddingLeft()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1057
    iget-object v5, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v5}, Lcom/termux/view/TerminalView;->getPaddingTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1058
    iget-object v5, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v5}, Lcom/termux/view/TerminalView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 1059
    iget-object v2, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 1061
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v5, 0x0

    .line 1062
    invoke-interface {v2, v0, v4, v5}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1066
    :cond_2
    iget-object v2, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mTempCoords:[I

    .line 1067
    invoke-virtual {v0, v2}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 1068
    aget v0, v2, v3

    iget v5, p0, Lcom/termux/view/TerminalView$HandleView;->mPointX:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/termux/view/TerminalView$HandleView;->mHotspotX:F

    float-to-int v5, v5

    add-int/2addr v0, v5

    .line 1069
    aget v2, v2, v1

    iget v5, p0, Lcom/termux/view/TerminalView$HandleView;->mPointY:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/termux/view/TerminalView$HandleView;->mHotspotY:F

    float-to-int v5, v5

    add-int/2addr v2, v5

    .line 1071
    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-lt v0, v5, :cond_3

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-gt v0, v5, :cond_3

    iget v0, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v0, :cond_3

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    return v1

    :cond_4
    :goto_1
    return v3
.end method

.method private moveTo(IIZ)V
    .locals 5

    .line 1076
    iget v0, p0, Lcom/termux/view/TerminalView$HandleView;->mHotspotX:F

    .line 1077
    invoke-direct {p0, p1, p3}, Lcom/termux/view/TerminalView$HandleView;->checkChangedOrientation(IZ)V

    int-to-float p1, p1

    .line 1078
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/termux/view/TerminalView$HandleView;->mHotspotX:F

    :goto_0
    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/termux/view/TerminalView$HandleView;->mPointX:I

    .line 1079
    iput p2, p0, Lcom/termux/view/TerminalView$HandleView;->mPointY:I

    .line 1080
    invoke-direct {p0}, Lcom/termux/view/TerminalView$HandleView;->isPositionVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1082
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->isShowing()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 1083
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mTempCoords:[I

    .line 1084
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 1085
    aget v0, p1, p2

    iget v1, p0, Lcom/termux/view/TerminalView$HandleView;->mPointX:I

    add-int/2addr v0, v1

    .line 1086
    aget v1, p1, p3

    iget v2, p0, Lcom/termux/view/TerminalView$HandleView;->mPointY:I

    add-int/2addr v1, v2

    .line 1087
    iget-object v2, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 1088
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->getHeight()I

    move-result v4

    .line 1087
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 1090
    :cond_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->show()V

    const/4 p1, 0x0

    .line 1093
    :goto_1
    iget-boolean v0, p0, Lcom/termux/view/TerminalView$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_2

    .line 1095
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mTempCoords:[I

    .line 1096
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 1098
    :cond_2
    aget p2, p1, p2

    iget v0, p0, Lcom/termux/view/TerminalView$HandleView;->mLastParentX:I

    if-ne p2, v0, :cond_3

    aget v1, p1, p3

    iget v2, p0, Lcom/termux/view/TerminalView$HandleView;->mLastParentY:I

    if-eq v1, v2, :cond_5

    .line 1099
    :cond_3
    iget v1, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchToWindowOffsetX:F

    sub-int v0, p2, v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchToWindowOffsetX:F

    .line 1100
    iget v0, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchToWindowOffsetY:F

    aget p1, p1, p3

    iget p3, p0, Lcom/termux/view/TerminalView$HandleView;->mLastParentY:I

    sub-int p3, p1, p3

    int-to-float p3, p3

    add-float/2addr v0, p3

    iput v0, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchToWindowOffsetY:F

    .line 1101
    iput p2, p0, Lcom/termux/view/TerminalView$HandleView;->mLastParentX:I

    .line 1102
    iput p1, p0, Lcom/termux/view/TerminalView$HandleView;->mLastParentY:I

    goto :goto_2

    .line 1106
    :cond_4
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1107
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->hide()V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public changeOrientation(I)V
    .locals 1

    .line 968
    iget v0, p0, Lcom/termux/view/TerminalView$HandleView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 969
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView$HandleView;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 993
    iput-boolean v0, p0, Lcom/termux/view/TerminalView$HandleView;->mIsDragging:Z

    .line 994
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 1161
    iget-boolean v0, p0, Lcom/termux/view/TerminalView$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1114
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1115
    iget-object v1, p0, Lcom/termux/view/TerminalView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1116
    iget-object v2, p0, Lcom/termux/view/TerminalView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1117
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 975
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Lcom/termux/view/TerminalView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 976
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView$HandleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1124
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0, p1}, Lcom/termux/view/TerminalView;->-$$Nest$mupdateFloatingToolbarVisibility(Lcom/termux/view/TerminalView;Landroid/view/MotionEvent;)V

    .line 1125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 1140
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 1143
    iget v1, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchToWindowOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/termux/view/TerminalView$HandleView;->mHotspotX:F

    add-float/2addr v0, v1

    .line 1144
    iget v1, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/termux/view/TerminalView$HandleView;->mHotspotY:F

    add-float/2addr p1, v1

    iget v1, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchOffsetY:F

    add-float/2addr p1, v1

    .line 1146
    iget-object v1, p0, Lcom/termux/view/TerminalView$HandleView;->mController:Lcom/termux/view/TerminalView$CursorController;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-interface {v1, p0, v0, p1}, Lcom/termux/view/TerminalView$CursorController;->updatePosition(Lcom/termux/view/TerminalView$HandleView;II)V

    goto :goto_0

    .line 1154
    :cond_1
    iput-boolean v1, p0, Lcom/termux/view/TerminalView$HandleView;->mIsDragging:Z

    goto :goto_0

    .line 1127
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 1129
    iget v3, p0, Lcom/termux/view/TerminalView$HandleView;->mPointX:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchToWindowOffsetX:F

    .line 1130
    iget v0, p0, Lcom/termux/view/TerminalView$HandleView;->mPointY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchToWindowOffsetY:F

    .line 1131
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mTempCoords:[I

    .line 1132
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    .line 1133
    aget v0, p1, v1

    iput v0, p0, Lcom/termux/view/TerminalView$HandleView;->mLastParentX:I

    .line 1134
    aget p1, p1, v2

    iput p1, p0, Lcom/termux/view/TerminalView$HandleView;->mLastParentY:I

    .line 1135
    iput-boolean v2, p0, Lcom/termux/view/TerminalView$HandleView;->mIsDragging:Z

    :goto_0
    return v2
.end method

.method positionAtCursor(IIZ)V
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0, p1}, Lcom/termux/view/TerminalView;->-$$Nest$mgetPointX(Lcom/termux/view/TerminalView;I)I

    move-result p1

    .line 1166
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    add-int/lit8 p2, p2, 0x1

    invoke-static {v0, p2}, Lcom/termux/view/TerminalView;->-$$Nest$mgetPointY(Lcom/termux/view/TerminalView;I)I

    move-result p2

    .line 1167
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/view/TerminalView$HandleView;->moveTo(IIZ)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 930
    iput p1, p0, Lcom/termux/view/TerminalView$HandleView;->mOrientation:I

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 947
    :cond_0
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 948
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/view/R$drawable;->text_select_handle_right_material:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/view/TerminalView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 951
    :cond_1
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 952
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 953
    div-int/lit8 v0, p1, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/termux/view/TerminalView$HandleView;->mHotspotX:F

    goto :goto_0

    .line 934
    :cond_2
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    .line 936
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/termux/view/R$drawable;->text_select_handle_left_material:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/view/TerminalView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 940
    :cond_3
    iget-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/termux/view/TerminalView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 941
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    mul-int/lit8 v0, p1, 0x3

    .line 942
    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/termux/view/TerminalView$HandleView;->mHotspotX:F

    .line 959
    :goto_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/termux/view/TerminalView$HandleView;->mHandleHeight:I

    .line 961
    iput p1, p0, Lcom/termux/view/TerminalView$HandleView;->mHandleWidth:I

    neg-int p1, v0

    int-to-float p1, p1

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    .line 962
    iput p1, p0, Lcom/termux/view/TerminalView$HandleView;->mTouchOffsetY:F

    const/4 p1, 0x0

    .line 963
    iput p1, p0, Lcom/termux/view/TerminalView$HandleView;->mHotspotY:F

    .line 964
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->invalidate()V

    return-void
.end method

.method public show()V
    .locals 6

    .line 980
    invoke-direct {p0}, Lcom/termux/view/TerminalView$HandleView;->isPositionVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$HandleView;->hide()V

    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 985
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mTempCoords:[I

    .line 986
    iget-object v1, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v1, v0}, Lcom/termux/view/TerminalView;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 987
    aget v2, v0, v1

    iget v3, p0, Lcom/termux/view/TerminalView$HandleView;->mPointX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 988
    aget v4, v0, v3

    iget v5, p0, Lcom/termux/view/TerminalView$HandleView;->mPointY:I

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 989
    iget-object v0, p0, Lcom/termux/view/TerminalView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/termux/view/TerminalView$HandleView;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
