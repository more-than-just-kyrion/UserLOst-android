.class public Lcom/freerdp/freerdpcore/utils/KeyboardMapper;
.super Ljava/lang/Object;
.source "KeyboardMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;
    }
.end annotation


# static fields
.field private static final EXTKEY_KBCURSOR:I = 0x1102

.field private static final EXTKEY_KBFUNCTIONKEYS:I = 0x1100

.field private static final EXTKEY_KBNUMPAD:I = 0x1101

.field public static final KEYBOARD_TYPE_CURSOR:I = 0x3

.field public static final KEYBOARD_TYPE_FUNCTIONKEYS:I = 0x1

.field public static final KEYBOARD_TYPE_NUMPAD:I = 0x2

.field public static final KEYSTATE_LOCKED:I = 0x2

.field public static final KEYSTATE_OFF:I = 0x3

.field public static final KEYSTATE_ON:I = 0x1

.field private static final KEY_FLAG_TOGGLE:I = 0x40000000

.field private static final KEY_FLAG_UNICODE:I = -0x80000000

.field static final VK_ABNT_C1:I = 0xc1

.field static final VK_ABNT_C2:I = 0xc2

.field static final VK_ACCEPT:I = 0x1e

.field static final VK_ADD:I = 0x6b

.field static final VK_APPS:I = 0x5d

.field static final VK_ATTN:I = 0xf6

.field static final VK_BACK:I = 0x8

.field static final VK_BROWSER_BACK:I = 0xa6

.field static final VK_BROWSER_FAVORITES:I = 0xab

.field static final VK_BROWSER_FORWARD:I = 0xa7

.field static final VK_BROWSER_HOME:I = 0xac

.field static final VK_BROWSER_REFRESH:I = 0xa8

.field static final VK_BROWSER_SEARCH:I = 0xaa

.field static final VK_BROWSER_STOP:I = 0xa9

.field static final VK_CANCEL:I = 0x3

.field static final VK_CAPITAL:I = 0x14

.field static final VK_CLEAR:I = 0xc

.field static final VK_CONTROL:I = 0x11

.field static final VK_CONVERT:I = 0x1c

.field static final VK_CRSEL:I = 0xf7

.field static final VK_DECIMAL:I = 0x6e

.field static final VK_DELETE:I = 0x2e

.field static final VK_DIVIDE:I = 0x6f

.field static final VK_DOWN:I = 0x28

.field static final VK_END:I = 0x23

.field static final VK_EREOF:I = 0xf9

.field static final VK_ESCAPE:I = 0x1b

.field static final VK_EXECUTE:I = 0x2b

.field static final VK_EXSEL:I = 0xf8

.field static final VK_EXT_KEY:I = 0x100

.field static final VK_F1:I = 0x70

.field static final VK_F10:I = 0x79

.field static final VK_F11:I = 0x7a

.field static final VK_F12:I = 0x7b

.field static final VK_F13:I = 0x7c

.field static final VK_F14:I = 0x7d

.field static final VK_F15:I = 0x7e

.field static final VK_F16:I = 0x7f

.field static final VK_F17:I = 0x80

.field static final VK_F18:I = 0x81

.field static final VK_F19:I = 0x82

.field static final VK_F2:I = 0x71

.field static final VK_F20:I = 0x83

.field static final VK_F21:I = 0x84

.field static final VK_F22:I = 0x85

.field static final VK_F23:I = 0x86

.field static final VK_F24:I = 0x87

.field static final VK_F3:I = 0x72

.field static final VK_F4:I = 0x73

.field static final VK_F5:I = 0x74

.field static final VK_F6:I = 0x75

.field static final VK_F7:I = 0x76

.field static final VK_F8:I = 0x77

.field static final VK_F9:I = 0x78

.field static final VK_FINAL:I = 0x18

.field static final VK_HANGUEL:I = 0x15

.field static final VK_HANGUL:I = 0x15

.field static final VK_HANJA:I = 0x19

.field static final VK_HELP:I = 0x2f

.field static final VK_HOME:I = 0x24

.field static final VK_INSERT:I = 0x2d

.field static final VK_JUNJA:I = 0x17

.field static final VK_KANA:I = 0x15

.field static final VK_KANJI:I = 0x19

.field static final VK_KEY_0:I = 0x30

.field static final VK_KEY_1:I = 0x31

.field static final VK_KEY_2:I = 0x32

.field static final VK_KEY_3:I = 0x33

.field static final VK_KEY_4:I = 0x34

