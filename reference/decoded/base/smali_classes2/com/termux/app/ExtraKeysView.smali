.class public final Lcom/termux/app/ExtraKeysView;
.super Landroid/widget/GridLayout;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/ExtraKeysView$SpecialButtonState;,
        Lcom/termux/app/ExtraKeysView$SpecialButton;
    }
.end annotation


# static fields
.field private static final BUTTON_COLOR:I = 0x0

.field private static final BUTTON_PRESSED_COLOR:I = -0x808081

.field private static final INTERESTING_COLOR:I = -0x7f2116

.field private static final TEXT_COLOR:I = -0x1

.field static final keyCodesForString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private longPressCount:I

.field private popupWindow:Landroid/widget/PopupWindow;

.field private scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private specialButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/termux/app/ExtraKeysView$SpecialButton;",
            "Lcom/termux/app/ExtraKeysView$SpecialButtonState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JPvQKRKBjAakAf610V3PLorrJi8(Lcom/termux/app/ExtraKeysView;Lcom/termux/app/ExtraKeyButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/ExtraKeysView;->lambda$reload$3(Lcom/termux/app/ExtraKeyButton;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WF18sE_3gjhQifVbXhEYG6clFCY(Lcom/termux/app/ExtraKeysView;Landroid/widget/Button;Lcom/termux/app/ExtraKeyButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/ExtraKeysView;->lambda$reload$1(Landroid/widget/Button;Lcom/termux/app/ExtraKeyButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iqx2r8izA_u91diTodpZMiNG9no(Lcom/termux/app/ExtraKeysView;Landroid/view/View;Lcom/termux/app/ExtraKeyButton;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/app/ExtraKeysView;->lambda$reload$2(Landroid/view/View;Lcom/termux/app/ExtraKeyButton;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/termux/app/ExtraKeysView$1;

    invoke-direct {v0}, Lcom/termux/app/ExtraKeysView$1;-><init>()V

    sput-object v0, Lcom/termux/app/ExtraKeysView;->keyCodesForString:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    new-instance p1, Lcom/termux/app/ExtraKeysView$2;

    invoke-direct {p1, p0}, Lcom/termux/app/ExtraKeysView$2;-><init>(Lcom/termux/app/ExtraKeysView;)V

    iput-object p1, p0, Lcom/termux/app/ExtraKeysView;->specialButtons:Ljava/util/Map;

    return-void
.end method

