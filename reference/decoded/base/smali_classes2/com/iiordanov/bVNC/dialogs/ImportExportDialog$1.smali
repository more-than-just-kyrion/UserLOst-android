.class Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;
.super Ljava/lang/Object;
.source "ImportExportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$fgetconnectionsInSharedPrefs(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$fget_textLoadUrl(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->exportSettingsFromSharedPrefsToJson(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$fget_textSaveUrl(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$fgetdatabase(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Lcom/iiordanov/bVNC/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/Utils;->exportSettingsToXml(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->dismiss()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 110
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    const-string v1, "XML Exception exporting config"

    invoke-static {v0, v1, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$merrorNotify(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 108
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    const-string v1, "I/O Exception exporting config"

    invoke-static {v0, v1, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$merrorNotify(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
