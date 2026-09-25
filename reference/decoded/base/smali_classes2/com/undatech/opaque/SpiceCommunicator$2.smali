.class Lcom/undatech/opaque/SpiceCommunicator$2;
.super Ljava/lang/Object;
.source "SpiceCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/SpiceCommunicator;->onSettingsChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/SpiceCommunicator;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/SpiceCommunicator;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/undatech/opaque/SpiceCommunicator$2;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/undatech/opaque/SpiceCommunicator$2;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-static {v0}, Lcom/undatech/opaque/SpiceCommunicator;->access$200(Lcom/undatech/opaque/SpiceCommunicator;)Lcom/undatech/opaque/Viewable;

    move-result-object v1

    invoke-interface {v1}, Lcom/undatech/opaque/Viewable;->getDesiredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/undatech/opaque/SpiceCommunicator$2;->this$0:Lcom/undatech/opaque/SpiceCommunicator;

    invoke-static {v2}, Lcom/undatech/opaque/SpiceCommunicator;->access$200(Lcom/undatech/opaque/SpiceCommunicator;)Lcom/undatech/opaque/Viewable;

    move-result-object v2

    invoke-interface {v2}, Lcom/undatech/opaque/Viewable;->getDesiredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/undatech/opaque/SpiceCommunicator;->requestResolution(II)V

    return-void
.end method
