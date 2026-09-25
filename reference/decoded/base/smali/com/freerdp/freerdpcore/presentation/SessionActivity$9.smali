.class Lcom/freerdp/freerdpcore/presentation/SessionActivity$9;
.super Ljava/lang/Object;
.source "SessionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 505
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$9;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$9;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-static {v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$1100(Lcom/freerdp/freerdpcore/presentation/SessionActivity;)Lcom/freerdp/freerdpcore/application/SessionState;

    move-result-object v0

    iget-object v1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$9;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/application/SessionState;->connect(Landroid/content/Context;)V

    return-void
.end method
