.class public Lcom/undatech/opaque/AdvancedSettingsActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Lcom/undatech/opaque/dialogs/ManageCustomCaFragment$OnFragmentDismissedListener;


# static fields
.field private static TAG:Ljava/lang/String; = "AdvancedSettingsActivity"


# instance fields
.field private buttonManageOvirtCa:Landroid/widget/Button;

.field private currentConnection:Lcom/undatech/opaque/ConnectionSettings;

.field private layoutCustomRemoteResolution:Landroid/widget/LinearLayout;

.field private layoutManageOvirtCa:Landroid/widget/LinearLayout;

.field private layoutMapSpinner:Landroid/widget/Spinner;

.field private layoutToggleCustomRemoteResolution:Landroid/widget/LinearLayout;

.field private layoutToggleUsingCustomOvirtCa:Landroid/widget/LinearLayout;

.field private layoutUseLastPositionToolbar:Landroid/widget/LinearLayout;

.field private rdpHeight:Landroid/widget/EditText;

.field private rdpWidth:Landroid/widget/EditText;

.field private textUseLastPositionToolbar:Landroid/widget/TextView;

.field private toggleAudioPlayback:Landroid/widget/ToggleButton;

.field private toggleAutoRequestDisplayResolution:Landroid/widget/ToggleButton;

.field private toggleAutoRotation:Landroid/widget/ToggleButton;

.field private toggleCustomDisplayResolution:Landroid/widget/ToggleButton;

.field private toggleSslStrict:Landroid/widget/ToggleButton;

.field private toggleUsbEnabled:Landroid/widget/ToggleButton;

.field private toggleUseLastPositionToolbar:Landroid/widget/ToggleButton;

