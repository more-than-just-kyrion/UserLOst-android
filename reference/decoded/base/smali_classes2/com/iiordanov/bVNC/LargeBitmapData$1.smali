.class Lcom/iiordanov/bVNC/LargeBitmapData$1;
.super Lcom/iiordanov/util/ObjectPool;
.source "LargeBitmapData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/LargeBitmapData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iiordanov/util/ObjectPool<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/iiordanov/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected itemForPool()Landroid/graphics/Rect;
    .locals 1

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic itemForPool()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/LargeBitmapData$1;->itemForPool()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
