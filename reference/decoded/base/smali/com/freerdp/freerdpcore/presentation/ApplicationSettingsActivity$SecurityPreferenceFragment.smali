.class public Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "ApplicationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->clearCertificateCache()V

    return-void
.end method

.method private clearCertificateCache()V
    .locals 6

    .line 197
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.freerdp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 200
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->deleteDirectory(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget v1, Lcom/freerdp/freerdpcore/R$string;->info_reset_success:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    :cond_0
    sget v1, Lcom/freerdp/freerdpcore/R$string;->info_reset_failed:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 206
    :cond_1
    sget v1, Lcom/freerdp/freerdpcore/R$string;->info_reset_success:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)Z
    .locals 6

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 186
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 188
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->deleteDirectory(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method private showDialog()V
    .locals 3

    .line 157
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/freerdp/freerdpcore/R$string;->dlg_title_clear_cert_cache:I

    .line 158
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->dlg_msg_clear_cert_cache:I

    .line 159
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment$2;-><init>(Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;)V

    const v2, 0x104000a

    .line 160
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment$1;-><init>(Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;)V

    const/high16 v2, 0x1040000

    .line 169
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108001d

    .line 177
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    sget p1, Lcom/freerdp/freerdpcore/R$xml;->settings_app_security:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .line 142
    sget v0, Lcom/freerdp/freerdpcore/R$string;->preference_key_security_clear_certificate_cache:I

    .line 143
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;->showDialog()V

    const/4 p1, 0x1

    return p1

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
