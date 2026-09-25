.class Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;
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

    .line 116
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    :try_start_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$fgetconnectionsInSharedPrefs(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$fget_textSaveUrl(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->importSettingsFromJsonToSharedPrefs(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$fget_textLoadUrl(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$fgetdatabase(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Lcom/iiordanov/bVNC/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/Utils;->importSettingsFromXml(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 127
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->dismiss()V

    .line 128
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$fgetactivity(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 136
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    const-string v1, "XML or format error reading configuration"

    invoke-static {v0, v1, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$merrorNotify(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 132
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    const-string v1, "I/O error reading configuration"

    invoke-static {v0, v1, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->-$$Nest$merrorNotify(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
