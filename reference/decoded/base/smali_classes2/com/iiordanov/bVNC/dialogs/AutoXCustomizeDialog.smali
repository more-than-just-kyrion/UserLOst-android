.class public Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;
.super Landroid/app/AlertDialog;
.source "AutoXCustomizeDialog.java"


# static fields
.field private static final docIntent:Landroid/content/Intent;


# instance fields
.field private autoXCancel:Landroid/widget/Button;

.field private autoXConfirm:Landroid/widget/Button;

.field private autoXHeight:Landroid/widget/EditText;

.field private autoXSessionProg:Landroid/widget/EditText;

.field private autoXWidth:Landroid/widget/EditText;

.field private buttonAutoXHelp:Landroid/widget/Button;

.field private checkboxAutoXUnixAuth:Landroid/widget/CheckBox;

.field private checkboxAutoXUnixpw:Landroid/widget/CheckBox;

.field private command:Ljava/lang/String;

.field private commandIndex:I

.field private database:Lcom/iiordanov/bVNC/Database;

.field private geometry:Ljava/lang/String;

.field private layoutAdvancedSettings:Landroid/widget/LinearLayout;

.field private mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

.field private nativeHeight:I

.field private nativeWidth:I

.field private origCommandIndex:I

.field private pw:Ljava/lang/String;

.field private rnd:Lcom/iiordanov/util/RandomString;

.field private selected:Lcom/iiordanov/bVNC/ConnectionBean;

.field private sessionProg:Ljava/lang/String;

.field private spinnerAutoXGeometry:Landroid/widget/Spinner;

.field private spinnerAutoXSession:Landroid/widget/Spinner;

.field private spinnerAutoXType:Landroid/widget/Spinner;

.field private toggleAutoXAdvanced:Landroid/widget/ToggleButton;


