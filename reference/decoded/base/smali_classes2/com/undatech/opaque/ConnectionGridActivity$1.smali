.class Lcom/undatech/opaque/ConnectionGridActivity$1;
.super Ljava/lang/Object;
.source "ConnectionGridActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/ConnectionGridActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/ConnectionGridActivity;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/ConnectionGridActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$1;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$1;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-static {p1, p2}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$mlaunchConnection(Lcom/undatech/opaque/ConnectionGridActivity;Landroid/view/View;)V

    return-void
.end method
