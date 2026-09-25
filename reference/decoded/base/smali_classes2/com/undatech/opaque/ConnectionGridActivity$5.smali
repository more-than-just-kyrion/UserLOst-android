.class Lcom/undatech/opaque/ConnectionGridActivity$5;
.super Ljava/lang/Object;
.source "ConnectionGridActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/undatech/opaque/ConnectionGridActivity;->deleteConnection(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/undatech/opaque/ConnectionGridActivity;

.field final synthetic val$runtimeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/undatech/opaque/ConnectionGridActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    iput-object p2, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->val$runtimeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 220
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-virtual {p1}, Lcom/undatech/opaque/ConnectionGridActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 222
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 224
    iget-object p2, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-static {p2}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$fgetappContext(Lcom/undatech/opaque/ConnectionGridActivity;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "generalSettings"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const/4 v0, 0x0

    .line 225
    const-string v2, "connections"

    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v3, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-static {v3}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$fgetconnectionLoader(Lcom/undatech/opaque/ConnectionGridActivity;)Lcom/undatech/opaque/util/ConnectionLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/undatech/opaque/util/ConnectionLoader;->getConnectionsById()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->val$runtimeId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/undatech/opaque/ConnectionSettings;

    if-eqz p2, :cond_3

    .line 229
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    array-length v5, v0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v0, v1

    .line 231
    invoke-virtual {v3}, Lcom/undatech/opaque/ConnectionSettings;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Deleted connection, current list: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-virtual {v0}, Lcom/undatech/opaque/ConnectionGridActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Lcom/undatech/opaque/ConnectionSettings;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ".png"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-static {p1}, Lcom/undatech/opaque/ConnectionGridActivity;->-$$Nest$fgetconnectionLoader(Lcom/undatech/opaque/ConnectionGridActivity;)Lcom/undatech/opaque/util/ConnectionLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/undatech/opaque/util/ConnectionLoader;->getConnectionsById()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->val$runtimeId:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/ConnectionBean;

    .line 245
    iget-object p2, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    iget-object p2, p2, Lcom/undatech/opaque/ConnectionGridActivity;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_delete(Lnet/sqlcipher/database/SQLiteDatabase;)I

    .line 246
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    iget-object p1, p1, Lcom/undatech/opaque/ConnectionGridActivity;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 248
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity$5;->this$0:Lcom/undatech/opaque/ConnectionGridActivity;

    invoke-virtual {p1}, Lcom/undatech/opaque/ConnectionGridActivity;->onResume()V

    return-void
.end method
