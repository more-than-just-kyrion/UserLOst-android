.class Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;
.super Landroid/os/Handler;
.source "SessionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/SessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# static fields
.field public static final DISPLAY_TOAST:I = 0x2

.field public static final GRAPHICS_CHANGED:I = 0x6

.field public static final HIDE_ZOOMCONTROLS:I = 0x3

.field public static final REFRESH_SESSIONVIEW:I = 0x1

.field public static final SCROLLING_REQUESTED:I = 0x7

.field public static final SEND_MOVE_EVENT:I = 0x4

.field public static final SHOW_DIALOG:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    .line 1208
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1213
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1254
    :pswitch_0
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1300(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getPointerPosition()[F

    move-result-object p1

    const/4 v0, 0x0

    .line 1256
    aget v2, p1, v0

    iget-object v3, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v3}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v4}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1300(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getPointerWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    const/16 v3, -0x14

    const/16 v4, 0x14

    const/4 v5, 0x0

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    .line 1258
    :cond_0
    aget v2, p1, v0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1261
    :goto_0
    aget v6, p1, v1

    iget-object v7, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v7}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$300(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v8}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1300(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/TouchPointerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/freerdp/freerdpcore/presentation/TouchPointerView;->getPointerHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    move v3, v4

    goto :goto_1

    .line 1263
    :cond_2
    aget p1, p1, v1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    .line 1266
    :goto_1
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->scrollBy(II)V

    .line 1269
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    .line 1270
    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollX()I

    move-result p1

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$900(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v4}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    if-ne p1, v1, :cond_5

    :cond_4
    move v2, v0

    .line 1272
    :cond_5
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    .line 1273
    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getScrollY()I

    move-result p1

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    .line 1274
    invoke-static {v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$900(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v4}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v3

    :cond_7
    :goto_2
    if-nez v2, :cond_9

    if-eqz v0, :cond_8

    goto :goto_3

    .line 1280
    :cond_8
    const-string p1, "FreeRDP.SessionActivity"

    const-string v0, "Stopping auto-scroll"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1278
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1400(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;

    move-result-object p1

    const/4 v0, 0x7

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 1217
    :pswitch_1
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$900(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionView;

    move-result-object p1

    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/presentation/SessionView;->onSurfaceChange(Lcom/freerdp/freerdpcore/application/SessionState;)V

    .line 1218
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1200(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/ScrollView2D;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/ScrollView2D;->requestLayout()V

    goto :goto_4

    .line 1247
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_4

    .line 1240
    :pswitch_3
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1241
    invoke-static {}, Lcom/freerdp/freerdpcore/utils/Mouse;->getMoveEvent()I

    move-result v3

    .line 1240
    invoke-static {v0, v1, v2, p1, v3}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->sendCursorEvent(JIII)Z

    goto :goto_4

    .line 1235
    :pswitch_4
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1000(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Landroid/widget/ZoomControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ZoomControls;->hide()V

    goto :goto_4

    .line 1228
    :pswitch_5
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1230
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 1223
    :pswitch_6
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$UIHandler;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$900(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/presentation/SessionView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/presentation/SessionView;->invalidateRegion()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
