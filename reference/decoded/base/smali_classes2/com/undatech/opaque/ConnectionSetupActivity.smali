.class public Lcom/undatech/opaque/ConnectionSetupActivity;
.super Landroid/app/Activity;
.source "ConnectionSetupActivity.java"


# static fields
.field private static TAG:Ljava/lang/String; = "ConnectionSetupActivity"


# instance fields
.field private advancedSettingsButton:Landroid/widget/Button;

.field private appContext:Landroid/content/Context;

.field private connectionsArray:[Ljava/lang/String;

.field private connectionsList:Ljava/lang/String;

.field private currentConnection:Lcom/undatech/opaque/ConnectionSettings;

.field private currentSelectedConnection:Ljava/lang/String;

.field private hostname:Landroid/widget/EditText;

.field private keepPass:Landroid/widget/CheckBox;

.field private newConnection:Z

.field private password:Landroid/widget/EditText;

.field private spinnerConnectionType:Landroid/widget/Spinner;

.field private user:Landroid/widget/EditText;

.field private vmname:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentConnection(Lcom/undatech/opaque/ConnectionSetupActivity;)Lcom/undatech/opaque/ConnectionSettings;
    .locals 0

    iget-object p0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveSelectedPreferences(Lcom/undatech/opaque/ConnectionSetupActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->saveSelectedPreferences(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->hostname:Landroid/widget/EditText;

    .line 55
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->vmname:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->user:Landroid/widget/EditText;

    .line 57
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->password:Landroid/widget/EditText;

    .line 58
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->keepPass:Landroid/widget/CheckBox;

    .line 59
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->advancedSettingsButton:Landroid/widget/Button;

    .line 61
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->appContext:Landroid/content/Context;

    .line 62
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    .line 63
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentSelectedConnection:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->connectionsList:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->connectionsArray:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->newConnection:Z

    return-void
.end method

.method private loadConnections()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->appContext:Landroid/content/Context;

    const-string v1, "generalSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    const-string v1, "connections"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->connectionsList:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->connectionsList:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->connectionsArray:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private loadSelectedPreferences()V
    .locals 3

    .line 224
    sget-object v0, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading current settings from file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentSelectedConnection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/undatech/opaque/ConnectionSettings;->loadFromSharedPreferences(Landroid/content/Context;)V

    return-void
.end method

.method private nextLargestNumber([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 142
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 145
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 150
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 154
    :cond_2
    sget-object p1, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nextLargestNumber determined: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveConnections()V
    .locals 5

    .line 177
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->newConnection:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->newConnection:Z

    .line 180
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentSelectedConnection:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->connectionsArray:[Ljava/lang/String;

    if-eqz v2, :cond_0

    move v2, v0

    .line 182
    :goto_0
    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->connectionsArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->connectionsArray:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    sget-object v2, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Saving list of connections: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->appContext:Landroid/content/Context;

    const-string v3, "generalSettings"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    const-string v2, "connections"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->loadConnections()V

    :cond_1
    return-void
.end method

.method private saveSelectedPreferences(Z)V
    .locals 3

    .line 242
    sget-object v0, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving current settings to file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentSelectedConnection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->user:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->hostname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 248
    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->saveConnections()V

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    iget-object v2, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->spinnerConnectionType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/undatech/opaque/ConnectionSettings;->setConnectionTypeString(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->setUser(Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {p1, v1}, Lcom/undatech/opaque/ConnectionSettings;->setHostname(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->vmname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->setVmname(Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->setPassword(Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->keepPass:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->setKeepPassword(Z)V

    .line 259
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->appContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/undatech/opaque/ConnectionSettings;->saveToSharedPreferences(Landroid/content/Context;)V

    return-void
.end method

.method private updateViewsFromPreferences()V
    .locals 3

    .line 229
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$array;->connection_types:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->spinnerConnectionType:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v2}, Lcom/undatech/opaque/ConnectionSettings;->getConnectionTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 231
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->hostname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->vmname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getVmname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->user:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->password:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->keepPass:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    invoke-virtual {v1}, Lcom/undatech/opaque/ConnectionSettings;->getKeepPassword()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 203
    sget-object v0, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 209
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 210
    const-string p2, "com.undatech.opaque.ConnectionSettings"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/undatech/opaque/ConnectionSettings;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    const/4 p1, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->saveSelectedPreferences(Z)V

    goto :goto_0

    .line 213
    :cond_1
    sget-object p1, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    const-string p2, "Error during AdvancedSettingsActivity."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->appContext:Landroid/content/Context;

    .line 73
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->connection_setup_activity:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->setContentView(I)V

    .line 75
    sget p1, Lcom/undatech/remoteClientUi/R$id;->hostname:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->hostname:Landroid/widget/EditText;

    .line 76
    sget p1, Lcom/undatech/remoteClientUi/R$id;->vmname:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->vmname:Landroid/widget/EditText;

    .line 77
    sget p1, Lcom/undatech/remoteClientUi/R$id;->user:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->user:Landroid/widget/EditText;

    .line 78
    sget p1, Lcom/undatech/remoteClientUi/R$id;->password:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->password:Landroid/widget/EditText;

    .line 79
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepPassword:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->keepPass:Landroid/widget/CheckBox;

    .line 82
    sget p1, Lcom/undatech/remoteClientUi/R$id;->advancedSettingsButton:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->advancedSettingsButton:Landroid/widget/Button;

    .line 83
    new-instance v0, Lcom/undatech/opaque/ConnectionSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/ConnectionSetupActivity$1;-><init>(Lcom/undatech/opaque/ConnectionSetupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->loadConnections()V

    .line 97
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 98
    const-string v0, "com.undatech.opaque.connectionToEdit"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentSelectedConnection:Ljava/lang/String;

    .line 99
    sget-object p1, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentSelectedConnection SET TO: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentSelectedConnection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentSelectedConnection:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->connectionsArray:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->nextLargestNumber([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentSelectedConnection:Ljava/lang/String;

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->newConnection:Z

    .line 107
    :cond_0
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerConnectionType:I

    invoke-virtual {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->spinnerConnectionType:Landroid/widget/Spinner;

    .line 108
    new-instance v0, Lcom/undatech/opaque/ConnectionSetupActivity$2;

    invoke-direct {v0, p0}, Lcom/undatech/opaque/ConnectionSetupActivity$2;-><init>(Lcom/undatech/opaque/ConnectionSetupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    new-instance p1, Lcom/undatech/opaque/ConnectionSettings;

    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentSelectedConnection:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/undatech/opaque/ConnectionSettings;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->currentConnection:Lcom/undatech/opaque/ConnectionSettings;

    .line 122
    iget-boolean v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->newConnection:Z

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "defaultSettings"

    invoke-virtual {p1, p0, v0}, Lcom/undatech/opaque/ConnectionSettings;->loadAdvancedSettings(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 127
    invoke-direct {p0, p1}, Lcom/undatech/opaque/ConnectionSetupActivity;->saveSelectedPreferences(Z)V

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->loadSelectedPreferences()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$menu;->connection_setup_activity_actions:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 290
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 272
    sget-object v0, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->loadSelectedPreferences()V

    .line 274
    invoke-direct {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->updateViewsFromPreferences()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 265
    sget-object v0, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public save(Landroid/view/MenuItem;)V
    .locals 3

    .line 305
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->user:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 306
    iget-object v0, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->hostname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 310
    invoke-direct {p0, v2}, Lcom/undatech/opaque/ConnectionSetupActivity;->saveSelectedPreferences(Z)V

    .line 311
    invoke-virtual {p0}, Lcom/undatech/opaque/ConnectionSetupActivity;->finish()V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/undatech/opaque/ConnectionSetupActivity;->appContext:Landroid/content/Context;

    sget v0, Lcom/undatech/remoteClientUi/R$string;->error_no_user_hostname:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public showConnectionScreenHelp(Landroid/view/MenuItem;)V
    .locals 1

    .line 300
    sget-object p1, Lcom/undatech/opaque/ConnectionSetupActivity;->TAG:Ljava/lang/String;

    const-string v0, "Showing connection screen help."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {p0}, Lcom/iiordanov/bVNC/Utils;->createConnectionScreenDialog(Landroid/content/Context;)Landroid/app/Dialog;

    return-void
.end method

.method public toggleConnectionType(Landroid/view/View;)V
    .locals 0

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    return-void
.end method
