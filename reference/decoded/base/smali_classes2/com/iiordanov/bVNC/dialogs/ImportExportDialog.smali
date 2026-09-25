.class public Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;
.super Landroid/app/Dialog;
.source "ImportExportDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImportExportDialog"


# instance fields
.field private _textLoadUrl:Landroid/widget/EditText;

.field private _textSaveUrl:Landroid/widget/EditText;

.field private activity:Landroid/app/Activity;

.field private connectionsInSharedPrefs:Z

.field private database:Lcom/iiordanov/bVNC/Database;


# direct methods
.method static bridge synthetic -$$Nest$fget_textLoadUrl(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->_textLoadUrl:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_textSaveUrl(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->_textSaveUrl:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetactivity(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetconnectionsInSharedPrefs(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->connectionsInSharedPrefs:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabase(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)Lcom/iiordanov/bVNC/Database;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->database:Lcom/iiordanov/bVNC/Database;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$merrorNotify(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->errorNotify(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/iiordanov/bVNC/Database;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 70
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->activity:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->database:Lcom/iiordanov/bVNC/Database;

    .line 72
    iput-boolean p3, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->connectionsInSharedPrefs:Z

    return-void
.end method

.method private errorNotify(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 145
    const-string v0, "ImportExportDialog"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iiordanov/bVNC/Utils;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->importexport:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->setContentView(I)V

    .line 82
    sget p1, Lcom/undatech/remoteClientUi/R$string;->import_export_settings:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->setTitle(I)V

    .line 83
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textImportUrl:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->_textLoadUrl:Landroid/widget/EditText;

    .line 84
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textExportPath:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->_textSaveUrl:Landroid/widget/EditText;

    .line 86
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/Utils;->getExportFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->_textSaveUrl:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->_textLoadUrl:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonExport:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 94
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$1;-><init>(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonImport:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/ImportExportDialog$2;-><init>(Lcom/iiordanov/bVNC/dialogs/ImportExportDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
