.class public Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$ClientPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "ApplicationSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget p1, Lcom/freerdp/freerdpcore/R$xml;->settings_app_client:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$ClientPreferenceFragment;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$ClientPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 88
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$ClientPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget v0, Lcom/freerdp/freerdpcore/R$string;->preference_key_client_name:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$ClientPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$ClientPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    const-string p2, ""

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$ClientPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/preference/EditTextPreference;

    .line 103
    invoke-virtual {p2, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
