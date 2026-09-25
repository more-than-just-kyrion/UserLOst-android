.class public final Lcom/google/mlkit/md/settings/SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/google/mlkit/md/settings/SettingsFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "()V",
        "onCreatePreferences",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "rootKey",
        "",
        "setUpRearCameraPreviewSizePreference",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$XPsXj4WEt7oNaIvNQfA1Uq3vbj0(Lcom/google/mlkit/md/settings/SettingsFragment;Landroidx/preference/ListPreference;Ljava/util/HashMap;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/mlkit/md/settings/SettingsFragment;->setUpRearCameraPreviewSizePreference$lambda$0(Lcom/google/mlkit/md/settings/SettingsFragment;Landroidx/preference/ListPreference;Ljava/util/HashMap;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private final setUpRearCameraPreviewSizePreference()V
    .locals 11

    .line 38
    const-string v0, "toString(...)"

    sget v1, Ltech/ulo/library/R$string;->pref_key_rear_camera_preview_size:I

    invoke-virtual {p0, v1}, Lcom/google/mlkit/md/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/mlkit/md/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/preference/ListPreference;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 43
    :try_start_0
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    .line 44
    sget-object v4, Lcom/google/mlkit/md/Utils;->INSTANCE:Lcom/google/mlkit/md/Utils;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/google/mlkit/md/Utils;->generateValidPreviewSizeList(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v4

    .line 45
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 46
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v2, v7, :cond_1

    .line 48
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/mlkit/md/camera/CameraSizePair;

    .line 49
    invoke-virtual {v8}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPreview()Lcom/google/android/gms/common/images/Size;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/common/images/Size;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v2

    .line 50
    invoke-virtual {v8}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPicture()Lcom/google/android/gms/common/images/Size;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 51
    move-object v9, v6

    check-cast v9, Ljava/util/Map;

    invoke-virtual {v8}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPreview()Lcom/google/android/gms/common/images/Size;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/common/images/Size;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/mlkit/md/camera/CameraSizePair;->getPicture()Lcom/google/android/gms/common/images/Size;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/common/images/Size;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_1
    move-object v0, v5

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 55
    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v0, Lcom/google/mlkit/md/settings/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, v6}, Lcom/google/mlkit/md/settings/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/mlkit/md/settings/SettingsFragment;Landroidx/preference/ListPreference;Ljava/util/HashMap;)V

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_1
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 70
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v1, Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz v3, :cond_4

    .line 72
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    :cond_4
    throw v0
.end method

.method private static final setUpRearCameraPreviewSizePreference$lambda$0(Lcom/google/mlkit/md/settings/SettingsFragment;Landroidx/preference/ListPreference;Ljava/util/HashMap;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$previewSizePreference"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$previewToPictureSizeStringMap"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-string p3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/google/mlkit/md/settings/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_0
    move-object p3, p4

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    sget-object p1, Lcom/google/mlkit/md/settings/PreferenceUtils;->INSTANCE:Lcom/google/mlkit/md/settings/PreferenceUtils;

    .line 62
    check-cast p0, Landroid/content/Context;

    .line 63
    sget p3, Ltech/ulo/library/R$string;->pref_key_rear_camera_picture_size:I

    .line 64
    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 61
    invoke-virtual {p1, p0, p3, p2}, Lcom/google/mlkit/md/settings/PreferenceUtils;->saveStringPreference(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 32
    sget p1, Ltech/ulo/library/R$xml;->barcode_preferences:I

    invoke-virtual {p0, p1, p2}, Lcom/google/mlkit/md/settings/SettingsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/google/mlkit/md/settings/SettingsFragment;->setUpRearCameraPreviewSizePreference()V

    return-void
.end method
