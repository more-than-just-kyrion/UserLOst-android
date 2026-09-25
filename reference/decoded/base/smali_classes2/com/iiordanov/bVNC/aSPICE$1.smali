.class Lcom/iiordanov/bVNC/aSPICE$1;
.super Ljava/lang/Object;
.source "aSPICE.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/aSPICE;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/aSPICE;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/aSPICE;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE$1;->this$0:Lcom/iiordanov/bVNC/aSPICE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE$1;->this$0:Lcom/iiordanov/bVNC/aSPICE;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/aSPICE;->updateSelectedFromView()V

    .line 113
    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE$1;->this$0:Lcom/iiordanov/bVNC/aSPICE;

    sget v0, Lcom/undatech/remoteClientUi/R$layout;->import_tls_ca_dialog:I

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/aSPICE;->showDialog(I)V

    return-void
.end method
