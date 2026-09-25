.class public Lcom/iiordanov/bVNC/bVNC;
.super Lcom/iiordanov/bVNC/MainConfiguration;
.source "bVNC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "androidVNC"


# instance fields
.field private autoXStatus:Landroid/widget/TextView;

.field private buttonCustomizeX11Vnc:Landroid/widget/Button;

.field private checkboxKeepPassword:Landroid/widget/CheckBox;

.field private checkboxPreferHextile:Landroid/widget/CheckBox;

.field private checkboxRotateDpad:Landroid/widget/CheckBox;

.field private checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

.field private checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

.field private checkboxUseSshPubkey:Landroid/widget/CheckBox;

.field private checkboxViewOnly:Landroid/widget/CheckBox;

.field private colorSpinner:Landroid/widget/Spinner;

.field private groupForceFullScreen:Landroid/widget/RadioGroup;

.field private layoutAdvancedSettings:Landroid/widget/LinearLayout;

.field private layoutUseX11Vnc:Landroid/widget/LinearLayout;

.field private passwordText:Landroid/widget/EditText;

.field private portText:Landroid/widget/EditText;

.field private repeaterButton:Landroid/widget/Button;

.field private repeaterEntry:Landroid/widget/LinearLayout;

.field private repeaterText:Landroid/widget/TextView;

.field private repeaterTextSet:Z

.field private resHeight:Landroid/widget/EditText;

.field private resWidth:Landroid/widget/EditText;

.field private spinnerVncGeometry:Landroid/widget/Spinner;

.field private sshPort:Landroid/widget/EditText;

.field private sshServer:Landroid/widget/EditText;

.field private sshUser:Landroid/widget/EditText;

.field private textNickname:Landroid/widget/EditText;

.field private textUsername:Landroid/widget/EditText;

