.class public Lcom/iiordanov/bVNC/dialogs/GetTextFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "GetTextFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;,
        Lcom/iiordanov/bVNC/dialogs/GetTextFragment$TextMatcher;
    }
.end annotation


# static fields
.field public static final Credentials:I = 0x4

.field public static final CredentialsWithDomain:I = 0x5

.field public static final CredentialsWithReadOnlyUser:I = 0x6

.field public static final DIALOG_ID_GET_MASTER_PASSWORD:Ljava/lang/String; = "DIALOG_ID_GET_MASTER_PASSWORD"

.field public static final DIALOG_ID_GET_MATCHING_MASTER_PASSWORDS:Ljava/lang/String; = "DIALOG_ID_GET_MATCHING_MASTER_PASSWORDS"

.field public static final DIALOG_ID_GET_OPAQUE_CREDENTIALS:Ljava/lang/String; = "DIALOG_ID_GET_OPAQUE_CREDENTIALS"

.field public static final DIALOG_ID_GET_OPAQUE_OTP_CODE:Ljava/lang/String; = "DIALOG_ID_GET_OPAQUE_OTP_CODE"

.field public static final DIALOG_ID_GET_OPAQUE_PASSWORD:Ljava/lang/String; = "DIALOG_ID_GET_OPAQUE_PASSWORD"

.field public static final DIALOG_ID_GET_PASSWORD:Ljava/lang/String; = "DIALOG_ID_GET_PASSWORD"

.field public static final DIALOG_ID_GET_RDP_CREDENTIALS:Ljava/lang/String; = "DIALOG_ID_GET_RDP_CREDENTIALS"

.field public static final DIALOG_ID_GET_SPICE_PASSWORD:Ljava/lang/String; = "DIALOG_ID_GET_SPICE_PASSWORD"

.field public static final DIALOG_ID_GET_SSH_CREDENTIALS:Ljava/lang/String; = "DIALOG_ID_GET_SSH_CREDENTIALS"

.field public static final DIALOG_ID_GET_SSH_PASSPHRASE:Ljava/lang/String; = "DIALOG_ID_GET_SSH_PASSPHRASE"

.field public static final DIALOG_ID_GET_VERIFICATIONCODE:Ljava/lang/String; = "DIALOG_ID_GET_VERIFICATIONCODE"

.field public static final DIALOG_ID_GET_VNC_CREDENTIALS:Ljava/lang/String; = "DIALOG_ID_GET_VNC_CREDENTIALS"

.field public static final DIALOG_ID_GET_VNC_PASSWORD:Ljava/lang/String; = "DIALOG_ID_GET_VNC_PASSWORD"

.field public static final MatchingPasswordTwice:I = 0x3

.field public static final Password:I = 0x2

.field public static final Plaintext:I = 0x1

.field public static TAG:Ljava/lang/String; = "GetTextFragment"


# instance fields
.field private buttonCancel:Landroid/widget/Button;

.field private buttonConfirm:Landroid/widget/Button;

.field private checkboxKeepPassword:Landroid/widget/CheckBox;

.field private dialogId:Ljava/lang/String;

.field private dialogType:I

.field private dismissalListener:Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;

.field private error:Landroid/widget/TextView;

.field private errorNum:I

.field private keepPassword:Z

.field private message:Landroid/widget/TextView;

.field private messageNum:I

.field private t1:Ljava/lang/String;

.field private t2:Ljava/lang/String;

.field private t3:Ljava/lang/String;

.field private textBox:Landroid/widget/EditText;

.field private textBox2:Landroid/widget/EditText;

.field private textBox3:Landroid/widget/EditText;

.field private textViewBox:Landroid/widget/TextView;

.field private title:Ljava/lang/String;

