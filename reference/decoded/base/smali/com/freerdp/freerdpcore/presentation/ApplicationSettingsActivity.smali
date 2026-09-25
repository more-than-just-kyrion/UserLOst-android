.class public Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;
.super Lcom/freerdp/freerdpcore/utils/AppCompatPreferenceActivity;
.source "ApplicationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$ClientPreferenceFragment;,
        Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$UiPreferenceFragment;,
        Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$PowerPreferenceFragment;,
        Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/utils/AppCompatPreferenceActivity;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    sget v1, Lcom/freerdp/freerdpcore/R$xml;->settings_app_client:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 214
    sget v1, Lcom/freerdp/freerdpcore/R$xml;->settings_app_power:I

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 215
    sget v1, Lcom/freerdp/freerdpcore/R$xml;->settings_app_security:I

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 216
    sget v1, Lcom/freerdp/freerdpcore/R$xml;->settings_app_ui:I

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 217
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_client_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    sget v4, Lcom/freerdp/freerdpcore/R$string;->preference_default_client_name:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method public static getAcceptAllCertificates(Landroid/content/Context;)Z
    .locals 2

    .line 255
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_accept_certificates:I

    .line 257
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 256
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getAskOnExit(Landroid/content/Context;)Z
    .locals 2

    .line 283
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_ui_ask_on_exit:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getAutoScrollTouchPointer(Landroid/content/Context;)Z
    .locals 2

    .line 290
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 291
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_ui_auto_scroll_touchpointer:I

    .line 292
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 291
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getClientName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 297
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_client_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisconnectTimeout(Landroid/content/Context;)I
    .locals 2

    .line 234
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_power_disconnect_timeout:I

    .line 236
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 235
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHideActionBar(Landroid/content/Context;)Z
    .locals 2

    .line 248
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 249
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_ui_hide_action_bar:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getHideStatusBar(Landroid/content/Context;)Z
    .locals 2

    .line 241
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_ui_hide_status_bar:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getHideZoomControls(Landroid/content/Context;)Z
    .locals 2

    .line 262
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 263
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_ui_hide_zoom_controls:I

    .line 264
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 263
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInvertScrolling(Landroid/content/Context;)Z
    .locals 2

    .line 276
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_ui_invert_scrolling:I

    .line 278
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 277
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSwapMouseButtons(Landroid/content/Context;)Z
    .locals 2

    .line 269
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_ui_swap_mouse_buttons:I

    .line 271
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 270
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isXLargeTablet(Landroid/content/Context;)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setupActionBar()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 72
    const-class v0, Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$ClientPreferenceFragment;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$UiPreferenceFragment;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$PowerPreferenceFragment;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$SecurityPreferenceFragment;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 67
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->settings_app_headers:I

    invoke-virtual {p0, v0, p1}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/freerdp/freerdpcore/utils/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->setupActionBar()V

    return-void
.end method

.method public onIsMultiPane()Z
    .locals 1

    .line 60
    invoke-static {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->isXLargeTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
