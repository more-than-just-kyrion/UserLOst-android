.class Lcom/undatech/opaque/OpaqueHandler$1;
.super Ljava/lang/Object;
.source "OpaqueHandler.java"

# interfaces
.implements Lcom/undatech/opaque/dialogs/MessageFragment$OnFragmentDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/OpaqueHandler;->displayMessageAndFinish(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/OpaqueHandler;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/OpaqueHandler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/undatech/opaque/OpaqueHandler$1;->this$0:Lcom/undatech/opaque/OpaqueHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/undatech/opaque/OpaqueHandler$1;->this$0:Lcom/undatech/opaque/OpaqueHandler;

    invoke-static {v0}, Lcom/undatech/opaque/OpaqueHandler;->-$$Nest$fgetcontext(Lcom/undatech/opaque/OpaqueHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/undatech/opaque/MessageDialogs;->justFinish(Landroid/content/Context;)V

    return-void
.end method
