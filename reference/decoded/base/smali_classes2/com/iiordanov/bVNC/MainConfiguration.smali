.class public abstract Lcom/iiordanov/bVNC/MainConfiguration;
.super Landroidx/fragment/app/FragmentActivity;
.source "MainConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainConfiguration"


# instance fields
.field private buttonGeneratePubkey:Landroid/widget/Button;

.field private checkboxKeepSshPass:Landroid/widget/CheckBox;

.field private connID:J

.field protected connectionType:Landroid/widget/Spinner;

.field protected database:Lcom/iiordanov/bVNC/Database;

.field protected ipText:Landroid/widget/EditText;

.field protected isNewConnection:Z

.field protected layoutID:I

.field private layoutUseSshPubkey:Landroid/widget/LinearLayout;

.field protected permissionsManager:Lcom/iiordanov/util/PermissionsManager;

.field private radioCursor:Landroid/widget/RadioGroup;

.field protected selected:Lcom/iiordanov/bVNC/ConnectionBean;

.field protected selectedConnType:I

.field private sshCaption:Landroid/widget/TextView;

.field private sshCredentials:Landroid/widget/LinearLayout;

.field private sshPassphrase:Landroid/widget/EditText;

.field private sshPassword:Landroid/widget/EditText;

.field private sshServerEntry:Landroid/widget/LinearLayout;

.field protected textNickname:Landroid/widget/EditText;

.field private versionAndCode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->connID:J

    return-void
.end method


