.class public Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;
.super Landroid/app/AlertDialog;
.source "ImportTlsCaDialog.java"


# static fields
.field private static final docIntent:Landroid/content/Intent;


# instance fields
.field private caCert:Landroid/widget/EditText;

.field private caCertPath:Landroid/widget/EditText;

.field private certSubject:Landroid/widget/EditText;

.field private database:Lcom/iiordanov/bVNC/Database;

.field private helpButton:Landroid/widget/Button;

.field private importButton:Landroid/widget/Button;

.field private mainConfigPage:Lcom/iiordanov/bVNC/aSPICE;

.field private selected:Lcom/iiordanov/bVNC/ConnectionBean;


# direct methods
.method static bridge synthetic -$$Nest$fgetmainConfigPage(Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;)Lcom/iiordanov/bVNC/aSPICE;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->mainConfigPage:Lcom/iiordanov/bVNC/aSPICE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mimportCaCert(Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->importCaCert()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://spice-space.org/page/SSLConnection"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->docIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iiordanov/bVNC/Database;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 73
    check-cast p1, Lcom/iiordanov/bVNC/aSPICE;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->mainConfigPage:Lcom/iiordanov/bVNC/aSPICE;

    .line 74
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/aSPICE;->getCurrentConnection()Lcom/iiordanov/bVNC/ConnectionBean;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    .line 75
    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->database:Lcom/iiordanov/bVNC/Database;

    return-void
.end method

.method private importCaCert()V
    .locals 6

    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->caCertPath:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 120
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 121
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    .line 126
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/undatech/remoteClientUi/R$string;->spice_ca_file_error_reading:I

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    if-nez v3, :cond_0

    .line 133
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->caCert:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 135
    :catch_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/undatech/remoteClientUi/R$string;->spice_ca_file_not_found:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private setWidgetStateAppropriately()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->mainConfigPage:Lcom/iiordanov/bVNC/aSPICE;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/aSPICE;->getCurrentConnection()Lcom/iiordanov/bVNC/ConnectionBean;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    .line 111
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->certSubject:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getCertSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->caCert:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getCaCert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->caCertPath:Landroid/widget/EditText;

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showDocumentation(Landroid/content/Context;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->docIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->setWidgetStateAppropriately()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->caCert:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setCaCert(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->certSubject:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setCertSubject(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->mainConfigPage:Lcom/iiordanov/bVNC/aSPICE;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/aSPICE;->updateViewFromSelected()V

    .line 93
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->saveAndWriteRecent(ZLandroid/content/Context;)V

    .line 94
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 146
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->import_tls_ca_dialog:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x20008

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 149
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 150
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v0, -0x1

    .line 151
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 152
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 153
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    sget p1, Lcom/undatech/remoteClientUi/R$id;->certSubject:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->certSubject:Landroid/widget/EditText;

    .line 156
    sget p1, Lcom/undatech/remoteClientUi/R$id;->caCert:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->caCert:Landroid/widget/EditText;

    .line 157
    sget p1, Lcom/undatech/remoteClientUi/R$id;->caCertPath:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->caCertPath:Landroid/widget/EditText;

    .line 160
    sget p1, Lcom/undatech/remoteClientUi/R$id;->importButton:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->importButton:Landroid/widget/Button;

    .line 161
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog$1;-><init>(Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    sget p1, Lcom/undatech/remoteClientUi/R$id;->helpButton:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->helpButton:Landroid/widget/Button;

    .line 171
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog$2;-><init>(Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;->setWidgetStateAppropriately()V

    return-void
.end method
