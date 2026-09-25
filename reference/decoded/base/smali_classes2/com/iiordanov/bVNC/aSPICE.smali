.class public Lcom/iiordanov/bVNC/aSPICE;
.super Lcom/iiordanov/bVNC/MainConfiguration;
.source "aSPICE.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "aSPICE"


# instance fields
.field private buttonImportCa:Landroid/widget/Button;

.field private checkboxEnableSound:Landroid/widget/CheckBox;

.field private checkboxKeepPassword:Landroid/widget/CheckBox;

.field private checkboxRotateDpad:Landroid/widget/CheckBox;

.field private checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

.field private checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

.field private checkboxUseSshPubkey:Landroid/widget/CheckBox;

.field private layoutAdvancedSettings:Landroid/widget/LinearLayout;

.field private layoutMapSpinner:Landroid/widget/Spinner;

.field private passwordText:Landroid/widget/EditText;

.field private portText:Landroid/widget/EditText;

.field private resHeight:Landroid/widget/EditText;

.field private resWidth:Landroid/widget/EditText;

.field private spinnerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spinnerGeometry:Landroid/widget/Spinner;

.field private sshPort:Landroid/widget/EditText;

.field private sshServer:Landroid/widget/EditText;

.field private sshUser:Landroid/widget/EditText;

.field private textNickname:Landroid/widget/EditText;

.field private tlsPort:Landroid/widget/EditText;

