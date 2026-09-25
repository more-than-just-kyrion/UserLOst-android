.class Lcom/freerdp/freerdpcore/presentation/SessionActivity$8;
.super Ljava/lang/Object;
.source "SessionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/SessionActivity;->connectWithTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;


# direct methods
.method constructor <init>(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$8;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 498
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$8;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$102(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Z)Z

    .line 499
    iget-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$8;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/application/SessionState;->getInstance()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->cancelConnection(J)Z

    return-void
.end method
