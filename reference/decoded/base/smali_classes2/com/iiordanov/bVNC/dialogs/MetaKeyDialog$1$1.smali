.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;
.super Ljava/lang/Object;
.source "MetaKeyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 123
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerLists:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    sget-object v0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/bVNC/MetaList;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/MetaList;->get_Id()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_listId:J

    .line 127
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-wide v0, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_listId:J

    const-wide/16 v2, 0x1

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 129
    sget-object p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_lists:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerLists:Landroid/widget/Spinner;

    invoke-static {p2}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->-$$Nest$smgetSpinnerAdapter(Landroid/widget/Spinner;)Landroid/widget/ArrayAdapter;

    move-result-object p2

    .line 131
    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-wide v0, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_listId:J

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "META_KEY"

    const-string v1, "METALISTID"

    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 133
    const-string v0, "DELETE FROM {0} WHERE {1} = {2}"

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-wide v4, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_listId:J

    .line 138
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "META_LIST"

    const-string v4, "_id"

    filled-new-array {v1, v4, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 136
    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 140
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1, v2, v3}, Lcom/undatech/opaque/Connection;->setMetaListId(J)V

    .line 141
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 142
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$1;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->setMetaKeyList()V

    :cond_1
    return-void
.end method
