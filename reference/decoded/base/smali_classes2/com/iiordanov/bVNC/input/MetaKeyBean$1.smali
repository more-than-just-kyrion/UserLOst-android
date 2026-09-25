.class Lcom/iiordanov/bVNC/input/MetaKeyBean$1;
.super Ljava/lang/Object;
.source "MetaKeyBean.java"

# interfaces
.implements Lcom/antlersoft/android/dbimpl/NewInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/input/MetaKeyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/antlersoft/android/dbimpl/NewInstance<",
        "Lcom/iiordanov/bVNC/input/MetaKeyBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Lcom/antlersoft/android/dbimpl/ImplementationBase;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/input/MetaKeyBean$1;->get()Lcom/iiordanov/bVNC/input/MetaKeyBean;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/iiordanov/bVNC/input/MetaKeyBean;
    .locals 1

    .line 141
    new-instance v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>()V

    return-object v0
.end method