.method private synthetic lambda$reload$1(Landroid/widget/Button;Lcom/termux/app/ExtraKeyButton;Landroid/view/View;)V
    .locals 4

    .line 251
    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x2

    const/4 v2, 0x3

    if-eqz p3, :cond_1

    .line 254
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt p3, v3, :cond_0

    .line 255
    invoke-virtual {p1, v2}, Landroid/widget/Button;->performHapticFeedback(I)Z

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v3, "zen_mode"

    invoke-static {p3, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-eq p3, v0, :cond_1

    .line 259
    invoke-virtual {p1, v2}, Landroid/widget/Button;->performHapticFeedback(I)Z

    .line 264
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getRootView()Landroid/view/View;

    move-result-object p3

    .line 265
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CTRL"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "ALT"

    aput-object v3, v2, v1

    const-string v1, "FN"

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/termux/app/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    check-cast p1, Landroid/widget/ToggleButton;

    .line 267
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 268
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, -0x7f2116

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_2

    .line 270
    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/termux/app/ExtraKeysView;->sendKey(Landroid/view/View;Lcom/termux/app/ExtraKeyButton;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$reload$2(Landroid/view/View;Lcom/termux/app/ExtraKeyButton;)V
    .locals 1

    .line 284
    iget v0, p0, Lcom/termux/app/ExtraKeysView;->longPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/app/ExtraKeysView;->longPressCount:I

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/termux/app/ExtraKeysView;->sendKey(Landroid/view/View;Lcom/termux/app/ExtraKeyButton;)V

    return-void
.end method

.method private synthetic lambda$reload$3(Lcom/termux/app/ExtraKeyButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/termux/app/ExtraKeysView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, -0x808081

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_b

    const/4 v9, 0x0

    if-eq v3, v8, :cond_6

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_0

    return v8

    .line 310
    :cond_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 311
    iget-object v1, v0, Lcom/termux/app/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    .line 312
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 313
    iput-object v9, v0, Lcom/termux/app/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    return v8

    .line 291
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/termux/app/ExtraKeyButton;->getPopup()Lcom/termux/app/ExtraKeyButton;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 292
    iget-object v2, v0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 293
    iget-object v2, v0, Lcom/termux/app/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_3

    .line 294
    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 295
    iput-object v9, v0, Lcom/termux/app/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 297
    :cond_3
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/termux/app/ExtraKeyButton;->getPopup()Lcom/termux/app/ExtraKeyButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/app/ExtraKeyButton;->getDisplay()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/termux/app/ExtraKeysView;->popup(Landroid/view/View;Ljava/lang/String;)V

    .line 301
    :cond_4
    iget-object v2, v0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 302
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 303
    iget-object v1, v0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 304
    iput-object v9, v0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    :cond_5
    return v8

    .line 317
    :cond_6
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 318
    iget-object v3, v0, Lcom/termux/app/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_7

    .line 319
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 320
    iput-object v9, v0, Lcom/termux/app/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 322
    :cond_7
    iget v3, v0, Lcom/termux/app/ExtraKeysView;->longPressCount:I

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_a

    .line 323
    :cond_8
    iget-object v3, v0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_9

    .line 324
    invoke-virtual {v3, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 325
    iget-object v1, v0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 326
    iput-object v9, v0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/termux/app/ExtraKeyButton;->getPopup()Lcom/termux/app/ExtraKeyButton;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/termux/app/ExtraKeyButton;->getPopup()Lcom/termux/app/ExtraKeyButton;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/termux/app/ExtraKeysView;->sendKey(Landroid/view/View;Lcom/termux/app/ExtraKeyButton;)V

    goto :goto_0

    .line 331
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->performClick()Z

    :cond_a
    :goto_0
    return v8

    .line 278
    :cond_b
    iput v7, v0, Lcom/termux/app/ExtraKeysView;->longPressCount:I

    .line 279
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, 0x6

    .line 280
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "UP"

    aput-object v3, v1, v7

    const-string v3, "DOWN"

    aput-object v3, v1, v8

    const-string v3, "LEFT"

    aput-object v3, v1, v6

    const-string v3, "RIGHT"

    aput-object v3, v1, v5

    const/4 v3, 0x4

    const-string v4, "BKSP"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "DEL"

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/termux/app/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 282
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    iput-object v9, v0, Lcom/termux/app/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 283
    new-instance v10, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda1;

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v2, v1}, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda1;-><init>(Lcom/termux/app/ExtraKeysView;Landroid/view/View;Lcom/termux/app/ExtraKeyButton;)V

    const-wide/16 v13, 0x50

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x190

    invoke-interface/range {v9 .. v15}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_c
    return v8
.end method

.method static synthetic lambda$sendKey$0(Lcom/termux/view/TerminalView;ZZI)V
    .locals 0

    .line 100
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    return-void
.end method

.method static maximumLength([[Ljava/lang/Object;)I
    .locals 4

    .line 196
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 197
    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private sendKey(Landroid/view/View;Lcom/termux/app/ExtraKeyButton;)V
    .locals 8

    .line 106
    invoke-virtual {p2}, Lcom/termux/app/ExtraKeyButton;->isMacro()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p2}, Lcom/termux/app/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 110
    array-length v0, p2

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v5, p2, v2

    .line 111
    const-string v6, "CTRL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v3, v7

    goto :goto_1

    .line 113
    :cond_0
    const-string v6, "ALT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v7

    goto :goto_1

    .line 116
    :cond_1
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/termux/app/ExtraKeysView;->sendKey(Landroid/view/View;Ljava/lang/String;ZZ)V

    move v3, v1

    move v4, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p2}, Lcom/termux/app/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/termux/app/ExtraKeysView;->sendKey(Landroid/view/View;Ljava/lang/String;ZZ)V

    :cond_3
    return-void
.end method

.method private sendKey(Landroid/view/View;Ljava/lang/String;ZZ)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 79
    sget v4, Lcom/termux/R$id;->terminal_view:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/termux/view/TerminalView;

    .line 80
    const-string v5, "KEYBOARD"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 82
    invoke-virtual {v0, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_1

    .line 83
    :cond_0
    const-string v5, "DRAWER"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    sget v1, Lcom/termux/R$id;->drawer_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    .line 85
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_1

    .line 86
    :cond_1
    sget-object v0, Lcom/termux/app/ExtraKeysView;->keyCodesForString:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v2, :cond_2

    const/16 v6, 0x3000

    :cond_2
    if-eqz v3, :cond_3

    or-int/lit8 v1, v6, 0x12

    move v15, v1

    goto :goto_0

    :cond_3
    move v15, v6

    .line 95
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v7, v1

    move v13, v0

    invoke-direct/range {v7 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 96
    invoke-virtual {v4, v0, v1}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v4, v2, v3}, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda0;-><init>(Lcom/termux/view/TerminalView;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    :goto_1
    return-void
.end method


# virtual methods
.method popup(Landroid/view/View;Ljava/lang/String;)V
    .locals 6

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 171
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x101032f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    .line 173
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p2, 0x0

    .line 174
    invoke-virtual {v2, p2, p2, p2, p2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 175
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 176
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 177
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 178
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 179
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setWidth(I)V

    .line 180
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setHeight(I)V

    const v0, -0x808081

    .line 181
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 182
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    .line 183
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 184
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 185
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 187
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 188
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    mul-int/2addr v1, v3

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public readSpecialButton(Lcom/termux/app/ExtraKeysView$SpecialButton;)Z
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->specialButtons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/app/ExtraKeysView$SpecialButtonState;

    if-eqz p1, :cond_4

    .line 150
    iget-boolean v0, p1, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->isOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 153
    :cond_0
    iget-object v0, p1, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->button:Landroid/widget/ToggleButton;

    if-nez v0, :cond_1

    return v1

    .line 157
    :cond_1
    iget-object v0, p1, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->button:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isPressed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    .line 160
    :cond_2
    iget-object v0, p1, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->button:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 163
    :cond_3
    iget-object v0, p1, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->button:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 164
    iget-object p1, p1, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->button:Landroid/widget/ToggleButton;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextColor(I)V

    return v2

    .line 148
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must be a valid special button (see source)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method reload(Lcom/termux/app/ExtraKeysInfos;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/termux/app/ExtraKeysView;->specialButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/app/ExtraKeysView$SpecialButtonState;

    .line 222
    iput-object v2, v1, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->button:Landroid/widget/ToggleButton;

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->removeAllViews()V

    .line 226
    invoke-virtual {p1}, Lcom/termux/app/ExtraKeysInfos;->getMatrix()[[Lcom/termux/app/ExtraKeyButton;

    move-result-object p1

    .line 228
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysView;->setRowCount(I)V

    .line 229
    invoke-static {p1}, Lcom/termux/app/ExtraKeysView;->maximumLength([[Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/termux/app/ExtraKeysView;->setColumnCount(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 231
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    move v3, v0

    .line 232
    :goto_2
    aget-object v4, p1, v1

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 233
    aget-object v4, v4, v3

    const/4 v5, 0x3

    .line 236
    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "CTRL"

    aput-object v6, v5, v0

    const-string v6, "ALT"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v8, "FN"

    aput-object v8, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/termux/app/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x101032f

    if-eqz v5, :cond_2

    .line 237
    iget-object v5, p0, Lcom/termux/app/ExtraKeysView;->specialButtons:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/termux/app/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/termux/app/ExtraKeysView$SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/app/ExtraKeysView$SpecialButton;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/termux/app/ExtraKeysView$SpecialButtonState;

    .line 238
    iput-boolean v7, v5, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->isOn:Z

    .line 239
    new-instance v8, Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v2, v6}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v5, Lcom/termux/app/ExtraKeysView$SpecialButtonState;->button:Landroid/widget/ToggleButton;

    .line 240
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_3

    .line 242
    :cond_2
    new-instance v8, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/termux/app/ExtraKeysView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v8, v5, v2, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    :goto_3
    invoke-virtual {v4}, Lcom/termux/app/ExtraKeyButton;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    .line 246
    invoke-virtual {v8, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 247
    invoke-virtual {v8, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 250
    new-instance v5, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v8, v4}, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda2;-><init>(Lcom/termux/app/ExtraKeysView;Landroid/widget/Button;Lcom/termux/app/ExtraKeyButton;)V

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance v5, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v4}, Lcom/termux/app/ExtraKeysView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/app/ExtraKeysView;Lcom/termux/app/ExtraKeyButton;)V

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 341
    new-instance v4, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 342
    iput v0, v4, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 343
    iput v0, v4, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 344
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 345
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v5, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 346
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v5, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 347
    invoke-virtual {v8, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    invoke-virtual {p0, v8}, Lcom/termux/app/ExtraKeysView;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    return-void
.end method
