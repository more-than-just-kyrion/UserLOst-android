.class Lcom/iiordanov/bVNC/ConnectionBean$1;
.super Ljava/lang/Object;
.source "ConnectionBean.java"

# interfaces
.implements Lcom/antlersoft/android/dbimpl/NewInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/ConnectionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/antlersoft/android/dbimpl/NewInstance<",
        "Lcom/iiordanov/bVNC/ConnectionBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Lcom/antlersoft/android/dbimpl/ImplementationBase;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean$1;->get()Lcom/iiordanov/bVNC/ConnectionBean;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/iiordanov/bVNC/ConnectionBean;
    .locals 2

    .line 65
    new-instance v0, Lcom/iiordanov/bVNC/ConnectionBean;

    sget-object v1, Lcom/iiordanov/bVNC/ConnectionBean;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