.field static final VK_KEY_5:I = 0x35

.field static final VK_KEY_6:I = 0x36

.field static final VK_KEY_7:I = 0x37

.field static final VK_KEY_8:I = 0x38

.field static final VK_KEY_9:I = 0x39

.field static final VK_KEY_A:I = 0x41

.field static final VK_KEY_B:I = 0x42

.field static final VK_KEY_C:I = 0x43

.field static final VK_KEY_D:I = 0x44

.field static final VK_KEY_E:I = 0x45

.field static final VK_KEY_F:I = 0x46

.field static final VK_KEY_G:I = 0x47

.field static final VK_KEY_H:I = 0x48

.field static final VK_KEY_I:I = 0x49

.field static final VK_KEY_J:I = 0x4a

.field static final VK_KEY_K:I = 0x4b

.field static final VK_KEY_L:I = 0x4c

.field static final VK_KEY_M:I = 0x4d

.field static final VK_KEY_N:I = 0x4e

.field static final VK_KEY_O:I = 0x4f

.field static final VK_KEY_P:I = 0x50

.field static final VK_KEY_Q:I = 0x51

.field static final VK_KEY_R:I = 0x52

.field static final VK_KEY_S:I = 0x53

.field static final VK_KEY_T:I = 0x54

.field static final VK_KEY_U:I = 0x55

.field static final VK_KEY_V:I = 0x56

.field static final VK_KEY_W:I = 0x57

.field static final VK_KEY_X:I = 0x58

.field static final VK_KEY_Y:I = 0x59

.field static final VK_KEY_Z:I = 0x5a

.field static final VK_LAUNCH_APP1:I = 0xb6

.field static final VK_LAUNCH_APP2:I = 0xb7

.field static final VK_LAUNCH_MAIL:I = 0xb4

.field static final VK_LAUNCH_MEDIA_SELECT:I = 0xb5

.field static final VK_LBUTTON:I = 0x1

.field static final VK_LCONTROL:I = 0xa2

.field static final VK_LEFT:I = 0x25

.field static final VK_LMENU:I = 0xa4

.field static final VK_LSHIFT:I = 0xa0

.field static final VK_LWIN:I = 0x5b

.field static final VK_MBUTTON:I = 0x4

.field static final VK_MEDIA_NEXT_TRACK:I = 0xb0

.field static final VK_MEDIA_PLAY_PAUSE:I = 0xb3

.field static final VK_MEDIA_PREV_TRACK:I = 0xb1

.field static final VK_MEDIA_STOP:I = 0xb2

.field static final VK_MENU:I = 0x12

.field static final VK_MODECHANGE:I = 0x1f

.field static final VK_MULTIPLY:I = 0x6a

.field static final VK_NEXT:I = 0x22

.field static final VK_NONAME:I = 0xfc

.field static final VK_NONCONVERT:I = 0x1d

.field static final VK_NUMLOCK:I = 0x90

.field static final VK_NUMPAD0:I = 0x60

.field static final VK_NUMPAD1:I = 0x61

.field static final VK_NUMPAD2:I = 0x62

.field static final VK_NUMPAD3:I = 0x63

.field static final VK_NUMPAD4:I = 0x64

.field static final VK_NUMPAD5:I = 0x65

.field static final VK_NUMPAD6:I = 0x66

.field static final VK_NUMPAD7:I = 0x67

.field static final VK_NUMPAD8:I = 0x68

.field static final VK_NUMPAD9:I = 0x69

.field static final VK_OEM_1:I = 0xba

.field static final VK_OEM_102:I = 0xe2

.field static final VK_OEM_2:I = 0xbf

.field static final VK_OEM_3:I = 0xc0

.field static final VK_OEM_4:I = 0xdb

.field static final VK_OEM_5:I = 0xdc

.field static final VK_OEM_6:I = 0xdd

.field static final VK_OEM_7:I = 0xde

.field static final VK_OEM_8:I = 0xdf

.field static final VK_OEM_CLEAR:I = 0xfe

.field static final VK_OEM_COMMA:I = 0xbc

.field static final VK_OEM_MINUS:I = 0xbd

.field static final VK_OEM_PERIOD:I = 0xbe

.field static final VK_OEM_PLUS:I = 0xbb

.field static final VK_PA1:I = 0xfd

.field static final VK_PACKET:I = 0xe7

.field static final VK_PAUSE:I = 0x13

.field static final VK_PLAY:I = 0xfa

.field static final VK_PRINT:I = 0x2a

.field static final VK_PRIOR:I = 0x21

