.class public Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$UiPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "ApplicationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    sget p1, Lcom/freerdp/freerdpcore/R$xml;->settings_app_ui:I

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/ApplicationSettingsActivity$UiPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method
