.class Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;
.super Ljava/lang/Object;
.source "MetaKeyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

.field final synthetic val$position:I

.field final synthetic val$toDelete:Lcom/iiordanov/bVNC/input/MetaKeyBean;


# direct methods
.method constructor <init>(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;Lcom/iiordanov/bVNC/input/MetaKeyBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->val$toDelete:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    iput p3, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 172
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->-$$Nest$smgetSpinnerAdapter(Landroid/widget/Spinner;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->val$toDelete:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->getKeyDesc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    iget p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->val$position:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->val$toDelete:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 178
    invoke-virtual {p2}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->get_Id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "META_KEY"

    const-string v1, "METALISTID"

    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 176
    const-string v0, "DELETE FROM {0} WHERE {1} = {2}"

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    invoke-interface {p1}, Lcom/undatech/opaque/Connection;->getLastMetaKeyId()J

    move-result-wide p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->val$toDelete:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/input/MetaKeyBean;->get_Id()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/undatech/opaque/Connection;->setLastMetaKeyId(J)V

    .line 183
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_connection:Lcom/undatech/opaque/Connection;

    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/undatech/opaque/Connection;->save(Landroid/content/Context;)V

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_spinnerKeysInList:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 186
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 188
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p2, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    new-instance v0, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object v1, v1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    iget-object v1, v1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_keysInList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/input/MetaKeyBean;

    invoke-direct {v0, p1}, Lcom/iiordanov/bVNC/input/MetaKeyBean;-><init>(Lcom/iiordanov/bVNC/input/MetaKeyBean;)V

    iput-object v0, p2, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->_currentKeyBean:Lcom/iiordanov/bVNC/input/MetaKeyBean;

    .line 189
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2$1;->this$1:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;

    iget-object p1, p1, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog$2;->this$0:Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;

    invoke-static {p1}, Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;->-$$Nest$mupdateDialogForCurrentKey(Lcom/iiordanov/bVNC/dialogs/MetaKeyDialog;)V

    :cond_1
    return-void
.end method
