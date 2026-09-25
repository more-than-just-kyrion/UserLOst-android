.class Lcom/iiordanov/bVNC/ConnectionBean$3;
.super Ljava/util/ArrayList;
.source "ConnectionBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/ConnectionBean;->parseFromUri(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/ConnectionBean;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/ConnectionBean;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/iiordanov/bVNC/ConnectionBean$3;->this$0:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    const-string p1, "RdpPassword"

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean$3;->add(Ljava/lang/Object;)Z

    const-string p1, "SpicePassword"

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean$3;->add(Ljava/lang/Object;)Z

    const-string p1, "VncPassword"

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean$3;->add(Ljava/lang/Object;)Z

    return-void
.end method
