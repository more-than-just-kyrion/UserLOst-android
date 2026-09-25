.class public final synthetic Lcom/google/mlkit/md/settings/SettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/mlkit/md/settings/SettingsFragment;

.field public final synthetic f$1:Landroidx/preference/ListPreference;

.field public final synthetic f$2:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/md/settings/SettingsFragment;Landroidx/preference/ListPreference;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/md/settings/SettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/google/mlkit/md/settings/SettingsFragment;

    iput-object p2, p0, Lcom/google/mlkit/md/settings/SettingsFragment$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/ListPreference;

    iput-object p3, p0, Lcom/google/mlkit/md/settings/SettingsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/mlkit/md/settings/SettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/google/mlkit/md/settings/SettingsFragment;

    iget-object v1, p0, Lcom/google/mlkit/md/settings/SettingsFragment$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/google/mlkit/md/settings/SettingsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/mlkit/md/settings/SettingsFragment;->$r8$lambda$XPsXj4WEt7oNaIvNQfA1Uq3vbj0(Lcom/google/mlkit/md/settings/SettingsFragment;Landroidx/preference/ListPreference;Ljava/util/HashMap;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
