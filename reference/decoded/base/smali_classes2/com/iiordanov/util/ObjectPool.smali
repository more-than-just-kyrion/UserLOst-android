.class public abstract Lcom/iiordanov/util/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/util/ObjectPool$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private next:Lcom/iiordanov/util/ObjectPool$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/iiordanov/util/ObjectPool;->next:Lcom/iiordanov/util/ObjectPool$Entry;

    return-void
.end method


# virtual methods
.method protected abstract itemForPool()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public release(Lcom/iiordanov/util/ObjectPool$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "TR;>;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/iiordanov/util/ObjectPool;->next:Lcom/iiordanov/util/ObjectPool$Entry;

    iput-object v0, p1, Lcom/iiordanov/util/ObjectPool$Entry;->nextEntry:Lcom/iiordanov/util/ObjectPool$Entry;

    .line 54
    iput-object p1, p0, Lcom/iiordanov/util/ObjectPool;->next:Lcom/iiordanov/util/ObjectPool$Entry;

    return-void
.end method

.method public reserve()Lcom/iiordanov/util/ObjectPool$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "TR;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/iiordanov/util/ObjectPool;->next:Lcom/iiordanov/util/ObjectPool$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/iiordanov/util/ObjectPool$Entry;

    invoke-virtual {p0}, Lcom/iiordanov/util/ObjectPool;->itemForPool()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/iiordanov/util/ObjectPool$Entry;-><init>(Ljava/lang/Object;Lcom/iiordanov/util/ObjectPool$Entry;)V

    iput-object v0, p0, Lcom/iiordanov/util/ObjectPool;->next:Lcom/iiordanov/util/ObjectPool$Entry;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/util/ObjectPool;->next:Lcom/iiordanov/util/ObjectPool$Entry;

    .line 45
    iget-object v2, v0, Lcom/iiordanov/util/ObjectPool$Entry;->nextEntry:Lcom/iiordanov/util/ObjectPool$Entry;

    iput-object v2, p0, Lcom/iiordanov/util/ObjectPool;->next:Lcom/iiordanov/util/ObjectPool$Entry;

    .line 46
    iput-object v1, v0, Lcom/iiordanov/util/ObjectPool$Entry;->nextEntry:Lcom/iiordanov/util/ObjectPool$Entry;

    return-object v0
.end method