.field private wasCancelled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgeterror(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->error:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeterrorNum(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)I
    .locals 0

    iget p0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->errorNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputwasCancelled(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->wasCancelled:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->wasCancelled:Z

    .line 102
    iput v0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dialogType:I

    .line 103
    iput v0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->messageNum:I

    .line 104
    iput v0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->errorNum:I

    return-void
.end method

.method private dismissOnCancel(Landroid/widget/Button;)V
    .locals 1

    .line 270
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$1;-><init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private dismissOnConfirm(Landroid/widget/Button;)V
    .locals 1

    .line 280
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$2;-><init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private ensureMatchingDismissOnConfirm(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 1

    .line 289
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$3;-><init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance p1, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$TextMatcher;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$TextMatcher;-><init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;Lcom/iiordanov/bVNC/dialogs/GetTextFragment-IA;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 303
    new-instance p1, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$TextMatcher;

    invoke-direct {p1, p0, p4}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$TextMatcher;-><init>(Lcom/iiordanov/bVNC/dialogs/GetTextFragment;Lcom/iiordanov/bVNC/dialogs/GetTextFragment-IA;)V

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private hideText(Landroid/widget/EditText;)V
    .locals 1

    .line 266
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/iiordanov/bVNC/dialogs/GetTextFragment;
    .locals 2

    .line 113
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->TAG:Ljava/lang/String;

    const-string v1, "newInstance called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;-><init>()V

    .line 115
    invoke-virtual {v0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->setDismissalListener(Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;)V

    .line 117
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string v1, "dialogId"

    invoke-virtual {p2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string p0, "title"

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string p0, "dialogType"

    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string p0, "messageNum"

    invoke-virtual {p2, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string p0, "errorNum"

    invoke-virtual {p2, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string p0, "t1"

    invoke-virtual {p2, p0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string p0, "t2"

    invoke-virtual {p2, p0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string p0, "t3"

    invoke-virtual {p2, p0, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string p0, "keepPassword"

    invoke-virtual {p2, p0, p9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    invoke-virtual {v0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 128
    invoke-virtual {v0, p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->setRetainInstance(Z)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    sget-object p1, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate called"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialogId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dialogId:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->title:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "dialogType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dialogType:I

    .line 140
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "messageNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->messageNum:I

    .line 141
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->errorNum:I

    .line 142
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "t1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->t1:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "t2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->t2:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "t3"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->t3:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "keepPassword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->keepPassword:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 150
    sget-object p3, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView called"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 151
    iput-boolean p3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->wasCancelled:Z

    .line 153
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 156
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    iget v0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dialogType:I

    packed-switch v0, :pswitch_data_0

    .line 236
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 223
    :pswitch_0
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->get_credentials_with_read_only_user:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 224
    sget p2, Lcom/undatech/remoteClientUi/R$id;->error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->error:Landroid/widget/TextView;

    .line 225
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textViewBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textViewBox:Landroid/widget/TextView;

    .line 226
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    .line 227
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->hideText(Landroid/widget/EditText;)V

    .line 228
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 229
    sget p2, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepPassword:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->checkboxKeepPassword:Landroid/widget/CheckBox;

    .line 230
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonConfirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    .line 231
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonCancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonCancel:Landroid/widget/Button;

    .line 232
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnCancel(Landroid/widget/Button;)V

    .line 233
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnConfirm(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 196
    :pswitch_1
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->get_credentials_with_domain:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 197
    sget p2, Lcom/undatech/remoteClientUi/R$id;->error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->error:Landroid/widget/TextView;

    .line 198
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    .line 199
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    .line 200
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox3:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox3:Landroid/widget/EditText;

    .line 201
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->hideText(Landroid/widget/EditText;)V

    .line 202
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox3:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 203
    sget p2, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepPassword:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->checkboxKeepPassword:Landroid/widget/CheckBox;

    .line 204
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonConfirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    .line 205
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonCancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonCancel:Landroid/widget/Button;

    .line 206
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnCancel(Landroid/widget/Button;)V

    .line 207
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnConfirm(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 210
    :pswitch_2
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->get_credentials:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 211
    sget p2, Lcom/undatech/remoteClientUi/R$id;->error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->error:Landroid/widget/TextView;

    .line 212
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    .line 213
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    .line 214
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->hideText(Landroid/widget/EditText;)V

    .line 215
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 216
    sget p2, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepPassword:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->checkboxKeepPassword:Landroid/widget/CheckBox;

    .line 217
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonConfirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    .line 218
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonCancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonCancel:Landroid/widget/Button;

    .line 219
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnCancel(Landroid/widget/Button;)V

    .line 220
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnConfirm(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 184
    :pswitch_3
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->get_text_twice:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 185
    sget p2, Lcom/undatech/remoteClientUi/R$id;->error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->error:Landroid/widget/TextView;

    .line 186
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    .line 187
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    .line 188
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->hideText(Landroid/widget/EditText;)V

    .line 189
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->hideText(Landroid/widget/EditText;)V

    .line 190
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonConfirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    .line 191
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonCancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonCancel:Landroid/widget/Button;

    .line 192
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnCancel(Landroid/widget/Button;)V

    .line 193
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    iget-object p3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->error:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->ensureMatchingDismissOnConfirm(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 174
    :pswitch_4
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->get_text:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 175
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    .line 176
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->hideText(Landroid/widget/EditText;)V

    .line 177
    sget p2, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepPassword:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->checkboxKeepPassword:Landroid/widget/CheckBox;

    .line 178
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonConfirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    .line 179
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonCancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonCancel:Landroid/widget/Button;

    .line 180
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnCancel(Landroid/widget/Button;)V

    .line 181
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnConfirm(Landroid/widget/Button;)V

    goto :goto_0

    .line 161
    :pswitch_5
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->get_text:I

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 162
    sget p2, Lcom/undatech/remoteClientUi/R$id;->textBox:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    .line 163
    sget p2, Lcom/undatech/remoteClientUi/R$id;->checkboxKeepPassword:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->checkboxKeepPassword:Landroid/widget/CheckBox;

    .line 164
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dialogId:Ljava/lang/String;

    const-string p3, "DIALOG_ID_GET_OPAQUE_OTP_CODE"

    if-ne p2, p3, :cond_0

    .line 165
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->checkboxKeepPassword:Landroid/widget/CheckBox;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 168
    :cond_0
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonConfirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    .line 169
    sget p2, Lcom/undatech/remoteClientUi/R$id;->buttonCancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonCancel:Landroid/widget/Button;

    .line 170
    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnCancel(Landroid/widget/Button;)V

    .line 171
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->buttonConfirm:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissOnConfirm(Landroid/widget/Button;)V

    .line 240
    :goto_0
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textViewBox:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 241
    iget-object p3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->t1:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_1
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->t1:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 243
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_2
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->t2:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 245
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_3
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox3:Landroid/widget/EditText;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->t3:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 247
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_4
    iget-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->checkboxKeepPassword:Landroid/widget/CheckBox;

    if-eqz p2, :cond_5

    .line 250
    iget-boolean p3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->keepPassword:Z

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    :cond_5
    sget p2, Lcom/undatech/remoteClientUi/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->message:Landroid/widget/TextView;

    .line 254
    iget p3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->messageNum:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x1

    .line 256
    invoke-virtual {p0, p2}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->setRetainInstance(Z)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 339
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    .line 308
    sget-object v0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDismiss called: Sending data back to Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 309
    new-array v0, v0, [Ljava/lang/String;

    .line 310
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textViewBox:Landroid/widget/TextView;

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 312
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textViewBox:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 316
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 320
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox2:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox3:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 323
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 324
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->textBox3:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_3
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->checkboxKeepPassword:Landroid/widget/CheckBox;

    if-eqz v1, :cond_4

    .line 327
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->keepPassword:Z

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissalListener:Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;

    if-eqz v1, :cond_5

    .line 330
    iget-object v2, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dialogId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->wasCancelled:Z

    iget-boolean v4, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->keepPassword:Z

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;->onTextObtained(Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 332
    :cond_5
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public setDismissalListener(Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/iiordanov/bVNC/dialogs/GetTextFragment;->dismissalListener:Lcom/iiordanov/bVNC/dialogs/GetTextFragment$OnFragmentDismissedListener;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 4

    .line 345
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 347
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 350
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 352
    const-string p2, "IllegalStateException"

    const-string v0, "Exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_1
    return-void
.end method
