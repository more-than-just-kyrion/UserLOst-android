.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;
.super Ljava/lang/Object;
.source "MetaKeyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 353
    new-instance p1, Lcom/iiordanov/bVNC/MetaList;

    invoke-direct {p1}, Lcom/iiordanov/bVNC/MetaList;-><init>()V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/undatech/remoteClientUi/R$string;->copy_of:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v1, v1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_textListName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/MetaList;->setName(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v0, v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 356
    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/MetaList;->Gen_insert(Lnet/sqlcipher/database/SQLiteDatabase;)Z

    .line 357
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-static {v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->-$$Nest$mgetCopyListString(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/MetaList;->get_Id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-wide v3, v3, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_listId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v0, v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/MetaList;->get_Id()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/undatech/opaque/Connection;->setMetaListId(J)V

    .line 359
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v0, v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 360
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v0, v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerLists:Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->-$$Nest$smgetSpinnerAdapter(Landroid/widget/Spinner;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/MetaList;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 362
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$8;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->setMetaKeyList()V

    return-void
.end method
