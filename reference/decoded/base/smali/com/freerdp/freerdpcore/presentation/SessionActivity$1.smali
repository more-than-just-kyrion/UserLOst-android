.class Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;
.super Ljava/lang/Object;
.source "SessionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freerdp/freerdpcore/presentation/SessionActivity;->createDialogs()V
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

    .line 142
    iput-object p1, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 146
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$002(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Z)Z

    .line 147
    iget-object p2, p0, Lcom/freerdp/freerdpcore/presentation/SessionActivity$1;->this$0:Lcom/freerdp/freerdpcore/presentation/SessionActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/freerdp/freerdpcore/presentation/SessionActivity;->access$102(Lcom/freerdp/freerdpcore/presentation/SessionActivity;Z)Z

    .line 148
    monitor-enter p1

    .line 150
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 151
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
