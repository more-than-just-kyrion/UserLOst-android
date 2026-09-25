.class public final Lcom/termux/terminal/KeyHandler;
.super Ljava/lang/Object;
.source "KeyHandler.java"


# static fields
.field public static final KEYMOD_ALT:I = -0x80000000

.field public static final KEYMOD_CTRL:I = 0x40000000

.field public static final KEYMOD_SHIFT:I = 0x20000000

.field private static final TERMCAP_TO_KEYCODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/termux/terminal/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    const v1, 0x20000016

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "%i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000007a

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "#2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000015

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "#4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000007b

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x83

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x84

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x85

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x86

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x87

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x88

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x89

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8a

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8b

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8c

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k;"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8d

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8e

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000083

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000084

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000085

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000086

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000087

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000088

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000089

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008a

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008b

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008c

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008d

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x2000008e

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x43

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7a

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kh"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x15

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "kl"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x16

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "kr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v2, "K1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5c

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "K3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x7b

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "K4"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x5d

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "K5"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x13

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ku"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x2000003d

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kB"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x70

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kD"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x20000014

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kDN"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v5, "kF"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x7c

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kI"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v4, "kN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "kP"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x20000013

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "kR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v3, "kUP"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "@7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "@8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCode(IIZZ)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x4

    .line 152
    const-string v1, "\u001b"

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x3e

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eq p0, v0, :cond_29

    const/high16 v0, -0x80000000

    const-string v4, "\r"

    const/16 v5, 0x42

    if-eq p0, v5, :cond_27

    const/16 v6, 0x43

    if-eq p0, v6, :cond_24

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_23

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_22

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_2d

    const/16 v1, 0x70

    const/16 v2, 0x7e

    if-eq p0, v1, :cond_21

    const-string v7, "\u001b[1"

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p2, "\u001bOP"

    const-string v4, "\u001bO"

    packed-switch p0, :pswitch_data_2

    return-object v3

    :pswitch_0
    if-eqz p3, :cond_0

    const/16 p0, 0x58

    .line 278
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "="

    :goto_0
    return-object p0

    :pswitch_1
    if-eqz p3, :cond_1

    const/16 p0, 0x4d

    .line 244
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "\n"

    :goto_1
    return-object p0

    .line 250
    :pswitch_2
    const-string p0, ","

    return-object p0

    :pswitch_3
    if-eqz p3, :cond_2

    .line 252
    const-string p0, "\u001bOn"

    goto :goto_2

    :cond_2
    const-string p0, "."

    :goto_2
    return-object p0

    :pswitch_4
    if-eqz p3, :cond_3

    const/16 p0, 0x6b

    .line 248
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const-string p0, "+"

    :goto_3
    return-object p0

    :pswitch_5
    if-eqz p3, :cond_4

    const/16 p0, 0x6d

    .line 254
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_4
    const-string p0, "-"

    :goto_4
    return-object p0

    :pswitch_6
    if-eqz p3, :cond_5

    const/16 p0, 0x6a

    .line 246
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_5
    const-string p0, "*"

    :goto_5
    return-object p0

    :pswitch_7
    if-eqz p3, :cond_6

    .line 256
    invoke-static {v4, p1, v0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_6
    const-string p0, "/"

    :goto_6
    return-object p0

    :pswitch_8
    if-eqz p3, :cond_7

    const/16 p0, 0x79

    .line 276
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_7
    const-string p0, "9"

    :goto_7
    return-object p0

    :pswitch_9
    if-eqz p3, :cond_8

    const/16 p0, 0x78

    .line 274
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_8
    const-string p0, "8"

    :goto_8
    return-object p0

    :pswitch_a
    if-eqz p3, :cond_9

    const/16 p0, 0x77

    .line 272
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_9
    const-string p0, "7"

    :goto_9
    return-object p0

    :pswitch_b
    if-eqz p3, :cond_a

    const/16 p0, 0x76

    .line 270
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_a
    const-string p0, "6"

    :goto_a
    return-object p0

    :pswitch_c
    if-eqz p3, :cond_b

    const/16 p0, 0x75

    .line 268
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_b
    const-string p0, "5"

    :goto_b
    return-object p0

    :pswitch_d
    if-eqz p3, :cond_c

    const/16 p0, 0x74

    .line 266
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_c
    const-string p0, "4"

    :goto_c
    return-object p0

    :pswitch_e
    if-eqz p3, :cond_d

    const/16 p0, 0x73

    .line 264
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_d
    const-string p0, "3"

    :goto_d
    return-object p0

    :pswitch_f
    if-eqz p3, :cond_e

    const/16 p0, 0x72

    .line 262
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_e
    const-string p0, "2"

    :goto_e
    return-object p0

    :pswitch_10
    if-eqz p3, :cond_f

    const/16 p0, 0x71

    .line 260
    invoke-static {v4, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_f
    const-string p0, "1"

    :goto_f
    return-object p0

    :pswitch_11
    if-eqz p3, :cond_10

    .line 258
    invoke-static {v4, p1, v1}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_10
    const-string p0, "0"

    :goto_10
    return-object p0

    :pswitch_12
    return-object p2

    .line 205
    :pswitch_13
    const-string p0, "\u001b[24"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 203
    :pswitch_14
    const-string p0, "\u001b[23"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 201
    :pswitch_15
    const-string p0, "\u001b[21"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 199
    :pswitch_16
    const-string p0, "\u001b[20"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 197
    :pswitch_17
    const-string p0, "\u001b[19"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :pswitch_18
    const-string p0, "\u001b[18"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :pswitch_19
    const-string p0, "\u001b[17"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :pswitch_1a
    const-string p0, "\u001b[15"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    if-nez p1, :cond_11

    .line 189
    const-string p0, "\u001bOS"

    goto :goto_11

    :cond_11
    const/16 p0, 0x53

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0

    :pswitch_1c
    if-nez p1, :cond_12

    .line 187
    const-string p0, "\u001bOR"

    goto :goto_12

    :cond_12
    const/16 p0, 0x52

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_12
    return-object p0

    :pswitch_1d
    if-nez p1, :cond_13

    .line 185
    const-string p0, "\u001bOQ"

    goto :goto_13

    :cond_13
    const/16 p0, 0x51

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_13
    return-object p0

    :pswitch_1e
    if-nez p1, :cond_14

    goto :goto_14

    :cond_14
    const/16 p0, 0x50

    .line 183
    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p2

    :goto_14
    return-object p2

    .line 218
    :pswitch_1f
    const-string p0, "\u001b[2"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_20
    if-nez p1, :cond_16

    if-eqz p2, :cond_15

    .line 170
    const-string p0, "\u001bOF"

    goto :goto_15

    :cond_15
    const-string p0, "\u001b[F"

    goto :goto_15

    :cond_16
    const/16 p0, 0x46

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_15
    return-object p0

    :pswitch_21
    if-nez p1, :cond_18

    if-eqz p2, :cond_17

    .line 168
    const-string p0, "\u001bOH"

    goto :goto_16

    :cond_17
    const-string p0, "\u001b[H"

    goto :goto_16

    :cond_18
    const/16 p0, 0x48

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_16
    return-object p0

    .line 211
    :pswitch_22
    const-string p0, "\u001b[34~"

    return-object p0

    .line 208
    :pswitch_23
    const-string p0, "\u001b[32~"

    return-object p0

    :pswitch_24
    return-object v4

    :pswitch_25
    if-nez p1, :cond_1a

    if-eqz p2, :cond_19

    .line 161
    const-string p0, "\u001bOC"

    goto :goto_17

    :cond_19
    const-string p0, "\u001b[C"

    goto :goto_17

    :cond_1a
    invoke-static {v7, p1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_17
    return-object p0

    :pswitch_26
    if-nez p1, :cond_1c

    if-eqz p2, :cond_1b

    .line 163
    const-string p0, "\u001bOD"

    goto :goto_18

    :cond_1b
    const-string p0, "\u001b[D"

    goto :goto_18

    :cond_1c
    const/16 p0, 0x44

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_18
    return-object p0

    :pswitch_27
    if-nez p1, :cond_1e

    if-eqz p2, :cond_1d

    .line 159
    const-string p0, "\u001bOB"

    goto :goto_19

    :cond_1d
    const-string p0, "\u001b[B"

    goto :goto_19

    :cond_1e
    invoke-static {v7, p1, v5}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_19
    return-object p0

    :pswitch_28
    if-nez p1, :cond_20

    if-eqz p2, :cond_1f

    .line 157
    const-string p0, "\u001bOA"

    goto :goto_1a

    :cond_1f
    const-string p0, "\u001b[A"

    goto :goto_1a

    :cond_20
    const/16 p0, 0x41

    invoke-static {v7, p1, p0}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :goto_1a
    return-object p0

    .line 220
    :cond_21
    const-string p0, "\u001b[3"

    invoke-static {p0, p1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :cond_22
    const-string p0, "\u001b[6~"

    return-object p0

    .line 223
    :cond_23
    const-string p0, "\u001b[5~"

    return-object p0

    :cond_24
    and-int p0, p1, v0

    if-nez p0, :cond_25

    .line 227
    const-string v1, ""

    :cond_25
    and-int p0, p1, v2

    if-nez p0, :cond_26

    .line 229
    const-string p0, "\u007f"

    goto :goto_1b

    :cond_26
    const-string p0, "\u0008"

    :goto_1b
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    and-int p0, p1, v0

    if-nez p0, :cond_28

    goto :goto_1c

    .line 241
    :cond_28
    const-string v4, "\u001b\r"

    :goto_1c
    return-object v4

    :cond_29
    and-int p0, p1, v2

    if-nez p0, :cond_2a

    goto :goto_1d

    .line 236
    :cond_2a
    const-string v3, "\u0000"

    :goto_1d
    return-object v3

    :cond_2b
    const/high16 p0, 0x20000000

    and-int/2addr p0, p1

    if-nez p0, :cond_2c

    .line 239
    const-string p0, "\t"

    goto :goto_1e

    :cond_2c
    const-string p0, "\u001b[Z"

    :goto_1e
    return-object p0

    :cond_2d
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x83
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    .line 132
    sget-object v0, Lcom/termux/terminal/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    if-eqz v1, :cond_1

    const v1, -0x20000001

    and-int/2addr p0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    and-int v2, p0, v1

    if-eqz v2, :cond_2

    or-int/2addr v0, v1

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr p0, v1

    :cond_2
    const/high16 v1, -0x80000000

    and-int v2, p0, v1

    if-eqz v2, :cond_3

    or-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p0, v1

    .line 148
    :cond_3
    invoke-static {p0, v0, p1, p2}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_6

    const/high16 v0, -0x60000000

    if-eq p1, v0, :cond_5

    const/high16 v0, -0x40000000    # -2.0f

    if-eq p1, v0, :cond_4

    const/high16 v0, -0x20000000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x20000000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000000

    if-eq p1, v0, :cond_0

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    goto :goto_0

    :cond_4
    const/4 p1, 0x7

    goto :goto_0

    :cond_5
    const/4 p1, 0x4

    goto :goto_0

    :cond_6
    const/4 p1, 0x3

    .line 311
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
