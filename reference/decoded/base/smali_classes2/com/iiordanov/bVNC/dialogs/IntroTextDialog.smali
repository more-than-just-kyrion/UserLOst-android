.class public Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;
.super Landroid/app/Dialog;
.source "IntroTextDialog.java"


# static fields
.field static dialog:Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;


# instance fields
.field private database:Lcom/iiordanov/bVNC/Database;

.field private donate:Z

.field private packageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method static bridge synthetic -$$Nest$mshowAgain(Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->showAgain(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/content/pm/PackageInfo;Lcom/iiordanov/bVNC/Database;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->donate:Z

    .line 85
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 86
    iput-object p2, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 87
    iput-object p3, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->database:Lcom/iiordanov/bVNC/Database;

    return-void
.end method

.method private showAgain(Z)V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getMostRecent(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/iiordanov/bVNC/MostRecentBean;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->packageInfo:Landroid/content/pm/PackageInfo;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    int-to-long v2, p1

    .line 247
    invoke-virtual {v1, v2, v3}, Lcom/iiordanov/bVNC/MostRecentBean;->setShowSplashVersion(J)V

    .line 248
    invoke-virtual {v1, v0}, Lcom/iiordanov/bVNC/MostRecentBean;->Gen_update(Lnet/sqlcipher/database/SQLiteDatabase;)I

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->database:Lcom/iiordanov/bVNC/Database;

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 251
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->dismiss()V

    const/4 p1, 0x0

    .line 252
    sput-object p1, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->dialog:Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;

    return-void
.end method

.method public static showIntroTextIfNecessary(Landroid/app/Activity;Lcom/iiordanov/bVNC/Database;Z)V
    .locals 5

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lcom/iiordanov/bVNC/ConnectionBean;->getMostRecent(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/iiordanov/bVNC/MostRecentBean;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 74
    sget-object v2, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->dialog:Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iiordanov/bVNC/MostRecentBean;->getShowSplashVersion()J

    move-result-wide v1

    iget p2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v3, p2

    cmp-long p2, v1, v3

    if-eqz p2, :cond_1

    .line 75
    :cond_0
    new-instance p2, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;

    invoke-direct {p2, p0, v0, p1}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;-><init>(Landroid/app/Activity;Landroid/content/pm/PackageInfo;Lcom/iiordanov/bVNC/Database;)V

    sput-object p2, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->dialog:Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;

    .line 76
    invoke-virtual {p2}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->show()V

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 236
    invoke-direct {p0, v0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->showAgain(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 95
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 98
    const-string v0, "free"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->donate:Z

    .line 102
    :cond_0
    sget v0, Lcom/undatech/remoteClientUi/R$layout;->intro_dialog:I

    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 105
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/undatech/remoteClientUi/R$string;->intro_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/undatech/remoteClientUi/R$string;->rdp_intro_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isSpice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/undatech/remoteClientUi/R$string;->spice_intro_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "SPICE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "<br>"

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/undatech/remoteClientUi/R$string;->ad_donate_text_spice:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 119
    :cond_3
    const-string v1, "RDP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 120
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/undatech/remoteClientUi/R$string;->ad_donate_text_rdp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/undatech/remoteClientUi/R$string;->ad_donate_text0:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->getDonationPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-boolean v1, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->donate:Z

    if-eqz v1, :cond_5

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "<a href=\"market://DETAILS?id="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/undatech/remoteClientUi/R$string;->ad_donate_text1:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "</a>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/undatech/remoteClientUi/R$string;->ad_donate_text2:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/undatech/remoteClientUi/R$string;->ad_donate_text3:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string p1, " <a href=\"market://details?id=com.iiordanov.bVNC\">VNC</a>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "<a href=\"market://details?id=com.iiordanov.aRDP\">RDP</a>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "<a href=\"market://details?id=com.iiordanov.aSPICE\">SPICE</a>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string p1, "<a href=\"market://details?id=com.undatech.opaque\">oVirt/RHEV</a>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_5
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/undatech/remoteClientUi/R$string;->intro_header:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isVnc(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 151
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->intro_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 152
    :cond_6
    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isRdp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 153
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->rdp_intro_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 154
    :cond_7
    invoke-static {v0}, Lcom/iiordanov/bVNC/Utils;->isSpice(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 155
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->spice_intro_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_8
    :goto_2
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/undatech/remoteClientUi/R$string;->intro_version_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    sget p1, Lcom/undatech/remoteClientUi/R$id;->textIntroText:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 162
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonCloseIntro:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$1;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$1;-><init>(Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget p1, Lcom/undatech/remoteClientUi/R$id;->buttonCloseIntroDontShow:I

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 175
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->donate:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    .line 176
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 178
    :cond_9
    new-instance v0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$2;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$2;-><init>(Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 197
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 198
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/undatech/remoteClientUi/R$menu;->intro_dialog_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemClose:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$3;

    invoke-direct {v1, p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$3;-><init>(Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 219
    sget v0, Lcom/undatech/remoteClientUi/R$id;->itemDontShowAgain:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v0, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$4;

    invoke-direct {v0, p0}, Lcom/iiordanov/bVNC/dialogs/IntroTextDialog$4;-><init>(Lcom/iiordanov/bVNC/dialogs/IntroTextDialog;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method