.field static final VK_PROCESSKEY:I = 0xe5

.field static final VK_RBUTTON:I = 0x2

.field static final VK_RCONTROL:I = 0xa3

.field static final VK_RETURN:I = 0xd

.field static final VK_RIGHT:I = 0x27

.field static final VK_RMENU:I = 0xa5

.field static final VK_RSHIFT:I = 0xa1

.field static final VK_RWIN:I = 0x5c

.field static final VK_SCROLL:I = 0x91

.field static final VK_SELECT:I = 0x29

.field static final VK_SEPARATOR:I = 0x6c

.field static final VK_SHIFT:I = 0x10

.field static final VK_SLEEP:I = 0x5f

.field static final VK_SNAPSHOT:I = 0x2c

.field static final VK_SPACE:I = 0x20

.field static final VK_SUBTRACT:I = 0x6d

.field static final VK_TAB:I = 0x9

.field static final VK_UNICODE:I = -0x80000000

.field static final VK_UP:I = 0x26

.field static final VK_VOLUME_DOWN:I = 0xae

.field static final VK_VOLUME_MUTE:I = 0xad

.field static final VK_VOLUME_UP:I = 0xaf

.field static final VK_XBUTTON1:I = 0x5

.field static final VK_XBUTTON2:I = 0x6

.field static final VK_ZOOM:I = 0xfb

.field private static initialized:Z = false

