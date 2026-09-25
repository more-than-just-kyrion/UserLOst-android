.class public Lcom/iiordanov/bVNC/aRDP;
.super Lcom/iiordanov/bVNC/MainConfiguration;
.source "aRDP.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "aRDP"


# instance fields
.field private checkboxConsoleMode:Landroid/widget/CheckBox;

.field private checkboxDesktopBackground:Landroid/widget/CheckBox;

.field private checkboxDesktopComposition:Landroid/widget/CheckBox;

.field private checkboxEnableGfx:Landroid/widget/CheckBox;

.field private checkboxEnableGfxH264:Landroid/widget/CheckBox;

.field private checkboxEnableRecording:Landroid/widget/CheckBox;

.field private checkboxFontSmoothing:Landroid/widget/CheckBox;

.field private checkboxKeepPassword:Landroid/widget/CheckBox;

.field private checkboxMenuAnimation:Landroid/widget/CheckBox;

.field private checkboxRedirectSdCard:Landroid/widget/CheckBox;

.field private checkboxRemoteFx:Landroid/widget/CheckBox;

.field private checkboxRotateDpad:Landroid/widget/CheckBox;

.field private checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

.field private checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

.field private checkboxUseSshPubkey:Landroid/widget/CheckBox;

.field private checkboxVisualStyles:Landroid/widget/CheckBox;

.field private checkboxWindowContents:Landroid/widget/CheckBox;

.field private groupRemoteSoundType:Landroid/widget/RadioGroup;

.field private layoutAdvancedSettings:Landroid/widget/LinearLayout;

.field private passwordText:Landroid/widget/EditText;

.field private portText:Landroid/widget/EditText;

.field private rdpDomain:Landroid/widget/EditText;

.field private rdpHeight:Landroid/widget/EditText;

.field private rdpWidth:Landroid/widget/EditText;

.field private spinnerRdpGeometry:Landroid/widget/Spinner;

.field private sshPort:Landroid/widget/EditText;

.field private sshServer:Landroid/widget/EditText;

.field private sshUser:Landroid/widget/EditText;

.field private textUsername:Landroid/widget/EditText;

