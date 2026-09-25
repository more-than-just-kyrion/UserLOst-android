.class public Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;
.super Ljava/lang/Object;
.source "RemotePointer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iiordanov/bVNC/input/RemotePointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MouseScroller"
.end annotation


# instance fields
.field delay:I

.field public direction:I

.field final synthetic this$0:Lcom/iiordanov/bVNC/input/RemotePointer;


# direct methods
.method public constructor <init>(Lcom/iiordanov/bVNC/input/RemotePointer;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->this$0:Lcom/iiordanov/bVNC/input/RemotePointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    .line 43
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->delay:I

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->direction:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 48
    iget v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->direction:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->this$0:Lcom/iiordanov/bVNC/input/RemotePointer;

    iget v2, v0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerX:I

    iget-object v3, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->this$0:Lcom/iiordanov/bVNC/input/RemotePointer;

    iget v3, v3, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerY:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollUp(III)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->this$0:Lcom/iiordanov/bVNC/input/RemotePointer;

    iget v2, v0, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerX:I

    iget-object v3, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->this$0:Lcom/iiordanov/bVNC/input/RemotePointer;

    iget v3, v3, Lcom/iiordanov/bVNC/input/RemotePointer;->pointerY:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/iiordanov/bVNC/input/RemotePointer;->scrollDown(III)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->this$0:Lcom/iiordanov/bVNC/input/RemotePointer;

    iget-object v0, v0, Lcom/iiordanov/bVNC/input/RemotePointer;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/iiordanov/bVNC/input/RemotePointer$MouseScroller;->delay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
