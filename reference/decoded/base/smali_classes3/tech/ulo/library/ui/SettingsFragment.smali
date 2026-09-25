.class public final Ltech/ulo/library/ui/SettingsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Ltech/ulo/library/ui/SettingsFragment;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "()V",
        "prootDebugLogger",
        "Ltech/ulo/library/utils/ProotDebugLogger;",
        "getProotDebugLogger",
        "()Ltech/ulo/library/utils/ProotDebugLogger;",
        "prootDebugLogger$delegate",
        "Lkotlin/Lazy;",
        "hidePrefs",
        "",
        "onCreatePreferences",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "",
        "setDivider",
        "divider",
        "Landroid/graphics/drawable/Drawable;",
        "setDividerHeight",
        "height",
        "",
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


# instance fields
.field private final prootDebugLogger$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$ERZBRZA3bU3hTktPAJ_sP467wq4(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/ulo/library/ui/SettingsFragment;->onCreatePreferences$lambda$7(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$I1oy_IEgybwTMJIbzJwYiPD0dTU(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->onCreatePreferences$lambda$0(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b-MbCQzhmN9JukUcNCKed4oPnJE(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->onCreatePreferences$lambda$4(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s-9cKtie10N4h9mSoZeZB33YZoM(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->onCreatePreferences$lambda$6(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$y1UN0VLS5todBoazobrKTJ9dblQ(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->onCreatePreferences$lambda$2(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 18
    new-instance v0, Ltech/ulo/library/ui/SettingsFragment$prootDebugLogger$2;

    invoke-direct {v0, p0}, Ltech/ulo/library/ui/SettingsFragment$prootDebugLogger$2;-><init>(Ltech/ulo/library/ui/SettingsFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/ulo/library/ui/SettingsFragment;->prootDebugLogger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getProotDebugLogger()Ltech/ulo/library/utils/ProotDebugLogger;
    .locals 1

    .line 18
    iget-object v0, p0, Ltech/ulo/library/ui/SettingsFragment;->prootDebugLogger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltech/ulo/library/utils/ProotDebugLogger;

    return-object v0
.end method

.method private final hidePrefs()V
    .locals 0

    return-void
.end method

.method private static final onCreatePreferences$lambda$0(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ltech/ulo/library/ui/SettingsFragment;->getProotDebugLogger()Ltech/ulo/library/utils/ProotDebugLogger;

    move-result-object p0

    invoke-virtual {p0}, Ltech/ulo/library/utils/ProotDebugLogger;->deleteLogs()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onCreatePreferences$lambda$2(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ltech/ulo/library/ui/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "apps"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 35
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 36
    const-string p1, "AutoApp"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onCreatePreferences$lambda$4(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ltech/ulo/library/ui/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "apps"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 46
    const-string p1, "askConnectType"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method private static final onCreatePreferences$lambda$6(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ltech/ulo/library/ui/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "apps"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 56
    const-string p1, "askDisplayPreferences"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method private static final onCreatePreferences$lambda$7(Ltech/ulo/library/ui/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0}, Ltech/ulo/library/ui/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    sget p1, Ltech/ulo/library/R$id;->bottom_nav_view:I

    .line 65
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 24
    sget p1, Ltech/ulo/library/R$xml;->preferences:I

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->addPreferencesFromResource(I)V

    .line 26
    const-string p1, "pref_proot_delete_debug_file"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    new-instance p2, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Ltech/ulo/library/ui/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 32
    const-string p1, "pref_clear_auto_start"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    new-instance p2, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Ltech/ulo/library/ui/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 42
    const-string p1, "pref_clear_connect_type"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    new-instance p2, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda2;-><init>(Ltech/ulo/library/ui/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 52
    const-string p1, "pref_clear_display_preferences"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    new-instance p2, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda3;-><init>(Ltech/ulo/library/ui/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    const-string p1, "pref_hide_sessions_filesystems"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ltech/ulo/library/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 63
    new-instance p2, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Ltech/ulo/library/ui/SettingsFragment$$ExternalSyntheticLambda4;-><init>(Ltech/ulo/library/ui/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    invoke-direct {p0}, Ltech/ulo/library/ui/SettingsFragment;->hidePrefs()V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 99
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    const/4 p1, 0x0

    .line 103
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    return-void
.end method
