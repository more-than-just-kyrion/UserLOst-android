.class Lcom/iiordanov/bVNC/bVNC$2;
.super Ljava/lang/Object;
.source "bVNC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/bVNC;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/bVNC;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/bVNC;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC$2;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$2;->this$0:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/bVNC;->updateSelectedFromView()V

    .line 126
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC$2;->this$0:Lcom/iiordanov/bVNC/bVNC;

    sget v0, Lcom/undatech/remoteClientUi/R$layout;->auto_x_customize:I

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/bVNC;->showDialog(I)V

    return-void
.end method
