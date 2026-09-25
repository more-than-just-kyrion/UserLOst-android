.class public Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ManageCustomCaFragment.java"

# interfaces
.implements Lcom/undatech/opaque/util/HttpsFileDownloader$OnDownloadFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$OnFragmentDismissedListener;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "ManageCustomCaFragment"

.field public static TYPE_OVIRT:I = 0x0

.field public static TYPE_SPICE:I = 0x1


# instance fields
.field private caCert:Landroid/widget/EditText;

.field private caCertPath:Landroid/widget/EditText;

.field private caPurpose:I

.field private caTextContents:Ljava/lang/String;

.field private currentConnection:Lcom/undatech/opaque/ConnectionSettings;

.field private dismissalListener:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$OnFragmentDismissedListener;

.field private downloadButton:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private helpButton:Landroid/widget/Button;

.field private importButton:Landroid/widget/Button;

.field private setCaText:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetcaCert(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caCert:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcaTextContents(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caTextContents:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdownloadFromServer(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->downloadFromServer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mimportCaCertFromFile(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->importCaCertFromFile()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caTextContents:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$1;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$1;-><init>(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)V

    iput-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->setCaText:Ljava/lang/Runnable;

    return-void
.end method

.method private downloadFromServer()V
    .locals 3

    .line 165
    sget-object v0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->TAG:Ljava/lang/String;

    const-string v1, "downloadFromServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v0}, Lcom/undatech/opaque/ConnectionSettings;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ovirt-engine/services/pki-resource?resource=ca-certificate&format=X509-PEM-CA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/undatech/opaque/util/HttpsFileDownloader;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Lcom/undatech/opaque/util/HttpsFileDownloader;-><init>(Ljava/lang/String;ZLcom/undatech/opaque/util/HttpsFileDownloader$OnDownloadFinishedListener;)V

    .line 172
    invoke-virtual {v1}, Lcom/undatech/opaque/util/HttpsFileDownloader;->initiateDownload()V

    return-void
.end method

.method private importCaCertFromFile()V
    .locals 7

    .line 176
    sget-object v0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->TAG:Ljava/lang/String;

    const-string v1, "importCaCertFromFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caCertPath:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 181
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 182
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 183
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 187
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 191
    :catch_0
    :try_start_2
    sget v5, Lcom/undatech/remoteClientUi/R$string;->ca_file_error_reading:I

    invoke-static {v0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    if-nez v4, :cond_0

    .line 194
    iget-object v1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caCert:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 196
    :catch_1
    sget v1, Lcom/undatech/remoteClientUi/R$string;->ca_file_not_found:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public static newInstance(ILcom/undatech/opaque/ConnectionSettings;)Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;
    .locals 3

    .line 91
    new-instance v0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;

    invoke-direct {v0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;-><init>()V

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v2, "caPurpose"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string p0, "currentConnection"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setWidgetStateAppropriately()V
    .locals 2

    .line 201
    iget v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caPurpose:I

    sget v1, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->TYPE_OVIRT:I

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caCert:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getOvirtCaData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caCertPath:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->getExternalSDCardDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExternalSDCardDirectory()Ljava/lang/String;
    .locals 2

    .line 220
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$OnFragmentDismissedListener;

    iput-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->dismissalListener:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$OnFragmentDismissedListener;

    .line 107
    sget-object v0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach: assigning OnFragmentDismissedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 109
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " must implement OnFragmentDismissedListener"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->handler:Landroid/os/Handler;

    .line 117
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "caPurpose"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caPurpose:I

    .line 118
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "currentConnection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/undatech/opaque/ConnectionSettings;

    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 123
    sget p3, Lcom/undatech/remoteClientUi/R$layout;->manage_custom_ca:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    sget p3, Lcom/undatech/remoteClientUi/R$string;->manage_custom_ca_title:I

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(I)V

    .line 128
    sget p2, Lcom/undatech/remoteClientUi/R$id;->caCert:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caCert:Landroid/widget/EditText;

    .line 129
    sget p2, Lcom/undatech/remoteClientUi/R$id;->caCertPath:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caCertPath:Landroid/widget/EditText;

    .line 132
    sget p2, Lcom/undatech/remoteClientUi/R$id;->importButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->importButton:Landroid/widget/Button;

    .line 133
    new-instance p3, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$2;

    invoke-direct {p3, p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$2;-><init>(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget p2, Lcom/undatech/remoteClientUi/R$id;->downloadButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->downloadButton:Landroid/widget/Button;

    .line 142
    new-instance p3, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$3;

    invoke-direct {p3, p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$3;-><init>(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget p2, Lcom/undatech/remoteClientUi/R$id;->helpButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->helpButton:Landroid/widget/Button;

    .line 151
    new-instance p3, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$4;

    invoke-direct {p3, p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$4;-><init>(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-direct {p0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->setWidgetStateAppropriately()V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 209
    sget-object p1, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->TAG:Ljava/lang/String;

    const-string v0, "dismiss: sending back data to Activity"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caPurpose:I

    sget v0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->TYPE_OVIRT:I

    if-ne p1, v0, :cond_0

    .line 212
    sget-object p1, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->TAG:Ljava/lang/String;

    const-string v0, "Setting custom oVirt CA"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    iget-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caCert:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->setOvirtCaData(Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->dismissalListener:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$OnFragmentDismissedListener;

    iget-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-interface {p1, v0}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$OnFragmentDismissedListener;->onFragmentDismissed(Lcom/undatech/opaque/ConnectionSettings;)V

    return-void
.end method

.method public onDownload(Ljava/lang/String;)V
    .locals 2

    .line 57
    sget-object v0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->caTextContents:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->setCaText:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnFragmentDismissedListener(Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$OnFragmentDismissedListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->dismissalListener:Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$OnFragmentDismissedListener;

    return-void
.end method
