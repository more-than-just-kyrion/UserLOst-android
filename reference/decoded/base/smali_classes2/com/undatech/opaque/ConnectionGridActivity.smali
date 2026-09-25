.class public Lcom/undatech/opaque/ConnectionGridActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ConnectionGridActivity.java"

# interfaces
.implements Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;


# static fields
.field private static TAG:Ljava/lang/String; = "ConnectionGridActivity"


# instance fields
.field private addNewConnection:Landroidx/appcompat/widget/AppCompatImageButton;

.field private appContext:Landroid/content/Context;

.field private connectionLoader:Lcom/undatech/opaque/util/ConnectionLoader;

.field protected database:Lcom/iiordanov/bVNC/Database;

.field fragmentManager:Landroidx/fragment/app/FragmentManager;

.field getNewPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

.field getPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

.field private gridView:Landroid/widget/GridView;

.field private isConnecting:Z

.field protected isStarting:Z

.field protected permissionsManager:Lcom/iiordanov/util/PermissionsManager;

.field private search:Landroid/widget/EditText;

.field private togglingMasterPassword:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetappContext(Lcom/undatech/opaque/ConnectionGridActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectionLoader(Lcom/undatech/opaque/ConnectionGridActivity;)Lcom/undatech/opaque/util/ConnectionLoader;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->connectionLoader:Lcom/undatech/opaque/util/ConnectionLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgridView(Lcom/undatech/opaque/ConnectionGridActivity;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->gridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearch(Lcom/undatech/opaque/ConnectionGridActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->search:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeleteConnection(Lcom/undatech/opaque/ConnectionGridActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->deleteConnection(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$meditConnection(Lcom/undatech/opaque/ConnectionGridActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->editConnection(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchConnection(Lcom/undatech/opaque/ConnectionGridActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->launchConnection(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 78
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->isConnecting:Z

    .line 86
    iput-boolean v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->togglingMasterPassword:Z

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    .line 88
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getNewPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->isStarting:Z

    .line 90
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->addNewConnection:Landroidx/appcompat/widget/AppCompatImageButton;

    return-void
.end method

.method private checkMasterPassword(Ljava/lang/String;)Z
    .locals 2

    .line 464
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v1, "Checking master password."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v0, Lcom/iiordanov/bVNC/Database;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    .line 468
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 470
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 475
    :goto_0
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    return p1
.end method

.method private deleteConnection(Landroid/view/View;)V
    .locals 4

    .line 213
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v1, "Delete Connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget v0, Lcom/undatech/remoteClientUi/R$id;->grid_item_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    sget v1, Lcom/undatech/remoteClientUi/R$id;->grid_item_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/undatech/remoteClientUi/R$string;->delete_connection:I

    invoke-virtual {p0, v2}, Lcom/undatech/opaque/ConnectionGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/undatech/remoteClientUi/R$string;->delete_connection:I

    invoke-virtual {p0, v3}, Lcom/undatech/opaque/ConnectionGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " ?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/undatech/opaque/ConnectionGridActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/undatech/opaque/ConnectionGridActivity$5;-><init>(Lcom/undatech/opaque/ConnectionGridActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v1, p1, v2, v0}, Lcom/iiordanov/bVNC/Utils;->showYesNoPrompt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private editConnection(Landroid/view/View;)V
    .locals 3

    .line 196
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v1, "Modify Connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget v0, Lcom/undatech/remoteClientUi/R$id;->grid_item_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->connectionLoader:Lcom/undatech/opaque/util/ConnectionLoader;

    invoke-virtual {v0}, Lcom/undatech/opaque/util/ConnectionLoader;->getConnectionsById()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/undatech/opaque/Connection;

    .line 199
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iiordanov/bVNC/Utils;->getConnectionSetupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->connectionLoader:Lcom/undatech/opaque/util/ConnectionLoader;

    invoke-virtual {v0}, Lcom/undatech/opaque/util/ConnectionLoader;->getConnectionsById()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/undatech/opaque/ConnectionSettings;

    .line 202
    const-string v0, "com.undatech.opaque.connectionToEdit"

    invoke-virtual {p1}, Lcom/undatech/opaque/ConnectionSettings;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 206
    :cond_0
    const-string p1, "isNewConnection"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string p1, "connID"

    invoke-interface {v0}, Lcom/undatech/opaque/Connection;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    :goto_0
    invoke-virtual {p0, v1}, Lcom/undatech/opaque/ConnectionGridActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchConnection(Landroid/view/View;)V
    .locals 2

    .line 173
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v1, "Launch Connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 176
    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->isConnecting:Z

    .line 180
    sget v0, Lcom/undatech/remoteClientUi/R$id;->grid_item_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.iiordanov.bVNC.RemoteCanvasActivity"

    invoke-static {v1}, Lcom/undatech/opaque/util/GeneralUtils;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->connectionLoader:Lcom/undatech/opaque/util/ConnectionLoader;

    invoke-virtual {v1}, Lcom/undatech/opaque/util/ConnectionLoader;->getConnectionsById()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/undatech/opaque/ConnectionSettings;

    .line 184
    iget-object v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->appContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/undatech/opaque/ConnectionSettings;->loadFromSharedPreferences(Landroid/content/Context;)V

    .line 185
    const-string v1, "com.undatech.opaque.ConnectionSettings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->connectionLoader:Lcom/undatech/opaque/util/ConnectionLoader;

    invoke-virtual {v1}, Lcom/undatech/opaque/util/ConnectionLoader;->getConnectionsById()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/ConnectionBean;

    .line 189
    iget-object v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/iiordanov/bVNC/Utils;->getConnectionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_getValues()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    :goto_0
    invoke-virtual {p0, v0}, Lcom/undatech/opaque/ConnectionGridActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private loadSavedConnections()V
    .locals 6

    .line 287
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result v0

    .line 288
    new-instance v1, Lcom/undatech/opaque/util/ConnectionLoader;

    iget-object v2, p0, Lcom/undatech/opaque/ConnectionGridActivity;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/undatech/opaque/util/ConnectionLoader;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->connectionLoader:Lcom/undatech/opaque/util/ConnectionLoader;

    .line 289
    invoke-virtual {v1}, Lcom/undatech/opaque/util/ConnectionLoader;->getNumConnections()I

    move-result v0

    const-string v1, " "

    const/4 v2, 0x2

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 291
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->gridView:Landroid/widget/GridView;

    new-instance v3, Lcom/undatech/opaque/LabeledImageApapter;

    iget-object v4, p0, Lcom/undatech/opaque/ConnectionGridActivity;->connectionLoader:Lcom/undatech/opaque/util/ConnectionLoader;

    .line 292
    invoke-virtual {v4}, Lcom/undatech/opaque/util/ConnectionLoader;->getConnectionsById()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/undatech/opaque/ConnectionGridActivity;->search:Landroid/widget/EditText;

    .line 293
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v4, v1, v2}, Lcom/undatech/opaque/LabeledImageApapter;-><init>(Landroid/content/Context;Ljava/util/Map;[Ljava/lang/String;I)V

    .line 291
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->gridView:Landroid/widget/GridView;

    new-instance v3, Lcom/undatech/opaque/LabeledImageApapter;

    iget-object v4, p0, Lcom/undatech/opaque/ConnectionGridActivity;->search:Landroid/widget/EditText;

    .line 297
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v1, v2}, Lcom/undatech/opaque/LabeledImageApapter;-><init>(Landroid/content/Context;Ljava/util/Map;[Ljava/lang/String;I)V

    .line 295
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method

.method private removeGetPasswordFragments()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 559
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 560
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getNewPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getNewPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 565
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 566
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method private showGetTextFragment(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V
    .locals 2

    .line 548
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->removeGetPasswordFragments()V

    const/4 v0, 0x0

    .line 550
    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->setCancelable(Z)V

    .line 551
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addNewConnection()V
    .locals 3

    .line 305
    new-instance v0, Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/Utils;->getConnectionSetupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    const-string v1, "isNewConnection"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Lcom/undatech/opaque/ConnectionGridActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public addNewConnection(Landroid/view/MenuItem;)V
    .locals 0

    .line 315
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->addNewConnection()V

    return-void
.end method

.method public addNewConnection(Landroid/view/View;)V
    .locals 0

    .line 322
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->addNewConnection()V

    return-void
.end method

.method public copyLogcat(Landroid/view/MenuItem;)V
    .locals 2

    .line 330
    new-instance p1, Lcom/undatech/opaque/util/LogcatReader;

    invoke-direct {p1}, Lcom/undatech/opaque/util/LogcatReader;-><init>()V

    .line 331
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/undatech/opaque/ConnectionGridActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const/16 v1, 0x1f4

    .line 332
    invoke-virtual {p1, v1}, Lcom/undatech/opaque/util/LogcatReader;->getMyLogcat(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$string;->log_copied:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public editDefaultSettings(Landroid/view/MenuItem;)V
    .locals 2

    .line 342
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v0, "editDefaultSettings selected."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.undatech.opaque.AdvancedSettingsActivity"

    invoke-static {v0}, Lcom/undatech/opaque/util/GeneralUtils;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    new-instance v0, Lcom/undatech/opaque/ConnectionSettings;

    const-string v1, "defaultSettings"

    invoke-direct {v0, v1}, Lcom/undatech/opaque/ConnectionSettings;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/undatech/opaque/ConnectionSettings;->loadFromSharedPreferences(Landroid/content/Context;)V

    .line 347
    const-string v1, "com.undatech.opaque.ConnectionSettings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 348
    invoke-virtual {p0, p1, v0}, Lcom/undatech/opaque/ConnectionGridActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 350
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 351
    const-string v0, "com.iiordanov.bVNC.GlobalPreferencesActivity"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public handlePassword(Ljava/lang/String;Z)V
    .locals 5

    .line 484
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->togglingMasterPassword:Z

    const-string v1, "Dialog cancelled, so quitting."

    if-eqz v0, :cond_6

    .line 485
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v2, "Asked to toggle master pasword."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->togglingMasterPassword:Z

    .line 488
    const-string v0, "masterPasswordEnabled"

    invoke-static {p0, v0}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_3

    .line 489
    sget-object v2, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v4, "Master password is enabled."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 492
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->master_password_error_password_necessary:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/Utils;->showFatalErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 494
    :cond_0
    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->checkMasterPassword(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 495
    sget-object p2, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v1, "Entered password correct, disabling password."

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {p1}, Lcom/iiordanov/bVNC/Database;->setPassword(Ljava/lang/String;)V

    .line 498
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p1, v3}, Lcom/iiordanov/bVNC/Database;->changeDatabasePassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 499
    invoke-static {p0, v0}, Lcom/iiordanov/bVNC/Utils;->toggleSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->master_password_error_failed_to_disable:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/Utils;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 503
    :goto_0
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->removeGetPasswordFragments()V

    .line 504
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->loadSavedConnections()V

    goto/16 :goto_2

    .line 506
    :cond_2
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string p2, "Entered password is wrong or dialog cancelled, so quitting."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->master_password_error_wrong_password:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/Utils;->showFatalErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 510
    :cond_3
    sget-object v1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v2, "Master password is disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_5

    .line 513
    sget-object p2, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v1, "Setting master password."

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-static {v3}, Lcom/iiordanov/bVNC/Database;->setPassword(Ljava/lang/String;)V

    .line 515
    iget-object p2, p0, Lcom/undatech/opaque/ConnectionGridActivity;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p2, p1}, Lcom/iiordanov/bVNC/Database;->changeDatabasePassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 516
    invoke-static {p0, v0}, Lcom/iiordanov/bVNC/Utils;->toggleSharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 518
    :cond_4
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->master_password_error_failed_to_enable:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/Utils;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 522
    :cond_5
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string p2, "Dialog cancelled, not setting master password."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->master_password_error_password_not_set:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/Utils;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    :goto_1
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->removeGetPasswordFragments()V

    .line 526
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->loadSavedConnections()V

    goto :goto_2

    .line 530
    :cond_6
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v2, "Just checking the password."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    .line 532
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->master_password_error_password_necessary:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/Utils;->showFatalErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 534
    :cond_7
    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->checkMasterPassword(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 535
    sget-object p2, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v0, "Entered password is correct, so proceeding."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {p1}, Lcom/iiordanov/bVNC/Database;->setPassword(Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->removeGetPasswordFragments()V

    .line 538
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->loadSavedConnections()V

    goto :goto_2

    .line 541
    :cond_8
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string p2, "Entered password is wrong, so quitting."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/undatech/remoteClientUi/R$string;->master_password_error_wrong_password:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/Utils;->showFatalErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 369
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 375
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 376
    const-string p2, "com.undatech.opaque.ConnectionSettings"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/undatech/opaque/ConnectionSettings;

    .line 377
    invoke-virtual {p1, p0}, Lcom/undatech/opaque/ConnectionSettings;->saveToSharedPreferences(Landroid/content/Context;)V

    goto :goto_0

    .line 379
    :cond_1
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string p2, "Error during AdvancedSettingsActivity."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 94
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->appContext:Landroid/content/Context;

    .line 96
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->grid_view_activity:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->setContentView(I)V

    .line 98
    sget p1, Lcom/undatech/remoteClientUi/R$id;->gridView:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->gridView:Landroid/widget/GridView;

    .line 99
    new-instance v0, Lcom/undatech/opaque/ConnectionGridActivity$1;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/ConnectionGridActivity$1;-><init>(Lcom/undatech/opaque/ConnectionGridActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->gridView:Landroid/widget/GridView;

    new-instance v0, Lcom/undatech/opaque/ConnectionGridActivity$2;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/ConnectionGridActivity$2;-><init>(Lcom/undatech/opaque/ConnectionGridActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 128
    new-instance p1, Lcom/iiordanov/util/PermissionsManager;

    invoke-direct {p1}, Lcom/iiordanov/util/PermissionsManager;-><init>()V

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->permissionsManager:Lcom/iiordanov/util/PermissionsManager;

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p1, p0, v0}, Lcom/iiordanov/util/PermissionsManager;->requestPermissions(Landroid/app/Activity;Z)V

    .line 131
    sget p1, Lcom/undatech/remoteClientUi/R$id;->search:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->search:Landroid/widget/EditText;

    .line 132
    new-instance v0, Lcom/undatech/opaque/ConnectionGridActivity$3;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/ConnectionGridActivity$3;-><init>(Lcom/undatech/opaque/ConnectionGridActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/App;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/App;->getDatabase()Lcom/iiordanov/bVNC/Database;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->database:Lcom/iiordanov/bVNC/Database;

    .line 149
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    if-nez p1, :cond_0

    .line 150
    sget p1, Lcom/undatech/remoteClientUi/R$string;->master_password_verify:I

    .line 151
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/undatech/remoteClientUi/R$string;->master_password_verify_message:I

    sget v5, Lcom/undatech/remoteClientUi/R$string;->master_password_set_error:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 150
    const-string v0, "DIALOG_ID_GET_MASTER_PASSWORD"

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v9}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getNewPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    if-nez p1, :cond_1

    .line 156
    sget p1, Lcom/undatech/remoteClientUi/R$string;->master_password_set:I

    .line 157
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/undatech/remoteClientUi/R$string;->master_password_set_message:I

    sget v5, Lcom/undatech/remoteClientUi/R$string;->master_password_set_error:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 156
    const-string v0, "DIALOG_ID_GET_MATCHING_MASTER_PASSWORDS"

    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v0 .. v9}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getNewPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    .line 161
    :cond_1
    invoke-static {p0}, Lcom/undatech/opaque/util/FileUtils;->logFilesInPrivateStorage(Landroid/content/Context;)V

    .line 162
    const-string p1, ".config/freerdp/licenses"

    invoke-static {p0, p1}, Lcom/undatech/opaque/util/FileUtils;->deletePrivateFileIfExisting(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    sget p1, Lcom/undatech/remoteClientUi/R$id;->addNewConnection:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->addNewConnection:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 164
    new-instance v0, Lcom/undatech/opaque/ConnectionGridActivity$4;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/ConnectionGridActivity$4;-><init>(Lcom/undatech/opaque/ConnectionGridActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 428
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->importexport:I

    if-ne p1, v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->isOpaque(Ljava/lang/String;)Z

    move-result p1

    .line 430
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->database:Lcom/iiordanov/bVNC/Database;

    invoke-direct {v0, p0, v1, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;-><init>(Landroid/app/Activity;Lcom/iiordanov/bVNC/Database;Z)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 359
    sget v1, Lcom/undatech/remoteClientUi/R$menu;->grid_view_activity_actions:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 360
    sget v1, Lcom/undatech/remoteClientUi/R$menu;->input_mode_menu_item:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 361
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 390
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v0, "onMenuOpened"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :try_start_0
    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemInputMode:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->updateInputMenu(Landroid/view/Menu;)V

    .line 393
    sget p1, Lcom/undatech/remoteClientUi/R$id;->itemMasterPassword:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 394
    const-string p2, "masterPasswordEnabled"

    invoke-static {p0, p2}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 440
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 441
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemExportImport:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->permissionsManager:Lcom/iiordanov/util/PermissionsManager;

    invoke-virtual {p1, p0, v2}, Lcom/iiordanov/util/PermissionsManager;->requestPermissions(Landroid/app/Activity;Z)V

    .line 443
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->importexport:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->showDialog(I)V

    goto :goto_0

    .line 444
    :cond_0
    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemMasterPassword:I

    if-ne v0, v1, :cond_3

    .line 445
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isFree(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 446
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->database:Lcom/iiordanov/bVNC/Database;

    invoke-static {p0, p1, v2}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->showIntroTextIfNecessary(Landroid/app/Activity;Lcom/iiordanov/bVNC/Database;Z)V

    goto :goto_0

    .line 448
    :cond_1
    iput-boolean v2, p0, Lcom/undatech/opaque/ConnectionGridActivity;->togglingMasterPassword:Z

    .line 449
    const-string p1, "masterPasswordEnabled"

    invoke-static {p0, p1}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 450
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->showGetTextFragment(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V

    goto :goto_0

    .line 452
    :cond_2
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getNewPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->showGetTextFragment(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V

    goto :goto_0

    .line 455
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    sget v1, Lcom/undatech/remoteClientUi/R$id;->itemInputModeGroup:I

    if-ne v0, v1, :cond_4

    .line 456
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeMap:Ljava/util/Map;

    .line 458
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 457
    const-string v0, "defaultInputMethod"

    invoke-static {p0, v0, p1}, Lcom/iiordanov/bVNC/Utils;->setSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v2
.end method

.method protected onPause()V
    .locals 2

    .line 268
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 269
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->database:Lcom/iiordanov/bVNC/Database;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 255
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 256
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume of version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->getVersionAndCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v0, "masterPasswordEnabled"

    invoke-static {p0, v0}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-direct {p0, v0}, Lcom/undatech/opaque/ConnectionGridActivity;->showGetTextFragment(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V

    goto :goto_1

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->loadSavedConnections()V

    .line 261
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->database:Lcom/iiordanov/bVNC/Database;

    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isFree(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/undatech/opaque/ConnectionGridActivity;->isStarting:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-static {p0, v0, v2}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->showIntroTextIfNecessary(Landroid/app/Activity;Lcom/iiordanov/bVNC/Database;Z)V

    .line 263
    :goto_1
    iput-boolean v1, p0, Lcom/undatech/opaque/ConnectionGridActivity;->isStarting:Z

    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .line 276
    sget-object v0, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResumeFragments called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 278
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 279
    const-string v0, "masterPasswordEnabled"

    invoke-static {p0, v0}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionGridActivity;->getPassword:Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-direct {p0, v0}, Lcom/undatech/opaque/ConnectionGridActivity;->showGetTextFragment(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionGridActivity;->loadSavedConnections()V

    :goto_0
    return-void
.end method

.method public onTextObtained(Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 0

    const/4 p1, 0x0

    .line 480
    aget-object p1, p2, p1

    invoke-virtual {p0, p1, p3}, Lcom/undatech/opaque/ConnectionGridActivity;->handlePassword(Ljava/lang/String;Z)V

    return-void
.end method

.method public reportBug(Landroid/view/MenuItem;)V
    .locals 1

    .line 584
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v0, "Showing report bug page."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    const-string v0, "https://github.com/iiordanov/remote-desktop-clients/issues"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showMainScreenHelp(Landroid/view/MenuItem;)V
    .locals 1

    .line 571
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v0, "Showing main screen help."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->createMainScreenDialog(Landroid/content/Context;)Landroid/app/Dialog;

    return-void
.end method

.method public showSupportForum(Landroid/view/MenuItem;)V
    .locals 1

    .line 576
    sget-object p1, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    const-string v0, "Showing support forum."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    const-string v0, "https://groups.google.com/forum/#!forum/bvnc-ardp-aspice-opaque-remote-desktop-clients"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 580
    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionGridActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method updateInputMenu(Landroid/view/Menu;)V
    .locals 8

    .line 403
    sget-object v0, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    array-length v0, v0

    new-array v1, v0, [Landroid/view/MenuItem;

    const/4 v2, 0x0

    move v3, v2

    .line 404
    :goto_0
    sget-object v4, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 405
    sget-object v4, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeIds:[I

    aget v4, v4, v3

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_0
    const-string p1, "defaultInputMethod"

    const-string v3, "TOUCH_ZOOM_MODE"

    invoke-static {p0, p1, v3}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 409
    sget-object v3, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Default Input Mode Item: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-ge v2, v0, :cond_2

    .line 412
    :try_start_0
    aget-object v3, v1, v2

    .line 413
    sget-object v4, Lcom/undatech/opaque/ConnectionGridActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input Mode Item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeMap:Ljava/util/Map;

    .line 414
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v4, Lcom/iiordanov/bVNC/RemoteCanvasActivity;->inputModeMap:Ljava/util/Map;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 417
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    return-void
.end method
