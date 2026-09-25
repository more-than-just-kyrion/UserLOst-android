.class public final Lcom/termux/app/TermuxViewClient;
.super Ljava/lang/Object;
.source "TermuxViewClient.java"

# interfaces
.implements Lcom/termux/view/TerminalViewClient;


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field mVirtualControlKeyDown:Z

.field mVirtualFnKeyDown:Z


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    return-void
.end method

.method private handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z
    .locals 2

    .line 266
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p2

    .line 267
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-boolean v0, v0, Lcom/termux/app/TermuxPreferences;->mDisableVolumeVirtualKeys:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x19

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    .line 273
    iput-boolean p3, p0, Lcom/termux/app/TermuxViewClient;->mVirtualControlKeyDown:Z

    return v0

    :cond_2
    const/16 p2, 0x18

    if-ne p1, p2, :cond_3

    .line 276
    iput-boolean p3, p0, Lcom/termux/app/TermuxViewClient;->mVirtualFnKeyDown:Z

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public copyModeChanged(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method public onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
    .locals 5

    .line 126
    iget-boolean v0, p0, Lcom/termux/app/TermuxViewClient;->mVirtualFnKeyDown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 130
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p2

    const/16 v0, 0x2e

    const/4 v3, -0x1

    if-eq p2, v0, :cond_8

    const/16 v0, 0x6e

    if-eq p2, v0, :cond_7

    const/16 v0, 0x61

    if-eq p2, v0, :cond_6

    const/16 v0, 0x62

    if-eq p2, v0, :cond_5

    const/16 v0, 0x68

    if-eq p2, v0, :cond_4

    const/16 v0, 0x69

    const/16 v4, 0x7c

    if-eq p2, v0, :cond_0

    const/16 v0, 0x6b

    if-eq p2, v0, :cond_3

    const/16 v0, 0x6c

    if-eq p2, v0, :cond_2

    const/16 v0, 0x70

    if-eq p2, v0, :cond_1

    const/16 v0, 0x71

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto :goto_1

    :pswitch_0
    const/16 v4, 0x13

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/high16 p2, -0x80000000

    .line 208
    invoke-virtual {p1, v1, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_1

    :pswitch_2
    const/16 p2, 0x5f

    goto :goto_2

    :pswitch_3
    const/16 v4, 0x3d

    goto :goto_0

    :pswitch_4
    const/16 v4, 0x14

    goto :goto_0

    :pswitch_5
    const/16 p2, 0x1b

    goto :goto_2

    :pswitch_6
    const/16 v4, 0x16

    goto :goto_0

    :pswitch_7
    add-int/lit8 v4, p1, 0x52

    goto :goto_0

    :pswitch_8
    const/16 v4, 0x8c

    :cond_0
    :goto_0
    move p1, v1

    move p2, v3

    goto :goto_4

    :cond_1
    const/16 v4, 0x5c

    goto :goto_0

    :cond_2
    move p1, v1

    move p2, v4

    goto :goto_3

    .line 214
    :cond_3
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->toggleShowExtraKeys()V

    :goto_1
    move p1, v1

    move p2, v3

    move v4, p2

    goto :goto_4

    :cond_4
    const/16 p2, 0x7e

    goto :goto_2

    :cond_5
    :pswitch_9
    move p1, v2

    goto :goto_3

    :cond_6
    const/16 v4, 0x15

    goto :goto_0

    :cond_7
    const/16 v4, 0x5d

    goto :goto_0

    :cond_8
    const/16 p2, 0x1c

    :goto_2
    move p1, v1

    :goto_3
    move v4, v3

    :goto_4
    if-eq v4, v3, :cond_9

    .line 219
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result p2

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result p1

    invoke-static {v4, v1, p2, p1}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-eq p2, v3, :cond_a

    .line 222
    invoke-virtual {p3, p1, p2}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    :cond_a
    :goto_5
    return v2

    :cond_b
    if-eqz p2, :cond_12

    const/16 p2, 0x6a

    if-ne p1, p2, :cond_c

    .line 226
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p2

    if-nez p2, :cond_c

    .line 227
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, p3}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    return v2

    .line 231
    :cond_c
    iget-object p2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object p2, p2, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-object p2, p2, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    .line 232
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_12

    .line 233
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    .line 234
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_6
    if-ltz p3, :cond_12

    .line 235
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;

    .line 236
    iget v3, v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->codePoint:I

    if-ne p1, v3, :cond_11

    .line 237
    iget v0, v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;->shortcutAction:I

    if-eq v0, v2, :cond_10

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e

    const/4 v3, 0x4

    if-eq v0, v3, :cond_d

    goto :goto_7

    .line 248
    :cond_d
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    return v2

    .line 242
    :cond_e
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v1}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    return v2

    .line 245
    :cond_f
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v2}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    return v2

    .line 239
    :cond_10
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    return v2

    :cond_11
    :goto_7
    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    :cond_12
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x73
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
    .locals 4

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/TermuxViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 62
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, p3}, Lcom/termux/app/TermuxActivity;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    return v0

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 67
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    const/16 v3, 0x14

    if-eq p1, v3, :cond_10

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v3, 0x13

    if-eq p1, v3, :cond_f

    const/16 v3, 0x70

    if-ne v1, v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x16

    if-ne p1, v3, :cond_4

    .line 74
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto/16 :goto_3

    :cond_4
    const/16 v3, 0x15

    if-ne p1, v3, :cond_5

    .line 76
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_3

    :cond_5
    const/16 p1, 0x6b

    if-ne v1, p1, :cond_6

    .line 78
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x2

    .line 79
    invoke-virtual {p1, p2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_3

    :cond_6
    const/16 p1, 0x6d

    if-ne v1, p1, :cond_7

    .line 81
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto/16 :goto_3

    :cond_7
    const/16 p1, 0x72

    if-ne v1, p1, :cond_8

    .line 83
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, p3}, Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    goto/16 :goto_3

    :cond_8
    const/16 p1, 0x63

    if-ne v1, p1, :cond_9

    .line 85
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    goto :goto_3

    :cond_9
    const/16 p1, 0x75

    if-ne v1, p1, :cond_a

    .line 87
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->showUrlSelection()V

    goto :goto_3

    :cond_a
    const/16 p1, 0x76

    if-ne v1, p1, :cond_b

    .line 89
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->doPaste()V

    goto :goto_3

    :cond_b
    const/16 p1, 0x2b

    if-eq v1, p1, :cond_e

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p2

    if-ne p2, p1, :cond_c

    goto :goto_0

    :cond_c
    const/16 p1, 0x2d

    if-ne v1, p1, :cond_d

    .line 95
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v2}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    goto :goto_3

    :cond_d
    const/16 p1, 0x31

    if-lt v1, p1, :cond_11

    const/16 p2, 0x39

    if-gt v1, p2, :cond_11

    sub-int/2addr v1, p1

    .line 98
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    .line 99
    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_11

    .line 100
    iget-object p2, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_3

    .line 93
    :cond_e
    :goto_0
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    goto :goto_3

    .line 72
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v2}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    goto :goto_3

    .line 70
    :cond_10
    :goto_2
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Z)V

    :cond_11
    :goto_3
    return v0

    :cond_12
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/TermuxViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScale(F)F
    .locals 2

    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3f8ccccd    # 1.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 35
    :goto_1
    iget-object v1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1, p1}, Lcom/termux/app/TermuxActivity;->changeFontSize(Z)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 44
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public readAltKey()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    sget-object v1, Lcom/termux/app/ExtraKeysView$SpecialButton;->ALT:Lcom/termux/app/ExtraKeysView$SpecialButton;

    invoke-virtual {v0, v1}, Lcom/termux/app/ExtraKeysView;->readSpecialButton(Lcom/termux/app/ExtraKeysView$SpecialButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readControlKey()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/ExtraKeysView;

    sget-object v1, Lcom/termux/app/ExtraKeysView$SpecialButton;->CTRL:Lcom/termux/app/ExtraKeysView$SpecialButton;

    invoke-virtual {v0, v1}, Lcom/termux/app/ExtraKeysView;->readSpecialButton(Lcom/termux/app/ExtraKeysView$SpecialButton;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/termux/app/TermuxViewClient;->mVirtualControlKeyDown:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/termux/app/TermuxViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mSettings:Lcom/termux/app/TermuxPreferences;

    iget-boolean v0, v0, Lcom/termux/app/TermuxPreferences;->mBackIsEscape:Z

    return v0
.end method
