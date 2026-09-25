.class Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;
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

    .line 290
    iput-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 292
    const-string v0, "GeneratePubkeyActivity"

    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {v1, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 294
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetfile_name(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    sget v1, Lcom/iiordanov/pubkeygenerator/R$string;->error_importing:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 300
    :cond_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 304
    :try_start_0
    invoke-static {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$smreadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    :try_start_1
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetpassword1(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fputpassphrase(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$fgetpassphrase(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/iiordanov/pubkeygenerator/PubkeyUtils;->tryImportingPemAndPkcs8(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object p1

    .line 315
    iget-object v1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-static {v1, p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->-$$Nest$mconverToBase64AndSendIntent(Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;Ljava/security/KeyPair;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    sget v1, Lcom/iiordanov/pubkeygenerator/R$string;->success_importing:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 323
    iget-object p1, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {p1}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->finish()V

    return-void

    :catch_0
    move-exception p1

    .line 317
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    const-string v1, "Failed to decode key."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {v0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :catch_1
    move-exception v1

    .line 306
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read key from file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-virtual {v0}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity$9;->this$0:Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    sget v4, Lcom/iiordanov/pubkeygenerator/R$string;->error_reading_file:I

    invoke-virtual {v3, v4}, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
