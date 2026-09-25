.class Lcom/iiordanov/android/drawing/RectList$1;
.super Lcom/iiordanov/util/ObjectPool;
.source "RectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/android/drawing/RectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iiordanov/util/ObjectPool<",
        "Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/android/drawing/RectList;


# direct methods
.method constructor <init>(Lcom/iiordanov/android/drawing/RectList;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/iiordanov/android/drawing/RectList$1;->this$0:Lcom/iiordanov/android/drawing/RectList;

    invoke-direct {p0}, Lcom/iiordanov/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected itemForPool()Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;
    .locals 1

    .line 327
    new-instance v0, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;

    invoke-direct {v0}, Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic itemForPool()Ljava/lang/Object;
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/iiordanov/android/drawing/RectList$1;->itemForPool()Lcom/iiordanov/android/drawing/RectList$NonOverlappingRects;

    move-result-object v0

    return-object v0
.end method
