.class Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "DoubleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;

    .line 341
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;Landroid/os/Handler;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector$GestureHandler;->this$0:Lcom/freerdp/freerdpcore/utils/DoubleGestureDetector;

    .line 346
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
