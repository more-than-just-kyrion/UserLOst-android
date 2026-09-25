.class public Lcom/iiordanov/bVNC/input/MetaKeyBean;
.super Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;
.source "MetaKeyBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;",
        "Ljava/lang/Comparable<",
        "Lcom/iiordanov/bVNC/input/MetaKeyBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEW:Lcom/antlersoft/android/dbimpl/NewInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/antlersoft/android/dbimpl/NewInstance<",
            "Lcom/iiordanov/bVNC/input/MetaKeyBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final allKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iiordanov/bVNC/input/MetaKeyBase;",
            ">;"
        }
    .end annotation
.end field

.field public static final allKeysNames:[Ljava/lang/String;

.field public static final keyArrowDown:Lcom/iiordanov/bVNC/input/MetaKeyBean;

.field public static final keyArrowLeft:Lcom/iiordanov/bVNC/input/MetaKeyBean;

.field public static final keyArrowRight:Lcom/iiordanov/bVNC/input/MetaKeyBean;

.field public static final keyArrowUp:Lcom/iiordanov/bVNC/input/MetaKeyBean;

.field public static final keyCtrlAltDel:Lcom/iiordanov/bVNC/input/MetaKeyBean;

.field public static final keysByKeyCode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iiordanov/bVNC/input/MetaKeyBase;",
            ">;"
        }
    .end annotation
.end field

.field public static final keysByKeySym:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iiordanov/bVNC/input/MetaKeyBase;",
            ">;"
        }
    .end annotation
.end field

