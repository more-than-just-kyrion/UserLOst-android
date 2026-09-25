.class Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$2;
.super Ljava/lang/Object;
.source "ManageCustomCaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 133
    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$2;->this$0:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$2;->this$0:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;

    invoke-static {p1}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->-$$Nest$mimportCaCertFromFile(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)V

    return-void
.end method
