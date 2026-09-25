.class Lcom/undatech/opaque/ConnectionGridActivity$2$1;
.super Ljava/lang/Object;
.source "ConnectionGridActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/ConnectionGridActivity$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/undatech/opaque/ConnectionGridActivity$2;

.field final synthetic val$cs:[Ljava/lang/CharSequence;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/ConnectionGridActivity$2;[Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->this$1:Lcom/undatech/opaque/ConnectionGridActivity$2;

    iput-object p2, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->val$cs:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->val$cs:[Ljava/lang/CharSequence;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->this$1:Lcom/undatech/opaque/ConnectionGridActivity$2;

    iget-object v0, v0, Lcom/undatech/opaque/ConnectionGridActivity$2;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->connection_edit:I

    invoke-virtual {v0, v1}, Lcom/undatech/opaque/ConnectionGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 116
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->this$1:Lcom/undatech/opaque/ConnectionGridActivity$2;

    iget-object p1, p1, Lcom/undatech/opaque/ConnectionGridActivity$2;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    iget-object p2, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->val$v:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$meditConnection(Lcom/undatech/opaque/ConnectionGridActivity;Landroid/view/View;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->val$cs:[Ljava/lang/CharSequence;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->this$1:Lcom/undatech/opaque/ConnectionGridActivity$2;

    iget-object p2, p2, Lcom/undatech/opaque/ConnectionGridActivity$2;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->connection_delete:I

    invoke-virtual {p2, v0}, Lcom/undatech/opaque/ConnectionGridActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 119
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->this$1:Lcom/undatech/opaque/ConnectionGridActivity$2;

    iget-object p1, p1, Lcom/undatech/opaque/ConnectionGridActivity$2;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    iget-object p2, p0, Lcom/undatech/opaque/ConnectionGridActivity$2$1;->val$v:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$mdeleteConnection(Lcom/undatech/opaque/ConnectionGridActivity;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
