.class Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$1;
.super Ljava/lang/Object;
.source "ManageCustomCaFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$1;->this$0:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$1;->this$0:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;

    invoke-static {v0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->-$$Nest$fgetcaCert(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$1;->this$0:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;

    invoke-static {v1}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->-$$Nest$fgetcaTextContents(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