.field private toggleAdvancedSettings:Landroid/widget/ToggleButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetlayoutAdvancedSettings(Lcom/iiordanov/bVNC/aSPICE;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/aSPICE;->layoutAdvancedSettings:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetRemoteWidthAndHeight(Lcom/iiordanov/bVNC/aSPICE;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/aSPICE;->setRemoteWidthAndHeight()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/iiordanov/bVNC/MainConfiguration;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->layoutMapSpinner:Landroid/widget/Spinner;

    .line 93
    iput-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->spinnerArray:Ljava/util/List;

    return-void
.end method

.method private setRemoteWidthAndHeight()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpResType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->resWidth:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->resHeight:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->resWidth:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->resHeight:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->main_spice:I

    iput v0, p0, Lcom/iiordanov/bVNC/aSPICE;->layoutID:I

    .line 98
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshServer:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->sshServer:Landroid/widget/EditText;

    .line 101
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshPort:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->sshPort:Landroid/widget/EditText;

    .line 102
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshUser:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->sshUser:Landroid/widget/EditText;

    .line 103
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textPORT:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->portText:Landroid/widget/EditText;

    .line 104
    sget p1, Lcom/undatech/remoteClientUi/R$id;->tlsPort:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->tlsPort:Landroid/widget/EditText;

    .line 105
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textPASSWORD:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->passwordText:Landroid/widget/EditText;

    .line 106
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textNickname:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->textNickname:Landroid/widget/EditText;

    .line 108
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonImportCa:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->buttonImportCa:Landroid/widget/Button;

    .line 109
    new-instance v0, Lcom/iiordanov/bVNC/aSPICE$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/aSPICE$1;-><init>(Lcom/iiordanov/bVNC/aSPICE;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxUseSshPubkey:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseSshPubkey:Landroid/widget/CheckBox;

    .line 121
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepPassword:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxKeepPassword:Landroid/widget/CheckBox;

    .line 122
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxUseDpadAsArrows:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

    .line 123
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxRotateDpad:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxRotateDpad:Landroid/widget/CheckBox;

    .line 124
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxUseLastPositionToolbar:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    .line 125
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxEnableSound:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxEnableSound:Landroid/widget/CheckBox;

    .line 128
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleAdvancedSettings:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->toggleAdvancedSettings:Landroid/widget/ToggleButton;

    .line 129
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutAdvancedSettings:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->layoutAdvancedSettings:Landroid/widget/LinearLayout;

    .line 130
    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->toggleAdvancedSettings:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/iiordanov/bVNC/aSPICE$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/aSPICE$2;-><init>(Lcom/iiordanov/bVNC/aSPICE;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerRdpGeometry:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->spinnerGeometry:Landroid/widget/Spinner;

    .line 143
    sget p1, Lcom/undatech/remoteClientUi/R$id;->rdpWidth:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->resWidth:Landroid/widget/EditText;

    .line 144
    sget p1, Lcom/undatech/remoteClientUi/R$id;->rdpHeight:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->resHeight:Landroid/widget/EditText;

    .line 145
    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->spinnerGeometry:Landroid/widget/Spinner;

    new-instance v0, Lcom/iiordanov/bVNC/aSPICE$3;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/aSPICE$3;-><init>(Lcom/iiordanov/bVNC/aSPICE;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 158
    :try_start_0
    const-string p1, "layouts"

    invoke-static {p0, p1}, Lcom/undatech/opaque/util/FileUtils;->listFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->spinnerArray:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    :goto_0
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutMaps:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->layoutMapSpinner:Landroid/widget/Spinner;

    .line 164
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->spinnerArray:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 168
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->layoutMapSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 169
    sget p1, Lcom/undatech/remoteClientUi/R$array;->spice_connection_type:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aSPICE;->setConnectionTypeSpinnerAdapter(I)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .line 192
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->import_tls_ca_dialog:I

    if-ne p1, v0, :cond_0

    .line 193
    new-instance p1, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;

    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->database:Lcom/iiordanov/bVNC/Database;

    invoke-direct {p1, p0, v0}, Lcom/iiordanov/bVNC/dialogs/ImportTlsCaDialog;-><init>(Landroid/content/Context;Lcom/iiordanov/bVNC/Database;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public save(Landroid/view/MenuItem;)V
    .locals 1

    .line 323
    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->ipText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->portText:Landroid/widget/EditText;

    .line 324
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/iiordanov/bVNC/aSPICE;->tlsPort:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/aSPICE;->saveConnectionAndCloseLayout()V

    goto :goto_0

    .line 327
    :cond_1
    sget p1, Lcom/undatech/remoteClientUi/R$string;->spice_server_empty:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected updateSelectedFromView()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-super {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->commonUpdateSelectedFromView()V

    .line 268
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->portText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v3, p0, Lcom/iiordanov/bVNC/aSPICE;->portText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setPort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setPort(I)V

    .line 277
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->tlsPort:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->tlsPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setTlsPort(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setTlsPort(I)V

    .line 287
    :catch_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->sshPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPort(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 291
    :catch_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->textNickname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setNickname(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->sshServer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshServer(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->sshUser:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshUser(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseSshPubkey:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseSshPubKey(Z)V

    .line 298
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->spinnerGeometry:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpResType(I)V

    .line 300
    :try_start_3
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->resWidth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpWidth(I)V

    .line 301
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->resHeight:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpHeight(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 303
    :catch_3
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->passwordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setPassword(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxKeepPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setKeepPassword(Z)V

    .line 305
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseDpadAsArrows(Z)V

    .line 306
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxRotateDpad:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRotateDpad(Z)V

    .line 307
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbar(Z)V

    .line 308
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbarMoved(Z)V

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxEnableSound:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setEnableSound(Z)V

    .line 314
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->layoutMapSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 318
    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->setLayoutMap(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public updateViewFromSelected()V
    .locals 4

    .line 199
    invoke-super {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->commonUpdateViewFromSelected()V

    .line 201
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->sshServer:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->sshPort:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->sshUser:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseSshPubkey:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseSshPubKey()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getPort()I

    move-result v0

    const-string v1, ""

    if-gez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->portText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->portText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getTlsPort()I

    move-result v0

    if-gez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->tlsPort:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->tlsPort:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getTlsPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepPassword()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->passwordText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxKeepPassword:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepPassword()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseDpadAsArrows()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxRotateDpad:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getRotateDpad()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/iiordanov/bVNC/aSPICE;->isNewConnection:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseLastPositionToolbar()Z

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/aSPICE;->useLastPositionToolbarDefault()Z

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getEnableSound()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->permissionsManager:Lcom/iiordanov/util/PermissionsManager;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/iiordanov/util/PermissionsManager;->requestPermissions(Landroid/app/Activity;Z)V

    .line 231
    :cond_6
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->checkboxEnableSound:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getEnableSound()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->textNickname:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->spinnerGeometry:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpResType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 234
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->resWidth:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->resHeight:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-direct {p0}, Lcom/iiordanov/bVNC/aSPICE;->setRemoteWidthAndHeight()V

    .line 239
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getCaCert()Ljava/lang/String;

    move-result-object v0

    .line 242
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/aSPICE;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ca"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getCaCert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    iget-object v3, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setCaCertPath(Ljava/lang/String;)V

    .line 244
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 246
    const-string v0, "aSPICE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getCaCert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 255
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->spinnerArray:Ljava/util/List;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getLayoutMap()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    .line 257
    iget-object v0, p0, Lcom/iiordanov/bVNC/aSPICE;->spinnerArray:Ljava/util/List;

    const-string v1, "English (US)"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 259
    :cond_8
    iget-object v1, p0, Lcom/iiordanov/bVNC/aSPICE;->layoutMapSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
