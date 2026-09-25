.class Lcom/iiordanov/android/drawing/OverlappingCopy$1;
.super Lcom/iiordanov/util/SafeObjectPool;
.source "OverlappingCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/android/drawing/OverlappingCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iiordanov/util/SafeObjectPool<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/iiordanov/util/SafeObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected itemForPool()Landroid/graphics/Rect;
    .locals 1

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic itemForPool()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/iiordanov/android/drawing/OverlappingCopy$1;->itemForPool()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
