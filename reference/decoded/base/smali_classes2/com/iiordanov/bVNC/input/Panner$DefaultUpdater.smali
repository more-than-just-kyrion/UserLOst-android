.class Lcom/iiordanov/bVNC/input/Panner$DefaultUpdater;
.super Ljava/lang/Object;
.source "Panner.java"

# interfaces
.implements Lcom/iiordanov/bVNC/input/Panner$VelocityUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/input/Panner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultUpdater"
.end annotation


# static fields
.field static instance:Lcom/iiordanov/bVNC/input/Panner$DefaultUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/iiordanov/bVNC/input/Panner$DefaultUpdater;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/input/Panner$DefaultUpdater;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/input/Panner$DefaultUpdater;->instance:Lcom/iiordanov/bVNC/input/Panner$DefaultUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateVelocity(Landroid/graphics/PointF;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
