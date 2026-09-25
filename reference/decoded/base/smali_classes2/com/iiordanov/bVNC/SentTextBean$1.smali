.class Lcom/iiordanov/bVNC/SentTextBean$1;
.super Ljava/lang/Object;
.source "SentTextBean.java"

# interfaces
.implements Lcom/antlersoft/android/dbimpl/NewInstance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/SentTextBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/antlersoft/android/dbimpl/NewInstance<",
        "Lcom/iiordanov/bVNC/SentTextBean;",
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
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/SentTextBean$1;->get()Lcom/iiordanov/bVNC/SentTextBean;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/iiordanov/bVNC/SentTextBean;
    .locals 1

    .line 29
    new-instance v0, Lcom/iiordanov/bVNC/SentTextBean;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/SentTextBean;-><init>()V

    return-object v0
.end method
