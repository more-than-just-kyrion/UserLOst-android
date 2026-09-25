.class Lcom/iiordanov/bVNC/MainConfiguration$2;
.super Ljava/lang/Object;
.source "MainConfiguration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/MainConfiguration;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/MainConfiguration;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/MainConfiguration;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$2;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 168
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$2;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    iget-object p1, p1, Lcom/iiordanov/bVNC/MainConfiguration;->permissionsManager:Lcom/iiordanov/util/PermissionsManager;

    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration$2;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/util/PermissionsManager;->requestPermissions(Landroid/app/Activity;Z)V

    .line 169
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration$2;->this$0:Lcom/iiordanov/bVNC/MainConfiguration;

    sget v0, Lcom/undatech/remoteClientUi/R$layout;->importexport:I

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/MainConfiguration;->showDialog(I)V

    return-void
.end method
