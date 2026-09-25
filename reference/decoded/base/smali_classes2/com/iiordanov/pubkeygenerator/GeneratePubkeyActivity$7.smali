.class Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$7;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;


# direct methods
.method constructor <init>(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$7;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$7;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {v0, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 251
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$7;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    iget-object p1, p1, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->cm:Landroid/text/ClipboardManager;

    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$7;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetpublicKeySSHFormat(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$7;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$7;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    sget v1, Lcom/iiordanov/pubkeygenerator/R$string;->copied_to_clipboard:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