# direct methods
.method static bridge synthetic -$$Nest$fgetlayoutAdvancedSettings(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->layoutAdvancedSettings:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainConfigDialog(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)Lcom/iiordanov/bVNC/bVNC;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselected(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)Lcom/iiordanov/bVNC/ConnectionBean;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetAdvancedToggleState(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setAdvancedToggleState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCommandIndexAndCommand(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setCommandIndexAndCommand(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPwOption(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setPwOption()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRemoteWidthAndHeight(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setRemoteWidthAndHeight()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSessionProg(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setSessionProg()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://iiordanov.blogspot.ca/2012/10/looking-for-nx-client-for-android-or.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->docIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iiordanov/bVNC/Database;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->geometry:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->sessionProg:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->pw:Ljava/lang/String;

    .line 86
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 87
    check-cast p1, Lcom/iiordanov/bVNC/bVNC;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    .line 88
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/bVNC;->getCurrentConnection()Lcom/iiordanov/bVNC/ConnectionBean;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    .line 89
    new-instance p1, Lcom/iiordanov/util/RandomString;

    invoke-direct {p1}, Lcom/iiordanov/util/RandomString;-><init>()V

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->rnd:Lcom/iiordanov/util/RandomString;

    .line 90
    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->database:Lcom/iiordanov/bVNC/Database;

    return-void
.end method

.method private setAdvancedToggleState()V
    .locals 2

    .line 148
    iget v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->commandIndex:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    .line 149
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXResType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    .line 150
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXSessionType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    .line 151
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXUnixpw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXUnixAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->toggleAutoXAdvanced:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method private setCommandIndexAndCommand(I)V
    .locals 2

    .line 160
    iput p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->commandIndex:I

    if-eqz p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->geometry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->sessionProg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->pw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iiordanov/bVNC/Constants;->getCommandString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->command:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->command:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setPwOption()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->checkboxAutoXUnixpw:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXUnixpw()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXUnixpw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "-unixpw $USER \""

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->pw:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->rnd:Lcom/iiordanov/util/RandomString;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/iiordanov/util/RandomString;->randomLowerCaseString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXRandFileNm(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-passwdfile rm:.x11vnc_temp_pwd_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXRandFileNm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->pw:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setRemoteWidthAndHeight()V
    .locals 3

    .line 174
    sget v0, Lcom/iiordanov/bVNC/Constants;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/bVNC;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/bVNC;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->nativeWidth:I

    .line 176
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/bVNC;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/bVNC;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->nativeHeight:I

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/bVNC;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 180
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->nativeWidth:I

    .line 181
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->nativeHeight:I

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXGeometry:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXResType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 185
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXResType()I

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXWidth:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXHeight:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXWidth:Landroid/widget/EditText;

    iget v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->nativeWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXHeight:Landroid/widget/EditText;

    iget v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->nativeHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->nativeWidth:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXWidth(I)V

    .line 191
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->nativeHeight:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXHeight(I)V

    goto :goto_1

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXWidth:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXHeight:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXWidth:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXHeight:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :goto_1
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " -env FD_GEOM="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->geometry:Ljava/lang/String;

    return-void
.end method

.method private setSessionProg()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXSession:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXSessionType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 209
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXSessionType()I

    move-result v0

    const-string v1, "\" "

    const-string v2, " -env FD_PROG=\""

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 210
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXSessionProg:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXSessionProg:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXSessionType()I

    move-result v3

    invoke-static {v3}, Lcom/iiordanov/bVNC/Constants;->getSessionProgString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    .line 213
    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXSessionType()I

    move-result v2

    invoke-static {v2}, Lcom/iiordanov/bVNC/Constants;->getSessionProgString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->sessionProg:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXSessionProg:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXSessionProg:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v3}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXSessionProg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXSessionProg:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->sessionProg:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setWidgetStateAppropriately()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/bVNC;->getCurrentConnection()Lcom/iiordanov/bVNC/ConnectionBean;

    move-result-object v0

    iput-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->dismiss()V

    return-void

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXType()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->commandIndex:I

    .line 129
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXType()I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->origCommandIndex:I

    .line 131
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXType:Landroid/widget/Spinner;

    iget v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->commandIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 133
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setRemoteWidthAndHeight()V

    .line 135
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setSessionProg()V

    .line 137
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setPwOption()V

    .line 139
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->checkboxAutoXUnixAuth:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getAutoXUnixAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setAdvancedToggleState()V

    return-void
.end method

.method public static showDocumentation(Landroid/content/Context;)V
    .locals 1

    .line 96
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->docIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setWidgetStateAppropriately()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->retainAutoXInfo()V

    .line 107
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 240
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 242
    sget p1, Lcom/undatech/remoteClientUi/R$layout;->auto_x_customize:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setContentView(I)V

    .line 243
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x20008

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 245
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 246
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v0, -0x1

    .line 247
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 248
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 249
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 252
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerAutoXType:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXType:Landroid/widget/Spinner;

    .line 253
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$1;-><init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 268
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonAutoXHelp:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->buttonAutoXHelp:Landroid/widget/Button;

    .line 269
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$2;-><init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    sget p1, Lcom/undatech/remoteClientUi/R$id;->toggleAutoXAdvanced:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->toggleAutoXAdvanced:Landroid/widget/ToggleButton;

    .line 279
    sget p1, Lcom/undatech/remoteClientUi/R$id;->layoutAdvancedSettings:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->layoutAdvancedSettings:Landroid/widget/LinearLayout;

    .line 280
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->toggleAutoXAdvanced:Landroid/widget/ToggleButton;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$3;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$3;-><init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 293
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerAutoXGeometry:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXGeometry:Landroid/widget/Spinner;

    .line 294
    sget p1, Lcom/undatech/remoteClientUi/R$id;->autoXWidth:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXWidth:Landroid/widget/EditText;

    .line 295
    sget p1, Lcom/undatech/remoteClientUi/R$id;->autoXHeight:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXHeight:Landroid/widget/EditText;

    .line 296
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXGeometry:Landroid/widget/Spinner;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$4;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$4;-><init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 311
    sget p1, Lcom/undatech/remoteClientUi/R$id;->spinnerAutoXSession:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXSession:Landroid/widget/Spinner;

    .line 312
    sget p1, Lcom/undatech/remoteClientUi/R$id;->autoXSessionProg:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXSessionProg:Landroid/widget/EditText;

    .line 313
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXSession:Landroid/widget/Spinner;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$5;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$5;-><init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 327
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxAutoXUnixpw:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->checkboxAutoXUnixpw:Landroid/widget/CheckBox;

    .line 328
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$6;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$6;-><init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 338
    sget p1, Lcom/undatech/remoteClientUi/R$id;->checkboxAutoXUnixAuth:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->checkboxAutoXUnixAuth:Landroid/widget/CheckBox;

    .line 339
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$7;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$7;-><init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 349
    sget p1, Lcom/undatech/remoteClientUi/R$id;->autoXConfirm:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXConfirm:Landroid/widget/Button;

    .line 350
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$8;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$8;-><init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    sget p1, Lcom/undatech/remoteClientUi/R$id;->autoXCancel:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXCancel:Landroid/widget/Button;

    .line 361
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$9;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog$9;-><init>(Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setWidgetStateAppropriately()V

    return-void
.end method

.method public retainAutoXInfo()V
    .locals 3

    .line 415
    iget v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->origCommandIndex:I

    invoke-direct {p0, v0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setCommandIndexAndCommand(I)V

    .line 416
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->origCommandIndex:I

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXType(I)V

    .line 417
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXCommand(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/bVNC;->updateViewFromSelected()V

    .line 421
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->saveAndWriteRecent(ZLandroid/content/Context;)V

    return-void
.end method

.method public updateAutoXInfo()V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXGeometry:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXResType(I)V

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXWidth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXWidth(I)V

    .line 383
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXHeight:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXHeight(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->spinnerAutoXSession:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXSessionType(I)V

    .line 390
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->autoXSessionProg:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXSessionProg(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setRemoteWidthAndHeight()V

    .line 394
    invoke-direct {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setSessionProg()V

    .line 395
    iget v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->commandIndex:I

    invoke-direct {p0, v0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->setCommandIndexAndCommand(I)V

    .line 397
    iget v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->commandIndex:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 398
    :goto_1
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {v2, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXEnabled(Z)V

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    const-string v2, "localhost"

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setAddress(Ljava/lang/String;)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->commandIndex:I

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXType(I)V

    .line 403
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->command:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXCommand(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->checkboxAutoXUnixpw:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXUnixpw(Z)V

    .line 405
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->checkboxAutoXUnixAuth:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXUnixAuth(Z)V

    .line 407
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->rnd:Lcom/iiordanov/util/RandomString;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/iiordanov/util/RandomString;->randomString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setPassword(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->mainConfigDialog:Lcom/iiordanov/bVNC/bVNC;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/bVNC;->updateViewFromSelected()V

    .line 411
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->selected:Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/AutoXCustomizeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->saveAndWriteRecent(ZLandroid/content/Context;)V

    return-void
.end method
