.class Lcom/undatech/opaque/ConnectionGridActivity$2;
.super Ljava/lang/Object;
.source "ConnectionGridActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 105
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$2;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 108
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/undatech/opaque/ConnectionGridActivity$2;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    sget p3, Lcom/undatech/remoteClientUi/R$id;->grid_item_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 110
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/undatech/opaque/ConnectionGridActivity$2;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->connection_edit_delete_prompt:I

    invoke-virtual {p5, v0}, Lcom/undatech/opaque/ConnectionGridActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " ?"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p3, 0x2

    .line 111
    new-array p3, p3, [Ljava/lang/CharSequence;

    iget-object p4, p0, Lcom/undatech/opaque/ConnectionGridActivity$2;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    sget p5, Lcom/undatech/remoteClientUi/R$string;->connection_edit:I

    invoke-virtual {p4, p5}, Lcom/undatech/opaque/ConnectionGridActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    iget-object p4, p0, Lcom/undatech/opaque/ConnectionGridActivity$2;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    sget p5, Lcom/undatech/remoteClientUi/R$string;->connection_delete:I

    invoke-virtual {p4, p5}, Lcom/undatech/opaque/ConnectionGridActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p3, p5

    .line 112
    new-instance p4, Lcom/undatech/opaque/ConnectionGridActivity$2$1;

    invoke-direct {p4, p0, p3, p2}, Lcom/undatech/opaque/ConnectionGridActivity$2$1;-><init>(Lcom/undatech/opaque/ConnectionGridActivity$2;[Ljava/lang/CharSequence;Landroid/view/View;)V

    invoke-virtual {p1, p3, p4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return p5
.end method
