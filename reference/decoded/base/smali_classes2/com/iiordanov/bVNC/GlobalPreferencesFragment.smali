.class public Lcom/iiordanov/bVNC/GlobalPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "GlobalPreferencesFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/GlobalPreferencesFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "generalSettings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 12
    sget p1, Lcom/undatech/remoteClientUi/R$xml;->global_preferences:I

    invoke-virtual {p0, p1, p2}, Lcom/iiordanov/bVNC/GlobalPreferencesFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method