.field private toggleUsingCustomOvirtCa:Landroid/widget/ToggleButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentConnection(Lcom/undatech/opaque/AdvancedSettingsActivity;)Lcom/undatech/opaque/ConnectionSettings;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutMapSpinner(Lcom/undatech/opaque/AdvancedSettingsActivity;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutMapSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private showCaDialog(I)V
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/undatech/opaque/AdvancedSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-static {p1, v1}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->newInstance(ILcom/undatech/opaque/ConnectionSettings;)Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;

    move-result-object p1

    .line 317
    const-string v1, "customCa"

    invoke-virtual {p1, v0, v1}, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->advanced_settings_activity:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/undatech/opaque/AdvancedSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 85
    const-string v0, "com.undatech.opaque.ConnectionSettings"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/undatech/opaque/ConnectionSettings;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    .line 87
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleAudioPlayback:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleAudioPlayback:Landroid/widget/ToggleButton;

    .line 88
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->isAudioPlaybackEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 90
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleUsbEnabled:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleUsbEnabled:Landroid/widget/ToggleButton;

    .line 91
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->isUsbEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 93
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleAutoRotation:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleAutoRotation:Landroid/widget/ToggleButton;

    .line 94
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->isRotationEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 96
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleAutoRequestDisplayResolution:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleAutoRequestDisplayResolution:Landroid/widget/ToggleButton;

    .line 97
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->isRequestingNewDisplayResolution()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 99
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleCustomDisplayResolution:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleCustomDisplayResolution:Landroid/widget/ToggleButton;

    .line 100
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getRdpResType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 102
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleSslStrict:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleSslStrict:Landroid/widget/ToggleButton;

    .line 103
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->isSslStrict()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 105
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutManageOvirtCa:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutManageOvirtCa:Landroid/widget/LinearLayout;

    .line 106
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutToggleUsingCustomOvirtCa:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutToggleUsingCustomOvirtCa:Landroid/widget/LinearLayout;

    .line 107
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleUsingCustomOvirtCa:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleUsingCustomOvirtCa:Landroid/widget/ToggleButton;

    .line 108
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->isUsingCustomOvirtCa()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 110
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutUseLastPositionToolbar:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutUseLastPositionToolbar:Landroid/widget/LinearLayout;

    .line 111
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textUseLastPositionToolbar:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->textUseLastPositionToolbar:Landroid/widget/TextView;

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/undatech/remoteClientUi/R$string;->position_toolbar_last_used:I

    invoke-virtual {p0, v1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v1, Lcom/undatech/remoteClientUi/R$string;->position_toolbar_last_used_summary:I

    invoke-virtual {p0, v1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->textUseLastPositionToolbar:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleUseLastPositionToolbar:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleUseLastPositionToolbar:Landroid/widget/ToggleButton;

    .line 115
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getUseLastPositionToolbar()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 117
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonManageOvirtCa:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->buttonManageOvirtCa:Landroid/widget/Button;

    .line 118
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->isUsingCustomOvirtCa()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {p1}, Lcom/undatech/opaque/ConnectionSettings;->getConnectionTypeString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lcom/undatech/opaque/AdvancedSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/undatech/remoteClientUi/R$string;->connection_type_pve:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutToggleUsingCustomOvirtCa:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutManageOvirtCa:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    :cond_1
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutMaps:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutMapSpinner:Landroid/widget/Spinner;

    .line 128
    new-instance v2, Lcom/undatech/opaque/AdvancedSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/undatech/opaque/AdvancedSettingsActivity$1;-><init>(Lcom/undatech/opaque/AdvancedSettingsActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 146
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutToggleCustomRemoteResolution:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutToggleCustomRemoteResolution:Landroid/widget/LinearLayout;

    .line 147
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutCustomRemoteResolution:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutCustomRemoteResolution:Landroid/widget/LinearLayout;

    .line 149
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleCustomDisplayResolution:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutCustomRemoteResolution:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutCustomRemoteResolution:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    :goto_1
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->toggleAutoRequestDisplayResolution:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_3

    .line 156
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutToggleCustomRemoteResolution:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutToggleCustomRemoteResolution:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutCustomRemoteResolution:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    :goto_2
    sget p1, Lcom/undatech/remoteClientUi/R$id;->rdpWidth:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->rdpWidth:Landroid/widget/EditText;

    .line 163
    new-instance v1, Lcom/undatech/opaque/AdvancedSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/undatech/opaque/AdvancedSettingsActivity$2;-><init>(Lcom/undatech/opaque/AdvancedSettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->rdpWidth:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getRdpWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    sget p1, Lcom/undatech/remoteClientUi/R$id;->rdpHeight:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->rdpHeight:Landroid/widget/EditText;

    .line 183
    new-instance v1, Lcom/undatech/opaque/AdvancedSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/undatech/opaque/AdvancedSettingsActivity$3;-><init>(Lcom/undatech/opaque/AdvancedSettingsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->rdpHeight:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getRdpHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 206
    invoke-virtual {p0, v0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public onFragmentDismissed(Lcom/undatech/opaque/ConnectionSettings;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 322
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 326
    :try_start_0
    const-string v0, "layouts"

    invoke-static {p0, v0}, Lcom/undatech/opaque/util/FileUtils;->listFiles(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 332
    :goto_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 334
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 336
    iget-object v2, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutMapSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 338
    iget-object v1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getLayoutMap()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 340
    const-string v1, "English (US)"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutMapSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public showManageOvirtCaDialog(Landroid/view/View;)V
    .locals 0

    .line 311
    sget p1, Lcom/undatech/opaque/dialogs/ManageCustomCaFragment;->TYPE_OVIRT:I

    invoke-direct {p0, p1}, Lcom/undatech/opaque/AdvancedSettingsActivity;->showCaDialog(I)V

    return-void
.end method

.method public toggleAudioPlaybackSetting(Landroid/view/View;)V
    .locals 2

    .line 214
    check-cast p1, Landroid/widget/ToggleButton;

    .line 215
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lcom/iiordanov/util/PermissionsManager;

    invoke-direct {v0}, Lcom/iiordanov/util/PermissionsManager;-><init>()V

    const/4 v1, 0x1

    .line 217
    invoke-virtual {v0, p0, v1}, Lcom/iiordanov/util/PermissionsManager;->requestPermissions(Landroid/app/Activity;Z)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setAudioPlaybackEnabled(Z)V

    return-void
.end method

.method public toggleAutoRequestDisplayResolution(Landroid/view/View;)V
    .locals 1

    .line 245
    check-cast p1, Landroid/widget/ToggleButton;

    .line 246
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    .line 247
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setRequestingNewDisplayResolution(Z)V

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutToggleCustomRemoteResolution:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutCustomRemoteResolution:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutToggleCustomRemoteResolution:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutCustomRemoteResolution:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public toggleAutoRotation(Landroid/view/View;)V
    .locals 1

    .line 236
    check-cast p1, Landroid/widget/ToggleButton;

    .line 237
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setRotationEnabled(Z)V

    return-void
.end method

.method public toggleCustomDisplayResolution(Landroid/view/View;)V
    .locals 3

    .line 262
    check-cast p1, Landroid/widget/ToggleButton;

    .line 263
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 268
    :goto_0
    iget-object v2, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v2, v1}, Lcom/undatech/opaque/ConnectionSettings;->setRdpResType(I)V

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutCustomRemoteResolution:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->layoutCustomRemoteResolution:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public toggleSslStrict(Landroid/view/View;)V
    .locals 1

    .line 281
    check-cast p1, Landroid/widget/ToggleButton;

    .line 282
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setSslStrict(Z)V

    return-void
.end method

.method public toggleUsbEnabledSetting(Landroid/view/View;)V
    .locals 1

    .line 227
    check-cast p1, Landroid/widget/ToggleButton;

    .line 228
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setUsbEnabled(Z)V

    return-void
.end method

.method public toggleUseLastPositionToolbar(Landroid/view/View;)V
    .locals 1

    .line 301
    check-cast p1, Landroid/widget/ToggleButton;

    .line 302
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    .line 303
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setUseLastPositionToolbar(Z)V

    return-void
.end method

.method public toggleUsingCustomOvirtCa(Landroid/view/View;)V
    .locals 1

    .line 290
    check-cast p1, Landroid/widget/ToggleButton;

    .line 291
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    .line 292
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v0, p1}, Lcom/undatech/opaque/ConnectionSettings;->setUsingCustomOvirtCa(Z)V

    .line 293
    iget-object v0, p0, Lcom/undatech/opaque/AdvancedSettingsActivity;->buttonManageOvirtCa:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
