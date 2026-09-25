.class public abstract Lcom/iiordanov/bVNC/input/RemoteKeyboard;
.super Lcom/undatech/opaque/input/RemoteKeyboard;
.source "RemoteKeyboard.java"


# direct methods
.method public constructor <init>(Lcom/undatech/opaque/RfbConnectable;Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/undatech/opaque/input/RemoteKeyboard;-><init>(Lcom/undatech/opaque/RfbConnectable;Landroid/content/Context;Landroid/os/Handler;Z)V

    return-void
.end method


# virtual methods
.method public abstract sendMetaKey(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V
.end method
