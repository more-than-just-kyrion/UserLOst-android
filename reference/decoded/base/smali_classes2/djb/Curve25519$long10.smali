.class final Ldjb/Curve25519$long10;
.super Ljava/lang/Object;
.source "Curve25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjb/Curve25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "long10"
.end annotation


# instance fields
.field public _0:J

.field public _1:J

.field public _2:J

.field public _3:J

.field public _4:J

.field public _5:J

.field public _6:J

.field public _7:J

.field public _8:J

.field public _9:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 283
    iput-wide v1, v0, Ldjb/Curve25519$long10;->_0:J

    move-wide v1, p3

    iput-wide v1, v0, Ldjb/Curve25519$long10;->_1:J

    move-wide v1, p5

    iput-wide v1, v0, Ldjb/Curve25519$long10;->_2:J

    move-wide v1, p7

    .line 284
    iput-wide v1, v0, Ldjb/Curve25519$long10;->_3:J

    move-wide v1, p9

    iput-wide v1, v0, Ldjb/Curve25519$long10;->_4:J

    move-wide v1, p11

    iput-wide v1, v0, Ldjb/Curve25519$long10;->_5:J

    move-wide/from16 v1, p13

    .line 285
    iput-wide v1, v0, Ldjb/Curve25519$long10;->_6:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Ldjb/Curve25519$long10;->_7:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Ldjb/Curve25519$long10;->_8:J

    move-wide/from16 v1, p19

    .line 286
    iput-wide v1, v0, Ldjb/Curve25519$long10;->_9:J

    return-void
.end method
