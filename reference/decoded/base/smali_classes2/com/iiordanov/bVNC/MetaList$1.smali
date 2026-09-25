.class Lcom/iiordanov/bVNC/MetaList$1;
.super Ljava/lang/Object;
.source "MetaList.java"

# interfaces
.implements Lcom/antlersoft/android/dbimpl/NewInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/MetaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/antlersoft/android/dbimpl/NewInstance<",
        "Lcom/iiordanov/bVNC/MetaList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Lcom/antlersoft/android/dbimpl/ImplementationBase;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MetaList$1;->get()Lcom/iiordanov/bVNC/MetaList;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/iiordanov/bVNC/MetaList;
    .locals 1

    .line 29
    new-instance v0, Lcom/iiordanov/bVNC/MetaList;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/MetaList;-><init>()V

    return-object v0
.end method
