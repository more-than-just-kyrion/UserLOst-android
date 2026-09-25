.class Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;
.super Ljava/lang/Object;
.source "RemoteCanvasActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/RemoteCanvasActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarHiderRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;


# direct methods
.method private constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V
    .locals 0

    .line 1647
    iput-object p1, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;Lcom/iiordanov/bVNC/RemoteCanvasActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;-><init>(Lcom/iiordanov/bVNC/RemoteCanvasActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1649
    iget-object v0, p0, Lcom/iiordanov/bVNC/RemoteCanvasActivity$ToolbarHiderRunnable;->this$0:Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1651
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method
