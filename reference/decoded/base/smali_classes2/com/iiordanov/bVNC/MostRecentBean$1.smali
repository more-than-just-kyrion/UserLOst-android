.class Lcom/iiordanov/bVNC/MostRecentBean$1;
.super Ljava/lang/Object;
.source "MostRecentBean.java"

# interfaces
.implements Lcom/antlersoft/android/dbimpl/NewInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/MostRecentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/antlersoft/android/dbimpl/NewInstance<",
        "Lcom/iiordanov/bVNC/MostRecentBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Lcom/antlersoft/android/dbimpl/ImplementationBase;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MostRecentBean$1;->get()Lcom/iiordanov/bVNC/MostRecentBean;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/iiordanov/bVNC/MostRecentBean;
    .locals 1

    .line 37
    new-instance v0, Lcom/iiordanov/bVNC/MostRecentBean;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/MostRecentBean;-><init>()V

    return-object v0
.end method
