.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;
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

    .line 327
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 334
    new-instance p1, Lcom/iiordanov/bVNC/MetaList;

    invoke-direct {p1}, Lcom/iiordanov/bVNC/MetaList;-><init>()V

    .line 335
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->new_list_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/MetaList;->setName(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v0, v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 337
    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/MetaList;->Gen_insert(Lnet/sqlcipher/database/SQLiteDatabase;)Z

    .line 338
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v0, v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/MetaList;->get_Id()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/undatech/opaque/Connection;->setMetaListId(J)V

    .line 339
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v0, v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 340
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v0, v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerLists:Landroid/widget/Spinner;

    invoke-static {v0}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->-$$Nest$smgetSpinnerAdapter(Landroid/widget/Spinner;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/MetaList;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 342
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$7;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->setMetaKeyList()V

    return-void
.end method
