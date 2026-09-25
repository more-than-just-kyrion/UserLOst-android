.class Lcom/iiordanov/android/drawing/RectList$2;
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
        "Ljava/util/ArrayList<",
        "Lcom/iiordanov/util/ObjectPool$Entry<",
        "Landroid/graphics/Rect;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/android/drawing/RectList;


# direct methods
.method constructor <init>(Lcom/iiordanov/android/drawing/RectList;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/iiordanov/android/drawing/RectList$2;->this$0:Lcom/iiordanov/android/drawing/RectList;

    invoke-direct {p0}, Lcom/iiordanov/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic itemForPool()Ljava/lang/Object;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/iiordanov/android/drawing/RectList$2;->itemForPool()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected itemForPool()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