.field private toggleAdvancedSettings:Landroid/widget/ToggleButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetlayoutAdvancedSettings(Lcom/iiordanov/bVNC/aRDP;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/aRDP;->layoutAdvancedSettings:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetRemoteWidthAndHeight(Lcom/iiordanov/bVNC/aRDP;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/aRDP;->setRemoteWidthAndHeight()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/iiordanov/bVNC/MainConfiguration;-><init>()V

    return-void
.end method

.method private setRemoteWidthAndHeight()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpResType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->rdpWidth:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->rdpHeight:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->rdpWidth:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->rdpHeight:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->main_rdp:I

    iput v0, p0, Lcom/iiordanov/bVNC/aRDP;->layoutID:I

    .line 96
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->onCreate(Landroid/os/Bundle;)V

    .line 98
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshServer:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->sshServer:Landroid/widget/EditText;

    .line 99
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshPort:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->sshPort:Landroid/widget/EditText;

    .line 100
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshUser:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->sshUser:Landroid/widget/EditText;

    .line 101
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textPORT:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->portText:Landroid/widget/EditText;

    .line 102
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textPASSWORD:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->passwordText:Landroid/widget/EditText;

    .line 103
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textUsername:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->textUsername:Landroid/widget/EditText;

    .line 104
    sget p1, Lcom/undatech/remoteClientUi/R$id;->rdpDomain:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->rdpDomain:Landroid/widget/EditText;

    .line 107
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxUseSshPubkey:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseSshPubkey:Landroid/widget/CheckBox;

    .line 109
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepPassword:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxKeepPassword:Landroid/widget/CheckBox;

    .line 110
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxUseDpadAsArrows:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

    .line 111
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxRotateDpad:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxRotateDpad:Landroid/widget/CheckBox;

    .line 112
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxUseLastPositionToolbar:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    .line 114
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleAdvancedSettings:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->toggleAdvancedSettings:Landroid/widget/ToggleButton;

    .line 115
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutAdvancedSettings:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->layoutAdvancedSettings:Landroid/widget/LinearLayout;

    .line 116
    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->toggleAdvancedSettings:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/iiordanov/bVNC/aRDP$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/aRDP$1;-><init>(Lcom/iiordanov/bVNC/aRDP;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerRdpGeometry:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->spinnerRdpGeometry:Landroid/widget/Spinner;

    .line 128
    sget p1, Lcom/undatech/remoteClientUi/R$id;->rdpWidth:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->rdpWidth:Landroid/widget/EditText;

    .line 129
    sget p1, Lcom/undatech/remoteClientUi/R$id;->rdpHeight:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->rdpHeight:Landroid/widget/EditText;

    .line 130
    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->spinnerRdpGeometry:Landroid/widget/Spinner;

    new-instance v0, Lcom/iiordanov/bVNC/aRDP$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/aRDP$2;-><init>(Lcom/iiordanov/bVNC/aRDP;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 141
    sget p1, Lcom/undatech/remoteClientUi/R$id;->groupRemoteSoundType:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->groupRemoteSoundType:Landroid/widget/RadioGroup;

    .line 142
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxEnableRecording:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxEnableRecording:Landroid/widget/CheckBox;

    .line 143
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxConsoleMode:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxConsoleMode:Landroid/widget/CheckBox;

    .line 144
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxRedirectSdCard:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxRedirectSdCard:Landroid/widget/CheckBox;

    .line 145
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxRemoteFx:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxRemoteFx:Landroid/widget/CheckBox;

    .line 146
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxDesktopBackground:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxDesktopBackground:Landroid/widget/CheckBox;

    .line 147
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxFontSmoothing:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxFontSmoothing:Landroid/widget/CheckBox;

    .line 148
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxDesktopComposition:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxDesktopComposition:Landroid/widget/CheckBox;

    .line 149
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxWindowContents:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxWindowContents:Landroid/widget/CheckBox;

    .line 150
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxMenuAnimation:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxMenuAnimation:Landroid/widget/CheckBox;

    .line 151
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxVisualStyles:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxVisualStyles:Landroid/widget/CheckBox;

    .line 152
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxEnableGfx:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxEnableGfx:Landroid/widget/CheckBox;

    .line 153
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxEnableGfxH264:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxEnableGfxH264:Landroid/widget/CheckBox;

    .line 154
    sget p1, Lcom/undatech/remoteClientUi/R$array;->rdp_connection_type:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/aRDP;->setConnectionTypeSpinnerAdapter(I)V

    return-void
.end method

.method public remoteSoundTypeToggled(Landroid/view/View;)V
    .locals 1

    .line 300
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isFree(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->database:Lcom/iiordanov/bVNC/Database;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->showIntroTextIfNecessary(Landroid/app/Activity;Lcom/iiordanov/bVNC/Database;Z)V

    :cond_0
    return-void
.end method

.method public save(Landroid/view/MenuItem;)V
    .locals 1

    .line 347
    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->ipText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->portText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/aRDP;->saveConnectionAndCloseLayout()V

    goto :goto_0

    .line 350
    :cond_0
    sget p1, Lcom/undatech/remoteClientUi/R$string;->rdp_server_empty:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public setRemoteSoundTypeFromSettings(I)V
    .locals 2

    .line 327
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isFree(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 334
    :cond_1
    sget p1, Lcom/undatech/remoteClientUi/R$id;->radioRemoteSoundDisabled:I

    goto :goto_0

    .line 340
    :cond_2
    sget p1, Lcom/undatech/remoteClientUi/R$id;->radioRemoteSoundOnServer:I

    goto :goto_0

    .line 337
    :cond_3
    sget p1, Lcom/undatech/remoteClientUi/R$id;->radioRemoteSoundOnDevice:I

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->groupRemoteSoundType:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public setRemoteSoundTypeFromView(Landroid/view/View;)V
    .locals 2

    .line 310
    check-cast p1, Landroid/widget/RadioGroup;

    .line 311
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isFree(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->database:Lcom/iiordanov/bVNC/Database;

    invoke-static {p0, v0, v1}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->showIntroTextIfNecessary(Landroid/app/Activity;Lcom/iiordanov/bVNC/Database;Z)V

    .line 313
    sget v0, Lcom/undatech/remoteClientUi/R$id;->radioRemoteSoundDisabled:I

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    .line 318
    sget v0, Lcom/undatech/remoteClientUi/R$id;->radioRemoteSoundOnServer:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    sget v0, Lcom/undatech/remoteClientUi/R$id;->radioRemoteSoundOnDevice:I

    if-ne p1, v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 323
    :goto_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p1, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRemoteSoundType(I)V

    return-void
.end method

.method public toggleEnableRecording(Landroid/view/View;)V
    .locals 2

    .line 285
    check-cast p1, Landroid/widget/CheckBox;

    .line 286
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->isFree(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->database:Lcom/iiordanov/bVNC/Database;

    invoke-static {p0, v0, v1}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->showIntroTextIfNecessary(Landroid/app/Activity;Lcom/iiordanov/bVNC/Database;Z)V

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->permissionsManager:Lcom/iiordanov/util/PermissionsManager;

    invoke-virtual {v0, p0, v1}, Lcom/iiordanov/util/PermissionsManager;->requestPermissions(Landroid/app/Activity;Z)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->setEnableRecording(Z)V

    return-void
.end method

.method protected updateSelectedFromView()V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/aRDP;->commonUpdateSelectedFromView()V

    .line 232
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->portText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setPort(I)V

    .line 237
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->sshPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :catch_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->textNickname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setNickname(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->sshServer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshServer(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->sshUser:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshUser(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseSshPubkey:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseSshPubKey(Z)V

    .line 247
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->textUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUserName(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->rdpDomain:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpDomain(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->spinnerRdpGeometry:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpResType(I)V

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->rdpWidth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpWidth(I)V

    .line 252
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->rdpHeight:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpHeight(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :catch_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->groupRemoteSoundType:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/aRDP;->setRemoteSoundTypeFromView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxEnableRecording:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setEnableRecording(Z)V

    .line 256
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxConsoleMode:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setConsoleMode(Z)V

    .line 257
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxRedirectSdCard:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRedirectSdCard(Z)V

    .line 258
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxRemoteFx:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRemoteFx(Z)V

    .line 259
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxDesktopBackground:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setDesktopBackground(Z)V

    .line 260
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxFontSmoothing:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setFontSmoothing(Z)V

    .line 261
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxDesktopComposition:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setDesktopComposition(Z)V

    .line 262
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxWindowContents:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setWindowContents(Z)V

    .line 263
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxMenuAnimation:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setMenuAnimation(Z)V

    .line 264
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxVisualStyles:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setVisualStyles(Z)V

    .line 265
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxEnableGfx:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setEnableGfx(Z)V

    .line 266
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxEnableGfxH264:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setEnableGfxH264(Z)V

    .line 268
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->passwordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setPassword(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxKeepPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setKeepPassword(Z)V

    .line 270
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseDpadAsArrows(Z)V

    .line 271
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxRotateDpad:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRotateDpad(Z)V

    .line 272
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbar(Z)V

    .line 273
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbarMoved(Z)V

    :cond_1
    return-void
.end method

.method protected updateViewFromSelected()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->commonUpdateViewFromSelected()V

    .line 175
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->sshServer:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->sshPort:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->sshUser:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseSshPubkey:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseSshPubKey()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->portText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepPassword()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->passwordText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxKeepPassword:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepPassword()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseDpadAsArrows()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxRotateDpad:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getRotateDpad()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/iiordanov/bVNC/aRDP;->isNewConnection:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseLastPositionToolbar()Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/aRDP;->useLastPositionToolbarDefault()Z

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->textNickname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->textUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->rdpDomain:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->spinnerRdpGeometry:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpResType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 195
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->rdpWidth:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->rdpHeight:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-direct {p0}, Lcom/iiordanov/bVNC/aRDP;->setRemoteWidthAndHeight()V

    .line 198
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getRemoteSoundType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/aRDP;->setRemoteSoundTypeFromSettings(I)V

    .line 199
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxEnableRecording:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getEnableRecording()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxConsoleMode:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getConsoleMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxRedirectSdCard:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getRedirectSdCard()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxRemoteFx:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getRemoteFx()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxDesktopBackground:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getDesktopBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxFontSmoothing:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getFontSmoothing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxDesktopComposition:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getDesktopComposition()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxWindowContents:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getWindowContents()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxMenuAnimation:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getMenuAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxVisualStyles:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getVisualStyles()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxEnableGfx:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getEnableGfx()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/iiordanov/bVNC/aRDP;->checkboxEnableGfxH264:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/aRDP;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getEnableGfxH264()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