.field private toggleAdvancedSettings:Landroid/widget/ToggleButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetcheckboxKeepPassword(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxKeepPassword:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutAdvancedSettings(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/bVNC;->layoutAdvancedSettings:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordText(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/bVNC;->passwordText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrepeaterEntry(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterEntry:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextUsername(Lcom/iiordanov/bVNC/bVNC;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/bVNC;->textUsername:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetRemoteWidthAndHeight(Lcom/iiordanov/bVNC/bVNC;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/bVNC;->setRemoteWidthAndHeight()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVisibilityOfUltraVncWidgets(Lcom/iiordanov/bVNC/bVNC;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->setVisibilityOfUltraVncWidgets(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iiordanov/bVNC/MainConfiguration;-><init>()V

    return-void
.end method

.method private setRemoteWidthAndHeight()V
    .locals 2

    .line 236
    const-string v0, "androidVNC"

    const-string v1, "setRemoteWidthAndHeight called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpResType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->resWidth:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->resHeight:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->resWidth:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->resHeight:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setVisibilityOfUltraVncWidgets(I)V
    .locals 2

    .line 250
    const-string v0, "androidVNC"

    const-string v1, "setVisibilityOfUltraVncWidgets called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterEntry:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    const-string v0, "androidVNC"

    const-string v1, "onCreate called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->main:I

    iput v0, p0, Lcom/iiordanov/bVNC/bVNC;->layoutID:I

    .line 95
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshServer:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->sshServer:Landroid/widget/EditText;

    .line 98
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshPort:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->sshPort:Landroid/widget/EditText;

    .line 99
    sget p1, Lcom/undatech/remoteClientUi/R$id;->sshUser:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->sshUser:Landroid/widget/EditText;

    .line 100
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutUseX11Vnc:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->layoutUseX11Vnc:Landroid/widget/LinearLayout;

    .line 101
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textPORT:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->portText:Landroid/widget/EditText;

    .line 102
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textPASSWORD:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->passwordText:Landroid/widget/EditText;

    .line 103
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textNickname:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->textNickname:Landroid/widget/EditText;

    .line 104
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textUsername:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->textUsername:Landroid/widget/EditText;

    .line 105
    sget p1, Lcom/undatech/remoteClientUi/R$id;->autoXStatus:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->autoXStatus:Landroid/widget/TextView;

    .line 108
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonRepeater:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterButton:Landroid/widget/Button;

    .line 109
    sget p1, Lcom/undatech/remoteClientUi/R$id;->repeaterEntry:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterEntry:Landroid/widget/LinearLayout;

    .line 110
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterButton:Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/bVNC$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/bVNC$1;-><init>(Lcom/iiordanov/bVNC/bVNC;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxUseSshPubkey:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseSshPubkey:Landroid/widget/CheckBox;

    .line 121
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonCustomizeX11Vnc:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->buttonCustomizeX11Vnc:Landroid/widget/Button;

    .line 122
    new-instance v0, Lcom/iiordanov/bVNC/bVNC$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/bVNC$2;-><init>(Lcom/iiordanov/bVNC/bVNC;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget p1, Lcom/undatech/remoteClientUi/R$id;->connectionType:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->connectionType:Landroid/widget/Spinner;

    .line 132
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->connectionType:Landroid/widget/Spinner;

    new-instance v0, Lcom/iiordanov/bVNC/bVNC$3;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/bVNC$3;-><init>(Lcom/iiordanov/bVNC/bVNC;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 176
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleAdvancedSettings:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->toggleAdvancedSettings:Landroid/widget/ToggleButton;

    .line 177
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutAdvancedSettings:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->layoutAdvancedSettings:Landroid/widget/LinearLayout;

    .line 178
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->toggleAdvancedSettings:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/iiordanov/bVNC/bVNC$4;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/bVNC$4;-><init>(Lcom/iiordanov/bVNC/bVNC;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    sget p1, Lcom/undatech/remoteClientUi/R$id;->colorformat:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->colorSpinner:Landroid/widget/Spinner;

    .line 189
    invoke-static {}, Lcom/iiordanov/bVNC/COLORMODEL;->values()[Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object p1

    .line 190
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/undatech/remoteClientUi/R$layout;->connection_list_entry:I

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 191
    sget p1, Lcom/undatech/remoteClientUi/R$id;->groupForceFullScreen:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->groupForceFullScreen:Landroid/widget/RadioGroup;

    .line 192
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepPassword:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxKeepPassword:Landroid/widget/CheckBox;

    .line 193
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxUseDpadAsArrows:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

    .line 194
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxRotateDpad:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxRotateDpad:Landroid/widget/CheckBox;

    .line 195
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxUseLastPositionToolbar:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    .line 196
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxPreferHextile:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxPreferHextile:Landroid/widget/CheckBox;

    .line 197
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxViewOnly:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxViewOnly:Landroid/widget/CheckBox;

    .line 198
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->colorSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 199
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->colorSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 201
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerVncGeometry:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->spinnerVncGeometry:Landroid/widget/Spinner;

    .line 202
    sget p1, Lcom/undatech/remoteClientUi/R$id;->rdpWidth:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->resWidth:Landroid/widget/EditText;

    .line 203
    sget p1, Lcom/undatech/remoteClientUi/R$id;->rdpHeight:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->resHeight:Landroid/widget/EditText;

    .line 205
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->spinnerVncGeometry:Landroid/widget/Spinner;

    new-instance v0, Lcom/iiordanov/bVNC/bVNC$5;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/bVNC$5;-><init>(Lcom/iiordanov/bVNC/bVNC;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 218
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textRepeaterId:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterText:Landroid/widget/TextView;

    .line 220
    sget p1, Lcom/undatech/remoteClientUi/R$array;->connection_type:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/bVNC;->setConnectionTypeSpinnerAdapter(I)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 259
    const-string v0, "androidVNC"

    const-string v1, "onCreateDialog called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->repeater_dialog:I

    if-ne p1, v0, :cond_0

    .line 261
    new-instance p1, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;

    invoke-direct {p1, p0}, Lcom/iiordanov/bVNC/dialogs/RepeaterDialog;-><init>(Lcom/iiordanov/bVNC/bVNC;)V

    return-object p1

    .line 262
    :cond_0
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->auto_x_customize:I

    if-ne p1, v0, :cond_1

    .line 263
    new-instance p1, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;

    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->database:Lcom/iiordanov/bVNC/Database;

    invoke-direct {p1, p0, v0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;-><init>(Landroid/content/Context;Lcom/iiordanov/bVNC/Database;)V

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public save(Landroid/view/MenuItem;)V
    .locals 1

    .line 408
    const-string p1, "androidVNC"

    const-string v0, "save called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->portText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/bVNC;->saveConnectionAndCloseLayout()V

    goto :goto_0

    .line 412
    :cond_0
    sget p1, Lcom/undatech/remoteClientUi/R$string;->vnc_server_empty:I

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected setVisibilityOfSshWidgets(I)V
    .locals 2

    .line 227
    const-string v0, "androidVNC"

    const-string v1, "setVisibilityOfSshWidgets called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-super {p0, p1}, Lcom/iiordanov/bVNC/MainConfiguration;->setVisibilityOfSshWidgets(I)V

    .line 229
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->layoutUseX11Vnc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateRepeaterInfo(ZLjava/lang/String;)V
    .locals 2

    .line 343
    const-string v0, "androidVNC"

    const-string v1, "updateRepeaterInfo called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterTextSet:Z

    .line 347
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    sget p2, Lcom/undatech/remoteClientUi/R$string;->repeater_caption_hint:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterText:Landroid/widget/TextView;

    sget p2, Lcom/undatech/remoteClientUi/R$string;->repeater_empty_text:I

    invoke-virtual {p0, p2}, Lcom/iiordanov/bVNC/bVNC;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 350
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterTextSet:Z

    .line 351
    iget-object p1, p0, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    sget p2, Lcom/undatech/remoteClientUi/R$string;->address_caption_hint:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    :goto_0
    return-void
.end method

.method protected updateSelectedFromView()V
    .locals 3

    .line 356
    const-string v0, "androidVNC"

    const-string v1, "updateSelectedFromView called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-super {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->commonUpdateSelectedFromView()V

    .line 359
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->portText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setPort(I)V

    .line 364
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->sshPort:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :catch_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->textNickname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setNickname(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->sshServer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshServer(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->sshUser:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshUser(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseSshPubkey:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseSshPubKey(Z)V

    .line 375
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->textUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUserName(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->groupForceFullScreen:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget v2, Lcom/undatech/remoteClientUi/R$id;->radioForceFullScreenAuto:I

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->groupForceFullScreen:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    sget v2, Lcom/undatech/remoteClientUi/R$id;->radioForceFullScreenOn:I

    if-ne v1, v2, :cond_2

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setForceFull(J)V

    .line 377
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->passwordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setPassword(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxKeepPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setKeepPassword(Z)V

    .line 379
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseDpadAsArrows(Z)V

    .line 380
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxRotateDpad:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRotateDpad(Z)V

    .line 381
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbar(Z)V

    .line 382
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbarMoved(Z)V

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxPreferHextile:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setPrefEncoding(I)V

    goto :goto_1

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setPrefEncoding(I)V

    .line 389
    :goto_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v2, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxViewOnly:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setViewOnly(Z)V

    .line 390
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v2, p0, Lcom/iiordanov/bVNC/bVNC;->spinnerVncGeometry:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpResType(I)V

    .line 393
    :try_start_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v2, p0, Lcom/iiordanov/bVNC/bVNC;->resWidth:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpWidth(I)V

    .line 394
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v2, p0, Lcom/iiordanov/bVNC/bVNC;->resHeight:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpHeight(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 398
    :catch_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v2, p0, Lcom/iiordanov/bVNC/bVNC;->colorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    .line 399
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterTextSet:Z

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->repeaterText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRepeaterId(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseRepeater(Z)V

    goto :goto_2

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseRepeater(Z)V

    :goto_2
    return-void
.end method

.method public updateViewFromSelected()V
    .locals 7

    .line 271
    const-string v0, "androidVNC"

    const-string v1, "updateViewFromSelected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-super {p0}, Lcom/iiordanov/bVNC/MainConfiguration;->commonUpdateViewFromSelected()V

    .line 276
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->sshServer:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->sshPort:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->sshUser:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseSshPubkey:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseSshPubKey()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    iget v0, p0, Lcom/iiordanov/bVNC/bVNC;->selectedConnType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->portText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->textUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->passwordText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxKeepPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->autoXStatus:Landroid/widget/TextView;

    sget v3, Lcom/undatech/remoteClientUi/R$string;->auto_x_enabled:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->ipText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->portText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->textUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->passwordText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxKeepPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->autoXStatus:Landroid/widget/TextView;

    sget v3, Lcom/undatech/remoteClientUi/R$string;->auto_x_disabled:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->portText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepPassword()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->passwordText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->groupForceFullScreen:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getForceFull()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 306
    sget v3, Lcom/undatech/remoteClientUi/R$id;->radioForceFullScreenAuto:I

    goto :goto_1

    :cond_4
    sget v3, Lcom/undatech/remoteClientUi/R$id;->radioForceFullScreenOn:I

    .line 305
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 307
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxKeepPassword:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepPassword()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 308
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseDpadAsArrows:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseDpadAsArrows()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 309
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxRotateDpad:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getRotateDpad()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxUseLastPositionToolbar:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/iiordanov/bVNC/bVNC;->isNewConnection:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseLastPositionToolbar()Z

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/bVNC;->useLastPositionToolbarDefault()Z

    move-result v3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxPreferHextile:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getPrefEncoding()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 312
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->checkboxViewOnly:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getViewOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 313
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->textNickname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->textUsername:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    sget-object v0, Lcom/iiordanov/bVNC/COLORMODEL;->C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getColorModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/COLORMODEL;->valueOf(Ljava/lang/String;)Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 319
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 321
    :goto_4
    invoke-static {}, Lcom/iiordanov/bVNC/COLORMODEL;->values()[Lcom/iiordanov/bVNC/COLORMODEL;

    move-result-object v1

    .line 323
    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->spinnerVncGeometry:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpResType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 324
    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->resWidth:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v3, p0, Lcom/iiordanov/bVNC/bVNC;->resHeight:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/ConnectionBean;->getRdpHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_5
    array-length v3, v1

    if-ge v2, v3, :cond_8

    .line 328
    aget-object v3, v1, v2

    if-ne v3, v0, :cond_7

    .line 329
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->colorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 333
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getUseRepeater()Z

    move-result v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/bVNC;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getRepeaterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/bVNC;->updateRepeaterInfo(ZLjava/lang/String;)V

    return-void
.end method