.field public static final keysByMouseButton:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iiordanov/bVNC/input/MetaKeyBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _regenDesc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Hangul"

    const v3, 0xff31

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Hangul_Start"

    const v3, 0xff32

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Hangul_End"

    const v3, 0xff33

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Hangul_Hanja"

    const v3, 0xff34

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Kana_Shift"

    const v3, 0xff2e

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Right_Alt"

    const v3, 0xffea

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Left_Alt"

    const v3, 0xffe9

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Left_Control"

    const v3, 0xffe3

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Right_Control"

    const v3, 0xffe4

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Left_Shift"

    const v3, 0xffe1

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Right_Shift"

    const v3, 0xffe2

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Left_Super"

    const v3, 0xffeb

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Right_Super"

    const v3, 0xffec

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const/4 v2, 0x1

    const-string v3, "Mouse Left"

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const/4 v2, 0x2

    const-string v3, "Mouse Middle"

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const/4 v2, 0x4

    const-string v3, "Mouse Right"

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const/16 v2, 0x10

    const-string v3, "Mouse Scroll Down"

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const/16 v2, 0x8

    const-string v3, "Mouse Scroll Up"

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Home"

    const v3, 0xff50

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Arrow Left"

    const v3, 0xff51

    invoke-direct {v1, v2, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Arrow Up"

    const v4, 0xff52

    invoke-direct {v1, v2, v4}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Arrow Right"

    const v5, 0xff53

    invoke-direct {v1, v2, v5}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Arrow Down"

    const v6, 0xff54

    invoke-direct {v1, v2, v6}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Page Up"

    const v7, 0xff55

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Page Down"

    const v7, 0xff56

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "End"

    const v7, 0xff57

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Insert"

    const v7, 0xff63

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Delete"

    const v7, 0xffff

    const/16 v8, 0x43

    invoke-direct {v1, v2, v7, v8}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Delete Forward"

    const/16 v9, 0x70

    invoke-direct {v1, v2, v7, v9}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Num Lock"

    const v7, 0xff7f

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Break"

    const v7, 0xff6b

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Scroll Lock"

    const v7, 0xff14

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Print Scrn/Sys Rq"

    const v7, 0xff61

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "Escape"

    const v7, 0xff1b

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const v2, 0xff0d

    const/16 v7, 0x42

    const-string v9, "Enter"

    invoke-direct {v1, v9, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const v2, 0xff09

    const/16 v7, 0x3d

    const-string v9, "Tab"

    invoke-direct {v1, v9, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-string v2, "BackSpace"

    const v7, 0xff08

    invoke-direct {v1, v2, v7}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const/16 v2, 0x3e

    const-string v7, "Space"

    const/16 v9, 0x20

    invoke-direct {v1, v7, v9, v2}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v7, 0x1a

    if-ge v2, v7, :cond_0

    add-int/lit8 v7, v2, 0x41

    int-to-char v7, v7

    .line 98
    invoke-virtual {v0, v1, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 99
    sget-object v7, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    new-instance v10, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v2, 0x61

    add-int/lit8 v13, v2, 0x1d

    invoke-direct {v10, v11, v12, v13}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    const/16 v7, 0xa

    if-ge v2, v7, :cond_1

    add-int/lit8 v7, v2, 0x30

    int-to-char v10, v7

    .line 104
    invoke-virtual {v0, v1, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 105
    sget-object v10, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    new-instance v11, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v2, 0x7

    invoke-direct {v11, v12, v7, v13}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_2
    const/16 v7, 0xc

    if-ge v2, v7, :cond_3

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v7, 0x46

    .line 111
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    if-ge v2, v7, :cond_2

    .line 113
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v7, v2, 0x1

    .line 114
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    sget-object v10, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    new-instance v11, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const v13, 0xffbe

    add-int/2addr v2, v13

    invoke-direct {v11, v12, v2}, Lcom/iiordanov/bVNC/input/MetaKeyBase;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v7

    goto :goto_2

    .line 118
    :cond_3
    sget-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeysNames:[Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeyCode:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByMouseButton:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeySym:Ljava/util/HashMap;

    move v0, v1

    .line 123
    :goto_3
    sget-object v2, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeysNames:[Ljava/lang/String;

    array-length v7, v2

    if-ge v0, v7, :cond_6

    .line 125
    sget-object v7, Lcom/iiordanov/bVNC/input/MetaKeyBean;->allKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    .line 126
    iget-object v9, v7, Lcom/iiordanov/bVNC/input/MetaKeyBase;->name:Ljava/lang/String;

    aput-object v9, v2, v0

    .line 127
    iget-boolean v2, v7, Lcom/iiordanov/bVNC/input/MetaKeyBase;->isKeyEvent:Z

    if-eqz v2, :cond_4

    .line 128
    sget-object v2, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeyCode:Ljava/util/HashMap;

    iget v9, v7, Lcom/iiordanov/bVNC/input/MetaKeyBase;->keyEvent:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_4
    iget-boolean v2, v7, Lcom/iiordanov/bVNC/input/MetaKeyBase;->isMouse:Z

    if-eqz v2, :cond_5

    .line 130
    sget-object v2, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByMouseButton:Ljava/util/HashMap;

    iget v9, v7, Lcom/iiordanov/bVNC/input/MetaKeyBase;->mouseButtons:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 132
    :cond_5
    sget-object v2, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeySym:Ljava/util/HashMap;

    iget v9, v7, Lcom/iiordanov/bVNC/input/MetaKeyBase;->keySym:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 134
    :cond_6
    new-instance v0, Lcom/iiordanov/bVNC/input/MetaKeyBean$1;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean$1;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->NEW:Lcom/antlersoft/android/dbimpl/NewInstance;

    .line 144
    new-instance v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    sget-object v2, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeyCode:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    const-wide/16 v7, 0x0

    const/16 v9, 0x1002

    invoke-direct {v0, v7, v8, v9, v2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(JILcom/iiordanov/bVNC/input/MetaKeyBase;)V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keyCtrlAltDel:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 145
    new-instance v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    sget-object v2, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeySym:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-direct {v0, v7, v8, v1, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(JILcom/iiordanov/bVNC/input/MetaKeyBase;)V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keyArrowLeft:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 146
    new-instance v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-direct {v0, v7, v8, v1, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(JILcom/iiordanov/bVNC/input/MetaKeyBase;)V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keyArrowUp:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 147
    new-instance v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-direct {v0, v7, v8, v1, v3}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(JILcom/iiordanov/bVNC/input/MetaKeyBase;)V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keyArrowRight:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 148
    new-instance v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(JILcom/iiordanov/bVNC/input/MetaKeyBase;)V

    sput-object v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keyArrowDown:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;-><init>()V

    return-void
.end method

.method public constructor <init>(JILcom/iiordanov/bVNC/input/MetaKeyBase;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;-><init>()V

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMetaListId(J)V

    .line 171
    invoke-virtual {p0, p4}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setKeyBase(Lcom/iiordanov/bVNC/input/MetaKeyBase;)V

    .line 172
    invoke-virtual {p0, p3}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMetaFlags(I)V

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->_regenDesc:Z

    return-void
.end method

.method public constructor <init>(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;-><init>()V

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->_regenDesc:Z

    .line 160
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->isMouseClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMouseButtons()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMouseButtons(I)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeySym()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setKeySym(I)V

    .line 164
    :goto_0
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaListId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMetaListId(J)V

    .line 165
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMetaFlags(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/iiordanov/bVNC/input/MetaKeyBean;)I
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->compareTo(Lcom/iiordanov/bVNC/input/MetaKeyBean;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 290
    instance-of v0, p1, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getKeyDesc()Ljava/lang/String;
    .locals 4

    .line 181
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->_regenDesc:Z

    if-eqz v0, :cond_a

    .line 183
    monitor-enter p0

    .line 185
    :try_start_0
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->_regenDesc:Z

    if-eqz v0, :cond_9

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 191
    const-string v2, "Shift"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit16 v2, v1, 0x1000

    const/16 v3, 0x2d

    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    :cond_1
    const-string v2, "Ctrl"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_4

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 202
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    :cond_3
    const-string v2, "Alt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_5
    const-string v1, "Super"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/16 v1, 0x20

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_7
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->isMouseClick()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 215
    sget-object v1, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByMouseButton:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMouseButtons()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    goto :goto_0

    .line 217
    :cond_8
    sget-object v1, Lcom/iiordanov/bVNC/input/MetaKeyBean;->keysByKeySym:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeySym()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;

    .line 218
    :goto_0
    iget-object v1, v1, Lcom/iiordanov/bVNC/input/MetaKeyBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setKeyDesc(Ljava/lang/String;)V

    .line 221
    :cond_9
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 223
    :cond_a
    :goto_1
    invoke-super {p0}, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setKeyBase(Lcom/iiordanov/bVNC/input/MetaKeyBase;)V
    .locals 1

    .line 275
    iget-boolean v0, p1, Lcom/iiordanov/bVNC/input/MetaKeyBase;->isMouse:Z

    if-eqz v0, :cond_0

    .line 277
    iget p1, p1, Lcom/iiordanov/bVNC/input/MetaKeyBase;->mouseButtons:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMouseButtons(I)V

    goto :goto_0

    .line 281
    :cond_0
    iget p1, p1, Lcom/iiordanov/bVNC/input/MetaKeyBase;->keySym:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setKeySym(I)V

    :goto_0
    return-void
.end method

.method public setKeyDesc(Ljava/lang/String;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->setKeyDesc(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 232
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->_regenDesc:Z

    return-void
.end method

.method public setKeySym(I)V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeySym()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->isMouseClick()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMouseClick(Z)V

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->_regenDesc:Z

    .line 244
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->setKeySym(I)V

    :cond_1
    return-void
.end method

.method public setMetaFlags(I)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMetaFlags()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->_regenDesc:Z

    .line 256
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->setMetaFlags(I)V

    :cond_0
    return-void
.end method

.method public setMouseButtons(I)V
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getMouseButtons()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->isMouseClick()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->setMouseClick(Z)V

    .line 268
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/input/MetaKeyBean;->_regenDesc:Z

    .line 269
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/input/AbstractMetaKeyBean;->setMouseButtons(I)V

    :cond_1
    return-void
.end method
