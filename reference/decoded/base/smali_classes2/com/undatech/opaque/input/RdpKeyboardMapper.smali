.class public Lcom/undatech/opaque/input/RdpKeyboardMapper;
.super Ljava/lang/Object;
.source "RdpKeyboardMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;
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

.field private static final KEY_FLAG_SHIFT:I = 0x20000000

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

.field static final VK_OEM_EQUALS:I = 0xbb

.field static final VK_OEM_MINUS:I = 0xbd

.field static final VK_OEM_PERIOD:I = 0xbe

.field static final VK_OEM_SEMICOLON:I = 0xba

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

.field private listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

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

    .line 37
    iput-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->shiftPressed:Z

    .line 237
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->ctrlPressed:Z

    .line 238
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->altPressed:Z

    .line 239
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->winPressed:Z

    const/4 v1, -0x1

    .line 242
    iput v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->lastModifierKeyCode:I

    .line 244
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isShiftLocked:Z

    .line 245
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isCtrlLocked:Z

    .line 246
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isAltLocked:Z

    .line 247
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isWinLocked:Z

    return-void
.end method

.method private checkToggleModifierLock(I)Z
    .locals 8

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 735
    iget v2, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->lastModifierKeyCode:I

    const/4 v3, 0x0

    if-eq v2, p1, :cond_0

    .line 737
    iput p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->lastModifierKeyCode:I

    .line 738
    iput-wide v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->lastModifierTime:J

    return v3

    .line 743
    :cond_0
    iget-wide v4, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->lastModifierTime:J

    const-wide/16 v6, 0x320

    add-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-lez p1, :cond_1

    const-wide/16 v0, 0x0

    .line 745
    iput-wide v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->lastModifierTime:J

    const/4 p1, 0x1

    return p1

    .line 750
    :cond_1
    iput-wide v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->lastModifierTime:J

    return v3
.end method

