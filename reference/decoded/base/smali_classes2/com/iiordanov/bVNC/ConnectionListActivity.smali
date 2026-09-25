.class public Lcom/iiordanov/bVNC/ConnectionListActivity;
.super Landroid/app/ListActivity;
.source "ConnectionListActivity.java"


# instance fields
.field database:Lcom/iiordanov/bVNC/Database;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private isMasterPasswordEnabled()Z
    .locals 3

    .line 146
    const-string v0, "generalSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/ConnectionListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    const-string v2, "masterPasswordEnabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v6, p0

    .line 53
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/iiordanov/bVNC/Database;

    invoke-direct {v0, v6}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iiordanov/bVNC/ConnectionListActivity;->database:Lcom/iiordanov/bVNC/Database;

    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/iiordanov/bVNC/ConnectionListActivity;->isMasterPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/iiordanov/bVNC/ConnectionListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->master_password_error_shortcuts_not_supported:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/iiordanov/bVNC/Utils;->showFatalErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_0
    iget-object v0, v6, Lcom/iiordanov/bVNC/ConnectionListActivity;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v7

    const/4 v0, 0x6

    new-array v9, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v9, v1

    const/4 v0, 0x1

    const-string v2, "NICKNAME"

    aput-object v2, v9, v0

    const-string v3, "USERNAME"

    const/4 v4, 0x2

    aput-object v3, v9, v4

    const/4 v3, 0x3

    const-string v5, "ADDRESS"

    aput-object v5, v9, v3

    const/4 v15, 0x4

    const-string v16, "PORT"

    aput-object v16, v9, v15

    const/4 v8, 0x5

    const-string v17, "REPEATERID"

    aput-object v17, v9, v8

    const/4 v13, 0x0

    const-string v14, "NICKNAME"

    const-string v8, "CONNECTION_BEAN"

    const-string v10, "KEEPPASSWORD <> 0"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v14}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v7

    .line 73
    invoke-virtual {v6, v7}, Lcom/iiordanov/bVNC/ConnectionListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 77
    new-instance v8, Landroid/widget/SimpleCursorAdapter;

    sget v9, Lcom/undatech/remoteClientUi/R$layout;->connection_list:I

    new-array v10, v15, [Ljava/lang/String;

    aput-object v2, v10, v1

    aput-object v5, v10, v0

    aput-object v16, v10, v4

    aput-object v17, v10, v3

    sget v0, Lcom/undatech/remoteClientUi/R$id;->list_text_nickname:I

    sget v1, Lcom/undatech/remoteClientUi/R$id;->list_text_address:I

    sget v2, Lcom/undatech/remoteClientUi/R$id;->list_text_port:I

    sget v3, Lcom/undatech/remoteClientUi/R$id;->list_text_repeater:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v5

    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v9

    move-object v3, v7

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 94
    invoke-virtual {v6, v8}, Lcom/iiordanov/bVNC/ConnectionListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/iiordanov/bVNC/ConnectionListActivity;->database:Lcom/iiordanov/bVNC/Database;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .line 102
    new-instance p1, Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-direct {p1, p0}, Lcom/iiordanov/bVNC/ConnectionBean;-><init>(Landroid/content/Context;)V

    .line 103
    iget-object p2, p0, Lcom/iiordanov/bVNC/ConnectionListActivity;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p2}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p1, p2, p4, p5}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_read(Lnet/sqlcipher/database/SQLiteDatabase;J)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionListActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 107
    sget p3, Lcom/undatech/remoteClientUi/R$drawable;->icon:I

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p3

    .line 108
    invoke-static {p2}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 109
    sget p2, Lcom/undatech/remoteClientUi/R$drawable;->icon_ardp:I

    invoke-static {p0, p2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p3

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p2}, Lcom/iiordanov/bVNC/Utils;->isSpice(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 111
    sget p2, Lcom/undatech/remoteClientUi/R$drawable;->icon_aspice:I

    invoke-static {p0, p2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p3

    .line 114
    :cond_1
    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 116
    new-instance p4, Landroid/content/Intent;

    const-class p5, Lcom/iiordanov/bVNC/RemoteCanvasActivity;

    invoke-direct {p4, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    new-instance p5, Landroid/net/Uri$Builder;

    invoke-direct {p5}, Landroid/net/Uri$Builder;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->getConnectionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->getConnectionScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    invoke-virtual {p5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 122
    const-string p5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    const-string p4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string p1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/ConnectionListActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionListActivity;->setResult(I)V

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionListActivity;->finish()V

    return-void
.end method