# virtual methods
.method public arriveOnPage()V
    .locals 6

    .line 309
    const-string v0, "MainConfiguration"

    const-string v1, "arriveOnPage called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->isNewConnection:Z

    if-nez v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    const-string v2, "CONNECTION_BEAN"

    sget-object v3, Lcom/iiordanov/bVNC/ConnectionBean;->newInstance:Lcom/antlersoft/android/dbimpl/NewInstance;

    invoke-static {v0, v2, v1, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getAll(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V

    .line 316
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 317
    new-instance v0, Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/ConnectionBean;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 318
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 320
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iiordanov/bVNC/MainConfiguration;->connID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 321
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iiordanov/bVNC/ConnectionBean;

    iput-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-nez v0, :cond_3

    .line 328
    new-instance v0, Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/ConnectionBean;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    .line 330
    :cond_3
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->updateViewFromSelected()V

    return-void
.end method

.method public commonUpdateSelectedFromView()V
    .locals 2

    .line 110
    const-string v0, "MainConfiguration"

    const-string v1, "commonUpdateSelectedFromView called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget v1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selectedConnType:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    .line 112
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->ipText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAddress(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshPassphrase:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPassPhrase(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPassword(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->checkboxKeepSshPass:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setKeepSshPassword(Z)V

    .line 117
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->radioCursor:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/undatech/remoteClientUi/R$id;->radioCursorAuto:I

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLocalCursor(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->radioCursor:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/undatech/remoteClientUi/R$id;->radioCursorForceLocal:I

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLocalCursor(I)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->radioCursor:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/undatech/remoteClientUi/R$id;->radioCursorForceDisable:I

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLocalCursor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public commonUpdateViewFromSelected()V
    .locals 3

    .line 77
    const-string v0, "MainConfiguration"

    const-string v1, "commonUpdateViewFromSelected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0, p0}, Lcom/iiordanov/bVNC/ConnectionBean;->loadFromSharedPreferences(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getConnectionType()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selectedConnType:I

    .line 80
    iget-object v1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->connectionType:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 81
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->checkboxKeepSshPass:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepSshPassword()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepSshPassword()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepSshPassword()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPassPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshPassphrase:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 90
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshPassphrase:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPassPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_3
    iget v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selectedConnType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->ipText:Landroid/widget/EditText;

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->ipText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_4
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseLocalCursor()I

    move-result v0

    if-nez v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->radioCursor:Landroid/widget/RadioGroup;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->radioCursorAuto:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseLocalCursor()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 103
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->radioCursor:Landroid/widget/RadioGroup;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->radioCursorForceLocal:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseLocalCursor()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 105
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->radioCursor:Landroid/widget/RadioGroup;

    sget v1, Lcom/undatech/remoteClientUi/R$id;->radioCursorForceDisable:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method protected generatePubkey()V
    .locals 4

    .line 337
    const-string v0, "MainConfiguration"

    const-string v1, "generatePubkey called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->updateSelectedFromView()V

    .line 339
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/iiordanov/bVNC/ConnectionBean;->saveAndWriteRecent(ZLandroid/content/Context;)V

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/iiordanov/pubkeygenerator/GeneratePubkeyActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    iget-object v2, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPrivKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrivateKey"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/MainConfiguration;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getCurrentConnection()Lcom/iiordanov/bVNC/ConnectionBean;
    .locals 2

    .line 444
    const-string v0, "MainConfiguration"

    const-string v1, "getCurrentConnection called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .line 352
    const-string v0, "MainConfiguration"

    const-string v1, "getHeight called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 355
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 356
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 357
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 358
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 361
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 362
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 365
    :cond_0
    invoke-static {}, Lcom/iiordanov/bVNC/Utils;->isBlackBerry()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public getWidth()I
    .locals 3

    .line 378
    const-string v0, "MainConfiguration"

    const-string v1, "getWidth called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 380
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 382
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 383
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 384
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 386
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 422
    const-string v0, "onActivityResult called"

    const-string v1, "MainConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    .line 426
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 427
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 428
    const-string p2, "PrivateKey"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 429
    iget-object p3, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p3}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPrivKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/undatech/remoteClientUi/R$string;->ssh_key_generated:I

    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/MainConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 431
    :cond_1
    iget-object p3, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p3, p2}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPrivKey(Ljava/lang/String;)V

    .line 432
    iget-object p2, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const-string p3, "PublicKey"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPubKey(Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p1, v0, p0}, Lcom/iiordanov/bVNC/ConnectionBean;->saveAndWriteRecent(ZLandroid/content/Context;)V

    goto :goto_0

    .line 435
    :cond_2
    const-string p1, "The user cancelled SSH key generation."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 266
    const-string v0, "MainConfiguration"

    const-string v1, "onConfigurationChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 128
    const-string v0, "onCreate called"

    const-string v1, "MainConfiguration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    const-string v2, "isNewConnection"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iiordanov/bVNC/MainConfiguration;->isNewConnection:Z

    if-nez v2, :cond_0

    .line 133
    :try_start_0
    const-string v2, "connID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iiordanov/bVNC/MainConfiguration;->connID:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    .line 135
    iput-wide v2, p0, Lcom/iiordanov/bVNC/MainConfiguration;->connID:J

    .line 136
    const-string v2, "Could not parse connection to edit from connID!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 141
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->showMenu(Landroid/content/Context;)V

    .line 143
    iget p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->layoutID:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->setContentView(I)V

    .line 144
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 146
    new-instance p1, Lcom/iiordanov/util/PermissionsManager;

    invoke-direct {p1}, Lcom/iiordanov/util/PermissionsManager;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->permissionsManager:Lcom/iiordanov/util/PermissionsManager;

    .line 148
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textNickname:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->textNickname:Landroid/widget/EditText;

    .line 151
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonGeneratePubkey:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->buttonGeneratePubkey:Landroid/widget/Button;

    .line 152
    new-instance v0, Lcom/iiordanov/bVNC/MainConfiguration$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/MainConfiguration$1;-><init>(Lcom/iiordanov/bVNC/MainConfiguration;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget p1, Lcom/undatech/remoteClientUi/R$id;->versionAndCode:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->versionAndCode:Landroid/widget/TextView;

    .line 160
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->getVersionAndCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/iiordanov/bVNC/App;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/App;->getDatabase()Lcom/iiordanov/bVNC/Database;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->database:Lcom/iiordanov/bVNC/Database;

    .line 165
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonImportExport:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/MainConfiguration$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/MainConfiguration$2;-><init>(Lcom/iiordanov/bVNC/MainConfiguration;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    sget p1, Lcom/undatech/remoteClientUi/R$id;->copyLogcat:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/MainConfiguration$3;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/MainConfiguration$3;-><init>(Lcom/iiordanov/bVNC/MainConfiguration;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget p1, Lcom/undatech/remoteClientUi/R$id;->radioCursor:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->radioCursor:Landroid/widget/RadioGroup;

    .line 186
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshCredentials:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshCredentials:Landroid/widget/LinearLayout;

    .line 187
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshCaption:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshCaption:Landroid/widget/TextView;

    .line 188
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutUseSshPubkey:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->layoutUseSshPubkey:Landroid/widget/LinearLayout;

    .line 189
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshServerEntry:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshServerEntry:Landroid/widget/LinearLayout;

    .line 190
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshPassword:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshPassword:Landroid/widget/EditText;

    .line 191
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshPassphrase:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshPassphrase:Landroid/widget/EditText;

    .line 194
    sget p1, Lcom/undatech/remoteClientUi/R$id;->connectionType:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->connectionType:Landroid/widget/Spinner;

    .line 196
    new-instance v0, Lcom/iiordanov/bVNC/MainConfiguration$4;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/MainConfiguration$4;-><init>(Lcom/iiordanov/bVNC/MainConfiguration;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 217
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textIP:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->ipText:Landroid/widget/EditText;

    .line 218
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepSshPass:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->checkboxKeepSshPass:Landroid/widget/CheckBox;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 399
    const-string v0, "MainConfiguration"

    const-string v1, "onCreateOptionsMenu called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$menu;->connectionsetupmenu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 292
    const-string v0, "MainConfiguration"

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->database:Lcom/iiordanov/bVNC/Database;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 295
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 296
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 409
    const-string p1, "MainConfiguration"

    const-string v0, "onMenuOpened called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 411
    :try_start_0
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemSaveAsCopy:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->isNew()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 280
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 281
    const-string v0, "MainConfiguration"

    const-string v1, "onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->database:Lcom/iiordanov/bVNC/Database;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->updateSelectedFromView()V

    .line 286
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/iiordanov/bVNC/ConnectionBean;->saveAndWriteRecent(ZLandroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 249
    const-string v0, "MainConfiguration"

    const-string v1, "onResume called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 251
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .line 256
    const-string v0, "MainConfiguration"

    const-string v1, "onResumeFragments called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 258
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->arriveOnPage()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 242
    const-string v0, "MainConfiguration"

    const-string v1, "onStart called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 244
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 272
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 273
    const-string v0, "MainConfiguration"

    const-string v1, "onStop called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->database:Lcom/iiordanov/bVNC/Database;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public saveAsCopy(Landroid/view/MenuItem;)V
    .locals 3

    .line 449
    const-string p1, "MainConfiguration"

    const-string v0, "saveAsCopy called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->textNickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->textNickname:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/undatech/remoteClientUi/R$string;->copy_of:I

    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/MainConfiguration;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-static {}, Lcom/iiordanov/bVNC/Utils;->newScreenshotFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->setScreenshotFilename(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->updateSelectedFromView()V

    .line 454
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->set_Id(J)V

    .line 455
    iget-object p1, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/iiordanov/bVNC/ConnectionBean;->saveAndWriteRecent(ZLandroid/content/Context;)V

    .line 456
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->arriveOnPage()V

    .line 457
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->finish()V

    return-void
.end method

.method protected saveConnectionAndCloseLayout()V
    .locals 2

    .line 300
    const-string v0, "MainConfiguration"

    const-string v1, "saveConnectionAndCloseLayout called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->updateSelectedFromView()V

    .line 303
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/iiordanov/bVNC/ConnectionBean;->saveAndWriteRecent(ZLandroid/content/Context;)V

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->finish()V

    return-void
.end method

.method setConnectionTypeSpinnerAdapter(I)V
    .locals 2

    .line 222
    const-string v0, "MainConfiguration"

    const-string v1, "setConnectionTypeSpinnerAdapter called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->connection_list_entry:I

    invoke-static {p0, p1, v0}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p1

    .line 225
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->connection_list_entry:I

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 226
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->connectionType:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method protected setVisibilityOfSshWidgets(I)V
    .locals 2

    .line 233
    const-string v0, "MainConfiguration"

    const-string v1, "setVisibilityOfSshWidgets called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshCredentials:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshCaption:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->layoutUseSshPubkey:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/iiordanov/bVNC/MainConfiguration;->sshServerEntry:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showConnectionScreenHelp(Landroid/view/MenuItem;)V
    .locals 1

    .line 461
    const-string p1, "showConnectionScreenHelp called"

    const-string v0, "MainConfiguration"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string p1, "Showing connection screen help."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->createConnectionScreenDialog(Landroid/content/Context;)Landroid/app/Dialog;

    return-void
.end method

.method protected abstract updateSelectedFromView()V
.end method

.method protected abstract updateViewFromSelected()V
.end method

.method protected useLastPositionToolbarDefault()Z
    .locals 3

    .line 467
    const-string v0, "MainConfiguration"

    const-string v1, "UseLastPositionToolbarDefault called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v0, "generalSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/MainConfiguration;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 469
    const-string v1, "positionToolbarLastUsed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