.method private getExtendedKeyCode(I)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 615
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

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

    .line 609
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapAndroid:[I

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isModifierPressed()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->shiftPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->ctrlPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->altPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->winPressed:Z

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

    .line 648
    :cond_0
    invoke-direct {p0, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->checkToggleModifierLock(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 650
    iput-boolean v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isAltLocked:Z

    .line 651
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->altPressed:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->altPressed:Z

    .line 652
    iget-object v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {v1, v0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_0

    .line 655
    :cond_1
    iput-boolean v2, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isAltLocked:Z

    goto :goto_0

    .line 636
    :cond_2
    invoke-direct {p0, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->checkToggleModifierLock(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 638
    iput-boolean v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isCtrlLocked:Z

    .line 639
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->ctrlPressed:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->ctrlPressed:Z

    .line 640
    iget-object v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {v1, v0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_0

    .line 643
    :cond_3
    iput-boolean v2, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isCtrlLocked:Z

    goto :goto_0

    .line 624
    :cond_4
    invoke-direct {p0, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->checkToggleModifierLock(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 626
    iput-boolean v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isShiftLocked:Z

    .line 627
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->shiftPressed:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->shiftPressed:Z

    .line 628
    iget-object v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {v1, v0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_0

    .line 631
    :cond_5
    iput-boolean v2, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isShiftLocked:Z

    goto :goto_0

    .line 660
    :cond_6
    invoke-direct {p0, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->checkToggleModifierLock(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 662
    iput-boolean v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isWinLocked:Z

    .line 663
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->winPressed:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->winPressed:Z

    .line 664
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/16 v1, 0x15b

    invoke-interface {v0, v1, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_0

    .line 667
    :cond_7
    iput-boolean v2, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isWinLocked:Z

    .line 671
    :goto_0
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->modifiersChanged()V

    return-void
.end method

.method private resetModifierKeysAfterInput(Z)V
    .locals 3

    .line 680
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->shiftPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isShiftLocked:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/16 v2, 0xa0

    invoke-interface {v0, v2, v1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 683
    iput-boolean v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->shiftPressed:Z

    .line 685
    :cond_1
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->ctrlPressed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isCtrlLocked:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/16 v2, 0xa2

    invoke-interface {v0, v2, v1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 688
    iput-boolean v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->ctrlPressed:Z

    .line 690
    :cond_3
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->altPressed:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isAltLocked:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    .line 692
    :cond_4
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/16 v2, 0xa4

    invoke-interface {v0, v2, v1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 693
    iput-boolean v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->altPressed:Z

    .line 695
    :cond_5
    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->winPressed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isWinLocked:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_7

    .line 697
    :cond_6
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/16 v0, 0x15b

    invoke-interface {p1, v0, v1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 698
    iput-boolean v1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->winPressed:Z

    .line 701
    :cond_7
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    if-eqz p1, :cond_8

    .line 702
    invoke-interface {p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->modifiersChanged()V

    :cond_8
    return-void
.end method

.method private switchKeyboard(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 722
    :pswitch_0
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->switchKeyboard(I)V

    goto :goto_0

    .line 716
    :pswitch_1
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->switchKeyboard(I)V

    goto :goto_0

    .line 710
    :pswitch_2
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->switchKeyboard(I)V

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

    .line 676
    invoke-direct {p0, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->resetModifierKeysAfterInput(Z)V

    return-void
.end method

.method public getModifierState(I)I
    .locals 5

    .line 577
    invoke-direct {p0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->getExtendedKeyCode(I)I

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

    .line 596
    :cond_1
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->altPressed:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isAltLocked:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    return v2

    .line 592
    :cond_4
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->ctrlPressed:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isCtrlLocked:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    move v2, v4

    :goto_1
    return v2

    .line 588
    :cond_7
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->shiftPressed:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isShiftLocked:Z

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    move v2, v4

    :goto_2
    return v2

    .line 600
    :cond_a
    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->winPressed:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isWinLocked:Z

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
    .locals 18

    .line 251
    sget-boolean v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->initialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x100

    .line 254
    new-array v2, v0, [I

    sput-object v2, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapAndroid:[I

    const/4 v3, 0x7

    const/16 v4, 0x30

    .line 256
    aput v4, v2, v3

    const/16 v3, 0x8

    const/16 v5, 0x31

    .line 257
    aput v5, v2, v3

    const/16 v6, 0x9

    const/16 v7, 0x32

    .line 258
    aput v7, v2, v6

    const/16 v8, 0xa

    const/16 v9, 0x33

    .line 259
    aput v9, v2, v8

    const/16 v8, 0xb

    const/16 v10, 0x34

    .line 260
    aput v10, v2, v8

    const/16 v8, 0xc

    const/16 v11, 0x35

    .line 261
    aput v11, v2, v8

    const/16 v8, 0x36

    const/16 v12, 0xd

    .line 262
    aput v8, v2, v12

    const/16 v8, 0xe

    const/16 v13, 0x37

    .line 263
    aput v13, v2, v8

    const/16 v8, 0xf

    const/16 v13, 0x38

    .line 264
    aput v13, v2, v8

    const/16 v8, 0x10

    const/16 v13, 0x39

    .line 265
    aput v13, v2, v8

    const/16 v8, 0x1d

    const/16 v13, 0x41

    .line 267
    aput v13, v2, v8

    const/16 v8, 0x1e

    const/16 v13, 0x42

    .line 268
    aput v13, v2, v8

    const/16 v8, 0x1f

    const/16 v13, 0x43

    .line 269
    aput v13, v2, v8

    const/16 v8, 0x20

    const/16 v13, 0x44

    .line 270
    aput v13, v2, v8

    const/16 v8, 0x21

    const/16 v13, 0x45

    .line 271
    aput v13, v2, v8

    const/16 v8, 0x22

    const/16 v13, 0x46

    .line 272
    aput v13, v2, v8

    const/16 v8, 0x23

    const/16 v13, 0x47

    .line 273
    aput v13, v2, v8

    const/16 v8, 0x24

    const/16 v13, 0x48

    .line 274
    aput v13, v2, v8

    const/16 v8, 0x25

    const/16 v13, 0x49

    .line 275
    aput v13, v2, v8

    const/16 v8, 0x26

    const/16 v13, 0x4a

    .line 276
    aput v13, v2, v8

    const/16 v8, 0x27

    const/16 v13, 0x4b

    .line 277
    aput v13, v2, v8

    const/16 v8, 0x28

    const/16 v13, 0x4c

    .line 278
    aput v13, v2, v8

    const/16 v8, 0x29

    const/16 v13, 0x4d

    .line 279
    aput v13, v2, v8

    const/16 v8, 0x4e

    const/16 v13, 0x2a

    .line 280
    aput v8, v2, v13

    const/16 v8, 0x2b

    const/16 v14, 0x4f

    .line 281
    aput v14, v2, v8

    const/16 v8, 0x2c

    const/16 v14, 0x50

    .line 282
    aput v14, v2, v8

    const/16 v8, 0x2d

    const/16 v14, 0x51

    .line 283
    aput v14, v2, v8

    const/16 v8, 0x2e

    const/16 v14, 0x52

    .line 284
    aput v14, v2, v8

    const/16 v8, 0x2f

    const/16 v14, 0x53

    .line 285
    aput v14, v2, v8

    const/16 v8, 0x54

    .line 286
    aput v8, v2, v4

    const/16 v4, 0x55

    .line 287
    aput v4, v2, v5

    const/16 v4, 0x56

    .line 288
    aput v4, v2, v7

    const/16 v4, 0x57

    .line 289
    aput v4, v2, v9

    const/16 v4, 0x58

    .line 290
    aput v4, v2, v10

    const/16 v4, 0x59

    .line 291
    aput v4, v2, v11

    const/16 v4, 0x36

    const/16 v5, 0x5a

    .line 292
    aput v5, v2, v4

    const/16 v4, 0x43

    .line 294
    aput v3, v2, v4

    const/16 v4, 0x42

    .line 295
    aput v12, v2, v4

    const/16 v4, 0x3e

    const/16 v5, 0x20

    .line 296
    aput v5, v2, v4

    const/16 v4, 0x3b

    const/16 v5, 0xa0

    .line 297
    aput v5, v2, v4

    const/16 v4, 0x3c

    const/16 v5, 0xa1

    .line 298
    aput v5, v2, v4

    const/16 v4, 0x14

    const/16 v5, 0x128

    .line 300
    aput v5, v2, v4

    const/16 v4, 0x15

    const/16 v5, 0x125

    .line 301
    aput v5, v2, v4

    const/16 v4, 0x16

    const/16 v5, 0x127

    .line 302
    aput v5, v2, v4

    const/16 v4, 0x13

    const/16 v5, 0x126

    .line 303
    aput v5, v2, v4

    const/16 v4, 0x5c

    const/16 v5, 0x121

    .line 305
    aput v5, v2, v4

    const/16 v4, 0x5d

    const/16 v5, 0x122

    .line 306
    aput v5, v2, v4

    const/16 v4, 0x6f

    const/16 v5, 0x1b

    .line 307
    aput v5, v2, v4

    const/16 v4, 0x12e

    const/16 v7, 0x70

    .line 308
    aput v4, v2, v7

    const/16 v4, 0xa2

    const/16 v8, 0x71

    .line 309
    aput v4, v2, v8

    const/16 v4, 0xa3

    const/16 v9, 0x72

    .line 310
    aput v4, v2, v9

    const/16 v4, 0x14

    const/16 v10, 0x73

    .line 311
    aput v4, v2, v10

    const/16 v4, 0x91

    const/16 v11, 0x74

    .line 312
    aput v4, v2, v11

    const/16 v4, 0x78

    .line 313
    aput v13, v2, v4

    const/16 v12, 0x13

    const/16 v14, 0x79

    .line 314
    aput v12, v2, v14

    const/16 v12, 0x124

    const/16 v15, 0x7a

    .line 315
    aput v12, v2, v15

    const/16 v12, 0x123

    const/16 v16, 0x7b

    .line 316
    aput v12, v2, v16

    const/16 v12, 0x7c

    const/16 v17, 0x12d

    .line 317
    aput v17, v2, v12

    const/16 v12, 0x83

    .line 318
    aput v7, v2, v12

    const/16 v12, 0x84

    .line 319
    aput v8, v2, v12

    const/16 v12, 0x85

    .line 320
    aput v9, v2, v12

    const/16 v12, 0x86

    .line 321
    aput v10, v2, v12

    const/16 v12, 0x87

    .line 322
    aput v11, v2, v12

    const/16 v12, 0x88

    const/16 v17, 0x75

    .line 323
    aput v17, v2, v12

    const/16 v12, 0x89

    const/16 v17, 0x76

    .line 324
    aput v17, v2, v12

    const/16 v12, 0x8a

    const/16 v17, 0x77

    .line 325
    aput v17, v2, v12

    const/16 v12, 0x8b

    .line 326
    aput v4, v2, v12

    const/16 v12, 0x8c

    .line 327
    aput v14, v2, v12

    const/16 v12, 0x8d

    .line 328
    aput v15, v2, v12

    const/16 v12, 0x8e

    .line 329
    aput v16, v2, v12

    const/16 v12, 0x8f

    const/16 v17, 0x90

    .line 330
    aput v17, v2, v12

    const/16 v12, 0x3d

    .line 332
    aput v6, v2, v12

    const/16 v12, 0x37

    const/16 v17, 0xbc

    .line 334
    aput v17, v2, v12

    const/16 v12, 0x38

    const/16 v17, 0xbe

    .line 335
    aput v17, v2, v12

    const/16 v12, 0x45

    const/16 v17, 0xbd

    .line 336
    aput v17, v2, v12

    const/16 v12, 0x4a

    const/16 v17, 0xba

    .line 337
    aput v17, v2, v12

    const/16 v12, 0x51

    const/16 v17, 0x6b

    .line 338
    aput v17, v2, v12

    const/16 v12, 0x46

    const/16 v17, 0xbb

    .line 339
    aput v17, v2, v12

    const/16 v12, 0x4b

    const/16 v17, 0xde

    .line 341
    aput v17, v2, v12

    const/16 v12, 0x49

    const/16 v17, 0xdc

    .line 343
    aput v17, v2, v12

    const/16 v12, 0x44

    const/16 v17, 0xc0

    .line 344
    aput v17, v2, v12

    const/16 v12, 0x47

    const/16 v17, 0xdb

    .line 345
    aput v17, v2, v12

    const/16 v12, 0x48

    const/16 v17, 0xdd

    .line 346
    aput v17, v2, v12

    const/4 v12, 0x4

    .line 348
    aput v5, v2, v12

    const/16 v12, 0x4c

    const/16 v17, 0xbf

    .line 350
    aput v17, v2, v12

    const/16 v12, 0x4d

    const v17, 0x20000032

    .line 351
    aput v17, v2, v12

    const/16 v12, 0x12

    const v17, 0x20000033

    .line 352
    aput v17, v2, v12

    const/16 v12, 0x11

    const v17, 0x20000038

    .line 353
    aput v17, v2, v12

    .line 375
    new-array v0, v0, [I

    sput-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v12, Lcom/freerdp/freerdpcore/R$integer;->keycode_F1:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v7, v0, v2

    .line 377
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/freerdp/freerdpcore/R$integer;->keycode_F2:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v8, v0, v2

    .line 378
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/freerdp/freerdpcore/R$integer;->keycode_F3:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v9, v0, v2

    .line 379
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/freerdp/freerdpcore/R$integer;->keycode_F4:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v10, v0, v2

    .line 380
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/freerdp/freerdpcore/R$integer;->keycode_F5:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v11, v0, v2

    .line 381
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/freerdp/freerdpcore/R$integer;->keycode_F6:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v7, 0x75

    aput v7, v0, v2

    .line 382
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/freerdp/freerdpcore/R$integer;->keycode_F7:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v7, 0x76

    aput v7, v0, v2

    .line 383
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/freerdp/freerdpcore/R$integer;->keycode_F8:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v7, 0x77

    aput v7, v0, v2

    .line 384
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/freerdp/freerdpcore/R$integer;->keycode_F9:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v4, v0, v2

    .line 385
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F10:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v14, v0, v2

    .line 386
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F11:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v15, v0, v2

    .line 387
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_F12:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v16, v0, v2

    .line 388
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_tab:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v6, v0, v2

    .line 389
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_print:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v13, v0, v2

    .line 390
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_insert:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x12d

    aput v4, v0, v2

    .line 391
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_delete:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x12e

    aput v4, v0, v2

    .line 392
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_home:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x124

    aput v4, v0, v2

    .line 393
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_end:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x123

    aput v4, v0, v2

    .line 394
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_pgup:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x121

    aput v4, v0, v2

    .line 395
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_pgdn:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x122

    aput v4, v0, v2

    .line 398
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_0:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x60

    aput v4, v0, v2

    .line 399
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_1:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x61

    aput v4, v0, v2

    .line 400
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_2:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x62

    aput v4, v0, v2

    .line 401
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_3:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x63

    aput v4, v0, v2

    .line 402
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_4:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x64

    aput v4, v0, v2

    .line 403
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_5:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x65

    aput v4, v0, v2

    .line 404
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_6:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x66

    aput v4, v0, v2

    .line 405
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_7:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x67

    aput v4, v0, v2

    .line 406
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_8:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x68

    aput v4, v0, v2

    .line 407
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_9:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x69

    aput v4, v0, v2

    .line 408
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_numlock:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x90

    aput v4, v0, v2

    .line 409
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_add:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x6b

    aput v4, v0, v2

    .line 410
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_comma:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x6e

    aput v4, v0, v2

    .line 411
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_divide:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x16f

    aput v4, v0, v2

    .line 412
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_enter:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x10d

    aput v4, v0, v2

    .line 413
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_multiply:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x6a

    aput v4, v0, v2

    .line 414
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_subtract:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x6d

    aput v4, v0, v2

    .line 415
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_equals:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v4, -0x7fffffc3

    aput v4, v0, v2

    .line 416
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_left_paren:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v4, -0x7fffffd8

    aput v4, v0, v2

    .line 417
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_right_paren:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v4, -0x7fffffd7

    aput v4, v0, v2

    .line 420
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_up:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x126

    aput v4, v0, v2

    .line 421
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_down:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x128

    aput v4, v0, v2

    .line 422
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_left:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x125

    aput v4, v0, v2

    .line 423
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_right:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x127

    aput v4, v0, v2

    .line 424
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_enter:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v4, 0x10d

    aput v4, v0, v2

    .line 425
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/freerdp/freerdpcore/R$integer;->keycode_backspace:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v3, v0, v2

    .line 428
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_win:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x15b

    aput v3, v0, v2

    .line 429
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_menu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x15d

    aput v3, v0, v2

    .line 430
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_esc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v5, v0, v2

    .line 437
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_specialkeys_keyboard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x1100

    aput v3, v0, v2

    .line 438
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_numpad_keyboard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x1101

    aput v3, v0, v2

    .line 439
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_cursor_keyboard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x1102

    aput v3, v0, v2

    .line 441
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_toggle_shift:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x400000a0    # 2.0000381f

    aput v3, v0, v2

    .line 442
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_toggle_ctrl:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x400000a2    # 2.0000386f

    aput v3, v0, v2

    .line 443
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_toggle_alt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x400000a4    # 2.000039f

    aput v3, v0, v2

    .line 444
    sget-object v0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->keymapExt:[I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/freerdp/freerdpcore/R$integer;->keycode_toggle_win:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x4000005b    # 2.0000217f

    aput v3, v0, v2

    .line 446
    sput-boolean v1, Lcom/undatech/opaque/input/RdpKeyboardMapper;->initialized:Z

    return-void
.end method

.method public processAndroidKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 462
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->getVirtualKeyCode(I)I

    move-result v0

    .line 464
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa3

    const/16 v3, 0xa2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    return v4

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    .line 521
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processUnicodeKey(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 469
    :cond_3
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v0, v4}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    :cond_4
    return v5

    .line 476
    :cond_5
    invoke-direct {p0}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->isModifierPressed()Z

    move-result v1

    const/high16 v6, -0x80000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_6

    .line 484
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processUnicodeKey(I)V

    goto :goto_2

    :cond_6
    const/high16 v6, 0x20000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_7

    const p1, -0x20000001

    and-int/2addr p1, v0

    .line 488
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/16 v2, 0xa0

    invoke-interface {v0, v2, v5}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 489
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {v0, p1, v5}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 490
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {v0, p1, v4}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 491
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v2, v4}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_2

    :cond_7
    if-eq v0, v3, :cond_b

    if-ne v0, v2, :cond_8

    goto :goto_1

    :cond_8
    if-lez v0, :cond_9

    .line 498
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v0, v5}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 499
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v0, v4}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    goto :goto_2

    .line 501
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-eqz v0, :cond_a

    .line 506
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processUnicodeKey(I)V

    goto :goto_2

    :cond_a
    return v4

    .line 495
    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {p1, v0, v5}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    :goto_2
    if-eqz v1, :cond_c

    .line 514
    invoke-direct {p0, v4}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->resetModifierKeysAfterInput(Z)V

    :cond_c
    return v5
.end method

.method public processCustomKeyEvent(I)V
    .locals 3

    .line 534
    invoke-direct {p0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->getExtendedKeyCode(I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    .line 541
    invoke-direct {p0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->processToggleButton(I)V

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

    .line 554
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const v2, 0x7fffffff

    and-int/2addr p1, v2

    invoke-interface {v0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processUnicodeKey(I)V

    goto :goto_0

    .line 557
    :cond_3
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 558
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {v0, p1, v1}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 561
    :goto_0
    invoke-direct {p0, v1}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->resetModifierKeysAfterInput(Z)V

    return-void

    .line 548
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->switchKeyboard(I)V

    return-void
.end method

.method public reset(Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->shiftPressed:Z

    .line 451
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->ctrlPressed:Z

    .line 452
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->altPressed:Z

    .line 453
    iput-boolean v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->winPressed:Z

    .line 454
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/input/RdpKeyboardMapper;->setKeyProcessingListener(Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;)V

    return-void
.end method

.method public sendAltF4()V
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/16 v1, 0xa4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 567
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/16 v3, 0x73

    invoke-interface {v0, v3, v2}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 568
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    .line 569
    iget-object v0, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    invoke-interface {v0, v1, v2}, Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;->processVirtualKey(IZ)V

    return-void
.end method

.method public setKeyProcessingListener(Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/undatech/opaque/input/RdpKeyboardMapper;->listener:Lcom/undatech/opaque/input/RdpKeyboardMapper$KeyProcessingListener;

    return-void
.end method
