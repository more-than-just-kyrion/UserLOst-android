.class Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;
.super Landroid/os/Handler;
.source "TouchPointerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/TouchPointerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    .line 230
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 235
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/TouchPointerView$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    sget v0, Lcom/freerdp/freerdpcore/R$drawable;->touch_pointer_default:I

    invoke-static {p1, v0}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->access$100(Lcom/freerdp/freerdpcore/presentation/TouchPointerView;I)V

    return-void
.end method
