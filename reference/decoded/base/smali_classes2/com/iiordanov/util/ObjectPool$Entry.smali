.class public Lcom/iiordanov/util/ObjectPool$Entry;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/util/ObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field nextEntry:Lcom/iiordanov/util/ObjectPool$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/iiordanov/util/ObjectPool$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/iiordanov/util/ObjectPool$Entry<",
            "TS;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iiordanov/util/ObjectPool$Entry;->item:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lcom/iiordanov/util/ObjectPool$Entry;->nextEntry:Lcom/iiordanov/util/ObjectPool$Entry;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/iiordanov/util/ObjectPool$Entry;->item:Ljava/lang/Object;

    return-object v0
.end method