.field private static keymapAndroid:[I

.field private static keymapExt:[I


# instance fields
.field private altPressed:Z

.field private ctrlPressed:Z

.field private isAltLocked:Z

.field private isCtrlLocked:Z

.field private isShiftLocked:Z

.field private isWinLocked:Z

.field private lastModifierKeyCode:I

.field private lastModifierTime:J

.field private listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

.field private shiftPressed:Z

.field private winPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->shiftPressed:Z

    .line 220
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->ctrlPressed:Z

    .line 221
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->altPressed:Z

    .line 222
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->winPressed:Z

    const/4 v1, -0x1

    .line 224
    iput v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->lastModifierKeyCode:I

    .line 225
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isShiftLocked:Z

    .line 226
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isCtrlLocked:Z

    .line 227
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isAltLocked:Z

    .line 228
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isWinLocked:Z

    return-void
.end method

.method private checkToggleModifierLock(I)Z
    .locals 8

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 695
    iget v2, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->lastModifierKeyCode:I

    const/4 v3, 0x0

    if-eq v2, p1, :cond_0

    .line 697
    iput p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->lastModifierKeyCode:I

    .line 698
    iput-wide v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->lastModifierTime:J

    return v3

    .line 703
    :cond_0
    iget-wide v4, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->lastModifierTime:J

    const-wide/16 v6, 0x320

    add-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    const-wide/16 v0, 0x0

    .line 705
    iput-wide v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->lastModifierTime:J

    const/4 p1, 0x1

    return p1

    .line 710
    :cond_1
    iput-wide v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->lastModifierTime:J

    return v3
.end method

.method private getExtendedKeyCode(I)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 571
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getVirtualKeyCode(I)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 564
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapAndroid:[I

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isModifierPressed()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->shiftPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->ctrlPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->altPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->winPressed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private processToggleButton(I)V
    .locals 3

    const/16 v0, 0x5b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->checkToggleModifierLock(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 607
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isAltLocked:Z

    .line 608
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->altPressed:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->altPressed:Z

    .line 609
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {v1, v0, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_0

    .line 612
    :cond_1
    iput-boolean v2, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isAltLocked:Z

    goto :goto_0

    .line 593
    :cond_2
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->checkToggleModifierLock(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 595
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isCtrlLocked:Z

    .line 596
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->ctrlPressed:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->ctrlPressed:Z

    .line 597
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {v1, v0, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_0

    .line 600
    :cond_3
    iput-boolean v2, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isCtrlLocked:Z

    goto :goto_0

    .line 581
    :cond_4
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->checkToggleModifierLock(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 583
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isShiftLocked:Z

    .line 584
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->shiftPressed:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->shiftPressed:Z

    .line 585
    iget-object v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {v1, v0, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_0

    .line 588
    :cond_5
    iput-boolean v2, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isShiftLocked:Z

    goto :goto_0

    .line 617
    :cond_6
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->checkToggleModifierLock(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 619
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isWinLocked:Z

    .line 620
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->winPressed:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->winPressed:Z

    .line 621
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/16 v1, 0x15b

    invoke-interface {v0, v1, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_0

    .line 624
    :cond_7
    iput-boolean v2, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isWinLocked:Z

    .line 628
    :goto_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->modifiersChanged()V

    return-void
.end method

.method private resetModifierKeysAfterInput(Z)V
    .locals 3

    .line 638
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->shiftPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isShiftLocked:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/16 v2, 0xa0

    invoke-interface {v0, v2, v1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 641
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->shiftPressed:Z

    .line 643
    :cond_1
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->ctrlPressed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isCtrlLocked:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/16 v2, 0xa2

    invoke-interface {v0, v2, v1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 646
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->ctrlPressed:Z

    .line 648
    :cond_3
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->altPressed:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isAltLocked:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/16 v2, 0xa4

    invoke-interface {v0, v2, v1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 651
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->altPressed:Z

    .line 653
    :cond_5
    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->winPressed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isWinLocked:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_7

    .line 655
    :cond_6
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/16 v0, 0x15b

    invoke-interface {p1, v0, v1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 656
    iput-boolean v1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->winPressed:Z

    .line 659
    :cond_7
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    if-eqz p1, :cond_8

    .line 660
    invoke-interface {p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->modifiersChanged()V

    :cond_8
    return-void
.end method

.method private switchKeyboard(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 681
    :pswitch_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->switchKeyboard(I)V

    goto :goto_0

    .line 675
    :pswitch_1
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->switchKeyboard(I)V

    goto :goto_0

    .line 669
    :pswitch_2
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->switchKeyboard(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearlAllModifiers()V
    .locals 1

    const/4 v0, 0x1

    .line 633
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->resetModifierKeysAfterInput(Z)V

    return-void
.end method

.method public getModifierState(I)I
    .locals 5

    .line 529
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->getExtendedKeyCode(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    const/16 v0, 0x5b

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq p1, v0, :cond_a

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_1

    return v1

    .line 550
    :cond_1
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->altPressed:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isAltLocked:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    return v2

    .line 545
    :cond_4
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->ctrlPressed:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isCtrlLocked:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    move v2, v4

    :goto_1
    return v2

    .line 540
    :cond_7
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->shiftPressed:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isShiftLocked:Z

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    move v2, v4

    :goto_2
    return v2

    .line 554
    :cond_a
    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->winPressed:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isWinLocked:Z

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    move v2, v3

    goto :goto_3

    :cond_c
    move v2, v4

    :goto_3
    return v2
.end method

.method public init(Landroid/content/Context;)V
    .locals 19

    .line 232
    sget-boolean v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->initialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x100

    .line 235
    new-array v2, v0, [I

    sput-object v2, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapAndroid:[I

    const/4 v3, 0x7

    const/16 v4, 0x30

    .line 237
    aput v4, v2, v3

    const/16 v3, 0x8

    const/16 v5, 0x31

    .line 238
    aput v5, v2, v3

    const/16 v6, 0x9

    const/16 v7, 0x32

    .line 239
    aput v7, v2, v6

    const/16 v8, 0xa

    const/16 v9, 0x33

    .line 240
    aput v9, v2, v8

    const/16 v8, 0xb

    const/16 v10, 0x34

    .line 241
    aput v10, v2, v8

    const/16 v8, 0xc

    const/16 v11, 0x35

    .line 242
    aput v11, v2, v8

    const/16 v8, 0xd

    const/16 v12, 0x36

    .line 243
    aput v12, v2, v8

    const/16 v13, 0xe

    const/16 v14, 0x37

    .line 244
    aput v14, v2, v13

    const/16 v13, 0xf

    const/16 v14, 0x38

    .line 245
    aput v14, v2, v13

    const/16 v13, 0x10

    const/16 v14, 0x39

    .line 246
    aput v14, v2, v13

    const/16 v13, 0x1d

    const/16 v14, 0x41

    .line 248
    aput v14, v2, v13

    const/16 v13, 0x1e

    const/16 v14, 0x42

    .line 249
    aput v14, v2, v13

    const/16 v13, 0x1f

    const/16 v15, 0x43

    .line 250
    aput v15, v2, v13

    const/16 v13, 0x44

    const/16 v16, 0x20

    .line 251
    aput v13, v2, v16

    const/16 v13, 0x21

    const/16 v17, 0x45

    .line 252
    aput v17, v2, v13

    const/16 v13, 0x22

    const/16 v17, 0x46

    .line 253
    aput v17, v2, v13

    const/16 v13, 0x23

    const/16 v17, 0x47

    .line 254
    aput v17, v2, v13

    const/16 v13, 0x24

    const/16 v17, 0x48

    .line 255
    aput v17, v2, v13

    const/16 v13, 0x25

    const/16 v17, 0x49

    .line 256
    aput v17, v2, v13

    const/16 v13, 0x26

    const/16 v17, 0x4a

    .line 257
    aput v17, v2, v13

    const/16 v13, 0x27

    const/16 v17, 0x4b

    .line 258
    aput v17, v2, v13

    const/16 v13, 0x28

    const/16 v17, 0x4c

    .line 259
    aput v17, v2, v13

    const/16 v13, 0x29

    const/16 v17, 0x4d

    .line 260
    aput v17, v2, v13

    const/16 v13, 0x4e

    const/16 v17, 0x2a

    .line 261
    aput v13, v2, v17

    const/16 v13, 0x2b

    const/16 v18, 0x4f

    .line 262
    aput v18, v2, v13

    const/16 v13, 0x2c

    const/16 v18, 0x50

    .line 263
    aput v18, v2, v13

    const/16 v13, 0x2d

    const/16 v18, 0x51

    .line 264
    aput v18, v2, v13

    const/16 v13, 0x2e

    const/16 v18, 0x52

    .line 265
    aput v18, v2, v13

    const/16 v13, 0x2f

    const/16 v18, 0x53

    .line 266
    aput v18, v2, v13

    const/16 v13, 0x54

    .line 267
    aput v13, v2, v4

    const/16 v4, 0x55

    .line 268
    aput v4, v2, v5

    const/16 v4, 0x56

    .line 269
    aput v4, v2, v7

    const/16 v4, 0x57

    .line 270
    aput v4, v2, v9

    const/16 v4, 0x58

    .line 271
    aput v4, v2, v10

    const/16 v4, 0x59

    .line 272
    aput v4, v2, v11

    const/16 v4, 0x5a

    .line 273
    aput v4, v2, v12

    .line 275
    aput v3, v2, v15

    .line 276
    aput v8, v2, v14

    const/16 v4, 0x3e

    .line 277
    aput v16, v2, v4

    const/16 v4, 0x3d

    .line 278
    aput v6, v2, v4

    .line 312
    new-array v0, v0, [I

    sput-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F1:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x70

    aput v4, v0, v2

    .line 314
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F2:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x71

    aput v4, v0, v2

    .line 315
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F3:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x72

    aput v4, v0, v2

    .line 316
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F4:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x73

    aput v4, v0, v2

    .line 317
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F5:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x74

    aput v4, v0, v2

    .line 318
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F6:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x75

    aput v4, v0, v2

    .line 319
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F7:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x76

    aput v4, v0, v2

    .line 320
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F8:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x77

    aput v4, v0, v2

    .line 321
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F9:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x78

    aput v4, v0, v2

    .line 322
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F10:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x79

    aput v4, v0, v2

    .line 323
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F11:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x7a

    aput v4, v0, v2

    .line 324
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F12:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x7b

    aput v4, v0, v2

    .line 325
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_tab:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v6, v0, v2

    .line 326
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_print:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v17, v0, v2

    .line 327
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_insert:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x12d

    aput v4, v0, v2

    .line 329
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_delete:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x12e

    aput v4, v0, v2

    .line 331
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_home:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x124

    aput v4, v0, v2

    .line 332
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_end:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x123

    aput v4, v0, v2

    .line 333
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_pgup:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x121

    aput v4, v0, v2

    .line 335
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_pgdn:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x122

    aput v4, v0, v2

    .line 338
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_0:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x60

    aput v4, v0, v2

    .line 339
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_1:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x61

    aput v4, v0, v2

    .line 340
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_2:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x62

    aput v4, v0, v2

    .line 341
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_3:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x63

    aput v4, v0, v2

    .line 342
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_4:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x64

    aput v4, v0, v2

    .line 343
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_5:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x65

    aput v4, v0, v2

    .line 344
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_6:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x66

    aput v4, v0, v2

    .line 345
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_7:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x67

    aput v4, v0, v2

    .line 346
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_8:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x68

    aput v4, v0, v2

    .line 347
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_9:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x69

    aput v4, v0, v2

    .line 348
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_numlock:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x90

    aput v4, v0, v2

    .line 349
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_add:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x6b

    aput v4, v0, v2

    .line 350
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_comma:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x6e

    aput v4, v0, v2

    .line 351
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_divide:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x16f

    aput v4, v0, v2

    .line 353
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_enter:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x10d

    aput v4, v0, v2

    .line 355
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_multiply:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v5, 0x6a

    aput v5, v0, v2

    .line 357
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_subtract:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v5, 0x6d

    aput v5, v0, v2

    .line 359
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_equals:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v5, -0x7fffffc3

    aput v5, v0, v2

    .line 361
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_left_paren:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v5, -0x7fffffd8

    aput v5, v0, v2

    .line 363
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_right_paren:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v5, -0x7fffffd7

    aput v5, v0, v2

    .line 367
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_up:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v5, 0x126

    aput v5, v0, v2

    .line 368
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_down:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v5, 0x128

    aput v5, v0, v2

    .line 369
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_left:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v5, 0x125

    aput v5, v0, v2

    .line 370
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_right:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v5, 0x127

    aput v5, v0, v2

    .line 372
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/freerdp/freerdpcore/R$integer;->keycode_enter:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v4, v0, v2

    .line 374
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_backspace:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v3, v0, v2

    .line 377
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_win:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x15b

    aput v3, v0, v2

    .line 378
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_menu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x15d

    aput v3, v0, v2

    .line 379
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_esc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x1b

    aput v3, v0, v2

    .line 388
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_specialkeys_keyboard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x1100

    aput v3, v0, v2

    .line 390
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_keyboard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x1101

    aput v3, v0, v2

    .line 392
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_cursor_keyboard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x1102

    aput v3, v0, v2

    .line 395
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_toggle_shift:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x400000a0    # 2.0000381f

    aput v3, v0, v2

    .line 397
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_toggle_ctrl:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x400000a2    # 2.0000386f

    aput v3, v0, v2

    .line 399
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_toggle_alt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x400000a4    # 2.000039f

    aput v3, v0, v2

    .line 401
    sget-object v0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_toggle_win:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x4000005b    # 2.0000217f

    aput v3, v0, v2

    .line 404
    sput-boolean v1, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->initialized:Z

    return-void
.end method

.method public processAndroidKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 423
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    .line 469
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    .line 470
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {v0, v3}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processUnicodeKey(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 433
    :cond_2
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->isModifierPressed()Z

    move-result v0

    .line 437
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->getVirtualKeyCode(I)I

    move-result v3

    const/high16 v4, -0x80000000

    and-int/2addr v4, v3

    if-eqz v4, :cond_3

    .line 439
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    invoke-interface {p1, v3}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processUnicodeKey(I)V

    goto :goto_1

    :cond_3
    if-lez v3, :cond_4

    .line 443
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    if-nez v4, :cond_4

    .line 446
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v3, v1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 447
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v3, v2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_1

    .line 449
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 451
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/16 v4, 0xa0

    invoke-interface {p1, v4, v1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 452
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v3, v1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 453
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v3, v2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 454
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v4, v2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_1

    .line 456
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    if-eqz v3, :cond_7

    .line 457
    iget-object v3, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    invoke-interface {v3, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processUnicodeKey(I)V

    :goto_1
    if-eqz v0, :cond_6

    .line 463
    invoke-direct {p0, v2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->resetModifierKeysAfterInput(Z)V

    :cond_6
    return v1

    :cond_7
    return v2
.end method

.method public processCustomKeyEvent(I)V
    .locals 3

    .line 483
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->getExtendedKeyCode(I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    .line 490
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->processToggleButton(I)V

    return-void

    :cond_1
    const/16 v0, 0x1100

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1101

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1102

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const v2, 0x7fffffff

    and-int/2addr p1, v2

    invoke-interface {v0, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processUnicodeKey(I)V

    goto :goto_0

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 508
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {v0, p1, v1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 511
    :goto_0
    invoke-direct {p0, v1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->resetModifierKeysAfterInput(Z)V

    return-void

    .line 498
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->switchKeyboard(I)V

    return-void
.end method

.method public reset(Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->shiftPressed:Z

    .line 410
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->ctrlPressed:Z

    .line 411
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->altPressed:Z

    .line 412
    iput-boolean v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->winPressed:Z

    .line 413
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->setKeyProcessingListener(Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;)V

    return-void
.end method

.method public sendAltF4()V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/16 v1, 0xa4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 517
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/16 v3, 0x73

    invoke-interface {v0, v3, v2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 518
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 519
    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    invoke-interface {v0, v1, v2}, Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    return-void
.end method

.method public setKeyProcessingListener(Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/KeyboardMapper;->listener:Lcom/freerdp/freerdpcore/utils/KeyboardMapper$KeyProcessingListener;

    return-void
.end method
