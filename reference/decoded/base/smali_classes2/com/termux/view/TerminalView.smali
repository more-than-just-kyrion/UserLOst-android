.class public final Lcom/termux/view/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/view/TerminalView$SelectionModifierCursorController;,
        Lcom/termux/view/TerminalView$HandleView;,
        Lcom/termux/view/TerminalView$CursorController;
    }
.end annotation


# static fields
.field private static final LOG_KEY_EVENTS:Z = false


# instance fields
.field private mAccessibilityEnabled:Z

.field private mActionMode:Landroid/view/ActionMode;

.field mClient:Lcom/termux/view/TerminalViewClient;

.field mCombiningAccent:I

.field mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field final mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

.field mIsSelectingText:Z

.field private mMouseScrollStartX:I

.field private mMouseScrollStartY:I

.field private mMouseStartDownTime:J

.field mRenderer:Lcom/termux/view/TerminalRenderer;

.field mScaleFactor:F

.field mScrollRemainder:F

.field final mScroller:Landroid/widget/Scroller;

.field mSelX1:I

.field mSelX2:I

.field mSelY1:I

.field mSelY2:I

.field mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field mTermSession:Lcom/termux/terminal/TerminalSession;

.field mTopRow:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionMode(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActionMode(Lcom/termux/view/TerminalView;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCursorX(Lcom/termux/view/TerminalView;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->getCursorX(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCursorY(Lcom/termux/view/TerminalView;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->getCursorY(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPointX(Lcom/termux/view/TerminalView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->getPointX(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPointY(Lcom/termux/view/TerminalView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->getPointY(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopTextSelectionMode(Lcom/termux/view/TerminalView;)V
    .locals 0

    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFloatingToolbarVisibility(Lcom/termux/view/TerminalView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    const/4 p2, -0x1

    .line 75
    iput p2, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTempCoords:[I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    iput v0, p0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 87
    iput p2, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    const-wide/16 v0, -0x1

    .line 89
    iput-wide v0, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 1505
    new-instance p2, Lcom/termux/view/TerminalView$3;

    invoke-direct {p2, p0}, Lcom/termux/view/TerminalView$3;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 103
    new-instance p2, Lcom/termux/view/GestureAndScaleRecognizer;

    new-instance v0, Lcom/termux/view/TerminalView$1;

    invoke-direct {v0, p0}, Lcom/termux/view/TerminalView$1;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-direct {p2, p1, v0}, Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    .line 222
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    .line 223
    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 224
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    return-void
.end method

.method private getCursorX(F)I
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getCursorY(F)I
    .locals 1

    const/high16 v0, 0x42200000    # 40.0f

    sub-float/2addr p1, v0

    .line 829
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getPointX(I)I
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p1, v0, :cond_0

    .line 834
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p1, p1, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    :cond_0
    int-to-float p1, p1

    .line 836
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getPointY(I)I
    .locals 1

    .line 840
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getProperties()Ljava/util/Properties;
    .locals 6

    .line 1543
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x2

    .line 1544
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1545
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/home/.termux/termux.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1546
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/home/.config/termux/termux.properties"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1549
    new-instance v3, Ljava/io/File;

    aget-object v5, v2, v4

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1551
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v4, v1, :cond_0

    .line 1552
    new-instance v3, Ljava/io/File;

    aget-object v5, v2, v4

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1557
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1558
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1560
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 1558
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 1563
    const-string v2, "termux"

    const-string v3, "Error loading props"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-object v0
.end method

.method private getText()Ljava/lang/CharSequence;
    .locals 5

    .line 801
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideSelectionModifierCursorController()V
    .locals 1

    .line 1472
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->hide()V

    :cond_0
    return-void
.end method

.method private showFloatingToolbar()V
    .locals 4

    .line 1522
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1523
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 1524
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/termux/view/TerminalView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private startTextSelectionMode()V
    .locals 2

    .line 1479
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1483
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getSelectionController()Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->show()V

    const/4 v0, 0x1

    .line 1485
    iput-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    .line 1487
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v1, v0}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1489
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return-void
.end method

.method private stopTextSelectionMode()V
    .locals 2

    .line 1493
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v0, :cond_0

    .line 1494
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->hideSelectionModifierCursorController()V

    const/4 v0, -0x1

    .line 1495
    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    const/4 v0, 0x0

    .line 1496
    iput-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    .line 1498
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v1, v0}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1500
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1529
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1532
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->hideFloatingToolbar(I)V

    goto :goto_0

    .line 1536
    :cond_1
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->showFloatingToolbar()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public attachSession(Lcom/termux/terminal/TerminalSession;)Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 242
    :cond_0
    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 244
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 246
    iput v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 248
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    const/4 p1, 0x1

    .line 251
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->setVerticalScrollBarEnabled(Z)V

    return p1
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 1

    .line 1572
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v1, v1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    :goto_0
    return v0
.end method

.method doScroll(Landroid/view/MotionEvent;I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 473
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_7

    .line 475
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_1

    const/16 v4, 0x40

    goto :goto_2

    :cond_1
    const/16 v4, 0x41

    .line 476
    :goto_2
    invoke-virtual {p0, p1, v4, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_5

    .line 477
    :cond_2
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    const/16 v4, 0x13

    goto :goto_3

    :cond_3
    const/16 v4, 0x14

    .line 480
    :goto_3
    invoke-virtual {p0, v4, v1}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    goto :goto_5

    .line 482
    :cond_4
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_5

    const/4 v6, -0x1

    goto :goto_4

    :cond_5
    move v6, v0

    :goto_4
    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 483
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public getAutofillType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 1586
    const-string v0, ""

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method getSelectionController()Lcom/termux/view/TerminalView$SelectionModifierCursorController;
    .locals 2

    .line 1459
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    if-nez v0, :cond_0

    .line 1460
    new-instance v0, Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    invoke-direct {v0, p0}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    .line 1462
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    return-object v0
.end method

.method public handleKeyCode(II)Z
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v0

    invoke-static {p1, p2, v1, v0}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 699
    :cond_0
    iget-object p2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method hideFloatingToolbar(I)V
    .locals 3

    .line 1515
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1517
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mActionMode:Landroid/view/ActionMode;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    :cond_0
    return-void
.end method

.method public inputCodePoint(IZZ)V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 644
    iget-object p2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p2}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v0

    :goto_1
    if-nez p3, :cond_4

    .line 645
    iget-object p3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p3}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 647
    :cond_4
    :goto_2
    iget-object p3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {p3, p1, p2, v2}, Lcom/termux/view/TerminalViewClient;->onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-void

    :cond_5
    const/16 p3, 0x5e

    if-eqz p2, :cond_14

    const/16 p2, 0x61

    if-lt p1, p2, :cond_6

    const/16 p2, 0x7a

    if-gt p1, p2, :cond_6

    add-int/lit8 p1, p1, -0x60

    goto/16 :goto_9

    :cond_6
    const/16 p2, 0x41

    if-lt p1, p2, :cond_7

    const/16 p2, 0x5a

    if-gt p1, p2, :cond_7

    add-int/lit8 p1, p1, -0x40

    goto :goto_9

    :cond_7
    const/16 p2, 0x20

    if-eq p1, p2, :cond_13

    const/16 p2, 0x32

    if-ne p1, p2, :cond_8

    goto :goto_8

    :cond_8
    const/16 p2, 0x5b

    if-eq p1, p2, :cond_12

    const/16 p2, 0x33

    if-ne p1, p2, :cond_9

    goto :goto_7

    :cond_9
    const/16 p2, 0x5c

    if-eq p1, p2, :cond_11

    const/16 p2, 0x34

    if-ne p1, p2, :cond_a

    goto :goto_6

    :cond_a
    const/16 p2, 0x5d

    if-eq p1, p2, :cond_10

    const/16 p2, 0x35

    if-ne p1, p2, :cond_b

    goto :goto_5

    :cond_b
    if-eq p1, p3, :cond_f

    const/16 p2, 0x36

    if-ne p1, p2, :cond_c

    goto :goto_4

    :cond_c
    const/16 p2, 0x5f

    if-eq p1, p2, :cond_e

    const/16 p2, 0x37

    if-eq p1, p2, :cond_e

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_d

    goto :goto_3

    :cond_d
    const/16 p2, 0x38

    if-ne p1, p2, :cond_14

    const/16 p1, 0x7f

    goto :goto_9

    :cond_e
    :goto_3
    const/16 p1, 0x1f

    goto :goto_9

    :cond_f
    :goto_4
    const/16 p1, 0x1e

    goto :goto_9

    :cond_10
    :goto_5
    const/16 p1, 0x1d

    goto :goto_9

    :cond_11
    :goto_6
    const/16 p1, 0x1c

    goto :goto_9

    :cond_12
    :goto_7
    const/16 p1, 0x1b

    goto :goto_9

    :cond_13
    :goto_8
    move p1, v1

    :cond_14
    :goto_9
    const/4 p2, -0x1

    if-le p1, p2, :cond_18

    const/16 p2, 0x2c6

    if-eq p1, p2, :cond_17

    const/16 p2, 0x2cb

    if-eq p1, p2, :cond_16

    const/16 p2, 0x2dc

    if-eq p1, p2, :cond_15

    move p3, p1

    goto :goto_a

    :cond_15
    const/16 p3, 0x7e

    goto :goto_a

    :cond_16
    const/16 p3, 0x60

    .line 690
    :cond_17
    :goto_a
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1, v0, p3}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    :cond_18
    return-void
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 806
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 808
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 258
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 260
    const-string v1, "enforce-char-based-input"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x80090

    .line 264
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :goto_0
    const/high16 v0, 0x2000000

    .line 278
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 280
    new-instance p1, Lcom/termux/view/TerminalView$2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p0, v0}, Lcom/termux/view/TerminalView$2;-><init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 815
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 817
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 819
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mSelectionModifierCursorController:Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->onDetached()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 758
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v1, :cond_0

    const/high16 v0, -0x1000000

    .line 759
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget v4, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    iget v5, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iget v6, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget v7, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/termux/view/TerminalRenderer;->render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V

    .line 764
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getSelectionController()Lcom/termux/view/TerminalView$SelectionModifierCursorController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 765
    invoke-virtual {p1}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    invoke-virtual {p1}, Lcom/termux/view/TerminalView$SelectionModifierCursorController;->updatePosition()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_1

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v0, 0x9

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 494
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 572
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 575
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v0, p1, p2, v2}, Lcom/termux/view/TerminalViewClient;->onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return v1

    .line 578
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 579
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 580
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    if-nez p1, :cond_4

    .line 581
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    return v1

    .line 585
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 586
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v2}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    :goto_0
    move v2, v1

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-nez v4, :cond_8

    .line 587
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v4}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v4, v3

    goto :goto_3

    :cond_8
    :goto_2
    move v4, v1

    :goto_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v3

    :goto_4
    if-eqz v2, :cond_a

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_5

    :cond_a
    move v5, v3

    .line 592
    :goto_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    const/high16 v7, -0x80000000

    if-nez v6, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    or-int/2addr v5, v7

    .line 593
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_d

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    .line 594
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {p0, p1, v5}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    :cond_e
    if-eqz v0, :cond_f

    const/16 p1, 0x7000

    goto :goto_6

    :cond_f
    const/16 p1, 0x7012

    .line 607
    :goto_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    .line 609
    invoke-virtual {p2, p1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p1

    if-nez p1, :cond_10

    return v3

    .line 616
    :cond_10
    iget p2, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    and-int v0, p1, v7

    if-eqz v0, :cond_12

    if-eqz p2, :cond_11

    .line 620
    invoke-virtual {p0, p2, v2, v4}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    :cond_11
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 621
    iput p1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    goto :goto_7

    :cond_12
    if-eqz p2, :cond_14

    .line 624
    invoke-static {p2, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    if-lez v0, :cond_13

    move p1, v0

    .line 626
    :cond_13
    iput v3, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 628
    :cond_14
    invoke-virtual {p0, p1, v2, v4}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 631
    :goto_7
    iget p1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eq p1, p2, :cond_15

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_15
    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 542
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 547
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    return v1

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 554
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 559
    :cond_3
    const-string v1, "ctrl-space-workaround"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_4

    .line 560
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 565
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1, p2}, Lcom/termux/view/TerminalViewClient;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return v1

    .line 719
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public onScreenUpdated()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    .line 392
    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v2, v0

    if-ge v1, v2, :cond_1

    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 395
    :cond_1
    iget-boolean v1, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->getScrollCounter()I

    move-result v1

    .line 398
    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v3, v2

    add-int/2addr v3, v1

    if-le v3, v0, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    goto :goto_0

    :cond_2
    sub-int/2addr v2, v1

    .line 404
    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 405
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 406
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    goto :goto_1

    .line 410
    :cond_3
    :goto_0
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v0, :cond_5

    const/4 v1, -0x3

    if-ge v0, v1, :cond_4

    .line 416
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    :cond_4
    const/4 v0, 0x0

    .line 418
    iput v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 421
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->clearScrollCounter()V

    .line 423
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 424
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 733
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 505
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 507
    iget-boolean v2, p0, Lcom/termux/view/TerminalView;->mIsSelectingText:Z

    if-eqz v2, :cond_1

    .line 508
    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 509
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1

    :cond_1
    const/16 v2, 0x2002

    .line 511
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    .line 512
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 513
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x4

    .line 515
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 516
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 517
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 519
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_2

    .line 522
    :cond_4
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x20

    .line 529
    invoke-virtual {p0, p1, v0, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_1

    .line 526
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v3

    :goto_0
    invoke-virtual {p0, p1, v3, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    :goto_1
    return v1

    .line 536
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method sendMouseEventCode(Landroid/view/MotionEvent;IZ)V
    .locals 6

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz p3, :cond_2

    const/16 v2, 0x41

    if-eq p2, v2, :cond_0

    const/16 v2, 0x40

    if-ne p2, v2, :cond_2

    .line 458
    :cond_0
    iget-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 459
    iget v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 460
    iget v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 463
    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 464
    iput v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 467
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/termux/terminal/TerminalEmulator;->sendMouseEvent(IIIZ)V

    return-void
.end method

.method public setOnKeyListener(Lcom/termux/view/TerminalViewClient;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 433
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 434
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 438
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    invoke-direct {v0, v1, p1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 439
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 440
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return-void
.end method

.method public startSelectingText(Landroid/view/MotionEvent;)V
    .locals 4

    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x2002

    .line 775
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, -0x28

    .line 778
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr p1, v1

    .line 780
    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    .line 781
    iput p1, p0, Lcom/termux/view/TerminalView;->mSelY2:I

    iput p1, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    .line 783
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object p1

    .line 784
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    iget v1, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    :goto_1
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    const-string v1, ""

    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v3, v0, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX1:I

    goto :goto_1

    .line 789
    :cond_1
    :goto_2
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/termux/view/TerminalView;->mSelY1:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v3, v0, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 790
    iget v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/view/TerminalView;->mSelX2:I

    goto :goto_2

    .line 793
    :cond_2
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->startTextSelectionMode()V

    return-void
.end method

.method public updateSize()V
    .locals 4

    .line 738
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v0

    .line 739
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 740
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 743
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 744
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 746
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v1, v2, :cond_2

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v2, v0, v1}, Lcom/termux/terminal/TerminalSession;->updateSize(II)V

    .line 748
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v0, 0x0

    .line 750
    iput v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 751
    invoke-virtual {p0, v0, v0}, Lcom/termux/view/TerminalView;->scrollTo(II)V

    .line 752
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method
