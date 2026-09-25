.class Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/utils/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/utils/GestureDetector;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    .line 587
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/freerdp/freerdpcore/utils/GestureDetector;Landroid/os/Handler;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    .line 592
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 597
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->access$300(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->access$400(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 611
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->access$300(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;

    move-result-object p1

    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->access$000(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_1
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->access$200(Lcom/freerdp/freerdpcore/utils/GestureDetector;)V

    goto :goto_0

    .line 600
    :cond_2
    iget-object p1, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->access$100(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;

    move-result-object p1

    iget-object v0, p0, Lcom/freerdp/freerdpcore/utils/GestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/GestureDetector;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/utils/GestureDetector;->access$000(Lcom/freerdp/freerdpcore/utils/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freerdp/freerdpcore/utils/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    return-void
.end method
