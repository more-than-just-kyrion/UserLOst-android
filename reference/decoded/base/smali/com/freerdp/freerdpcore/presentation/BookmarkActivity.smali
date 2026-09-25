.class public Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;
.super Landroid/preference/PreferenceActivity;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final PARAM_CONNECTION_REFERENCE:Ljava/lang/String; = "conRef"

.field private static final PREFERENCES_ADVANCED:I = 0x5

.field private static final PREFERENCES_BOOKMARK:I = 0x1

.field private static final PREFERENCES_CREDENTIALS:I = 0x2

.field private static final PREFERENCES_DEBUG:I = 0x9

.field private static final PREFERENCES_GATEWAY:I = 0x8

.field private static final PREFERENCES_PERFORMANCE:I = 0x4

.field private static final PREFERENCES_PERFORMANCE3G:I = 0x7

.field private static final PREFERENCES_SCREEN:I = 0x3

.field private static final PREFERENCES_SCREEN3G:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BookmarkActivity"

.field private static bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase; = null

.field private static new_bookmark:Z = false

.field private static settings_changed:Z = false


# instance fields
.field private current_preferences:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->finishAndResetBookmark()V

    return-void
.end method

.method static synthetic access$100()Lcom/freerdp/freerdpcore/domain/BookmarkBase;
    .locals 1

    .line 40
    sget-object v0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    return-object v0
.end method

.method private advancedSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .line 434
    const-string v0, "bookmark.enable_gateway_settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 436
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 437
    const-string p2, "bookmark.gateway_settings"

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 439
    :cond_0
    const-string v0, "bookmark.enable_3g_settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "bookmark.screen_3g"

    if-eqz v0, :cond_1

    .line 441
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 442
    invoke-virtual {p0, v2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 443
    const-string p2, "bookmark.performance_3g"

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 445
    :cond_1
    const-string v0, "bookmark.security"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 448
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    aget-object p1, v2, p1

    .line 449
    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 451
    :cond_2
    const-string v0, "bookmark.resolution_3g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "bookmark.colors_3g"

    if-nez v1, :cond_5

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "bookmark.width_3g"

    .line 452
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "bookmark.height_3g"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 462
    :cond_3
    const-string v0, "bookmark.remote_program"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_4

    .line 463
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 464
    :cond_4
    const-string v0, "bookmark.work_dir"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 465
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 454
    :cond_5
    :goto_0
    const-string p2, "800x600"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 455
    const-string v0, "automatic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 456
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/freerdp/freerdpcore/R$string;->resolution_automatic:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 457
    :cond_6
    const-string v0, "custom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 458
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/freerdp/freerdpcore/R$string;->resolution_custom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 459
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x10

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-virtual {p0, v2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private bookmarkSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 385
    const-string v0, "bookmark.label"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 387
    :cond_0
    const-string v0, "bookmark.hostname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 389
    :cond_1
    const-string v0, "bookmark.port"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 391
    :cond_2
    const-string v0, "bookmark.username"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    const-string v0, "<none>"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 396
    :goto_0
    const-string p1, "bookmark.credentials"

    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 398
    :cond_4
    const-string v0, "bookmark.resolution"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "bookmark.colors"

    if-nez v1, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "bookmark.width"

    .line 399
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "bookmark.height"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 401
    :cond_5
    const-string p2, "800x600"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 405
    const-string v0, "automatic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 407
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/freerdp/freerdpcore/R$string;->resolution_automatic:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 409
    :cond_6
    const-string v0, "custom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 411
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/freerdp/freerdpcore/R$string;->resolution_custom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 413
    :cond_7
    const-string v0, "fitscreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 415
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/freerdp/freerdpcore/R$string;->resolution_fit:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 417
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x10

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 418
    const-string p2, "bookmark.screen"

    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private credentialsSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 477
    const-string v0, "bookmark.username"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 479
    :cond_0
    const-string v0, "bookmark.password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 482
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 483
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/freerdp/freerdpcore/R$string;->settings_password_empty:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 482
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 486
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/freerdp/freerdpcore/R$string;->settings_password_present:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 485
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 488
    :cond_2
    const-string v0, "bookmark.domain"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private debugSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 563
    const-string v0, "bookmark.debug_level"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const-string v1, "INFO"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    .line 567
    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 569
    :cond_0
    const-string v0, "bookmark.async_channel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 571
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 572
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    .line 573
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 575
    :cond_1
    const-string v0, "bookmark.async_update"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 578
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    .line 579
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 581
    :cond_2
    const-string v0, "bookmark.async_input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 583
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 584
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    .line 585
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private finishAndResetBookmark()V
    .locals 1

    const/4 v0, 0x0

    .line 639
    sput-object v0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 640
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 642
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->finish()V

    return-void
.end method

.method private gatewaySettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 591
    const-string v0, "bookmark.gateway_hostname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 595
    :cond_0
    const-string v0, "bookmark.gateway_port"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0x1bb

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 599
    :cond_1
    const-string v0, "bookmark.gateway_username"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 603
    :cond_2
    const-string v0, "bookmark.gateway_password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 605
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    .line 606
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 607
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/freerdp/freerdpcore/R$string;->settings_password_empty:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 606
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 609
    :cond_3
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 610
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/freerdp/freerdpcore/R$string;->settings_password_present:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 609
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 612
    :cond_4
    const-string v0, "bookmark.gateway_domain"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 613
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private initAdvancedSettings(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 424
    const-string v0, "bookmark.enable_gateway_settings"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->advancedSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 425
    const-string v0, "bookmark.enable_3g_settings"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->advancedSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 426
    const-string v0, "bookmark.security"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->advancedSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 427
    const-string v0, "bookmark.resolution_3g"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->advancedSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 428
    const-string v0, "bookmark.remote_program"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->advancedSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 429
    const-string v0, "bookmark.work_dir"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->advancedSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private initBookmarkSettings(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 376
    const-string v0, "bookmark.label"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmarkSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 377
    const-string v0, "bookmark.hostname"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmarkSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 378
    const-string v0, "bookmark.port"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmarkSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 379
    const-string v0, "bookmark.username"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmarkSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 380
    const-string v0, "bookmark.resolution"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmarkSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private initCredentialsSettings(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 470
    const-string v0, "bookmark.username"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->credentialsSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 471
    const-string v0, "bookmark.password"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->credentialsSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 472
    const-string v0, "bookmark.domain"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->credentialsSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private initDebugSettings(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 546
    const-string v0, "bookmark.debug_level"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->debugSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 547
    const-string v0, "bookmark.async_channel"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->debugSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 548
    const-string v0, "bookmark.async_update"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->debugSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 549
    const-string v0, "bookmark.async_input"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->debugSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private initGatewaySettings(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 554
    const-string v0, "bookmark.gateway_hostname"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->gatewaySettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 555
    const-string v0, "bookmark.gateway_port"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->gatewaySettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 556
    const-string v0, "bookmark.gateway_username"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->gatewaySettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 557
    const-string v0, "bookmark.gateway_password"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->gatewaySettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 558
    const-string v0, "bookmark.gateway_domain"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->gatewaySettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private initScreenSettings(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 494
    const-string v0, "bookmark.colors"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 495
    const-string v0, "bookmark.resolution"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 496
    const-string v0, "bookmark.width"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 497
    const-string v0, "bookmark.height"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private initScreenSettings3G(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 502
    const-string v0, "bookmark.colors_3g"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 503
    const-string v0, "bookmark.resolution_3g"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 504
    const-string v0, "bookmark.width_3g"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 505
    const-string v0, "bookmark.height_3g"

    invoke-direct {p0, p1, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private initSettings(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 339
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->initDebugSettings(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->initGatewaySettings(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->initScreenSettings3G(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 346
    :cond_3
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->initAdvancedSettings(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 354
    :cond_4
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->initScreenSettings(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 350
    :cond_5
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->initCredentialsSettings(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 342
    :cond_6
    invoke-direct {p0, p1}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->initBookmarkSettings(Landroid/content/SharedPreferences;)V

    :goto_0
    return-void
.end method

.method private screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .line 512
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    const-string v0, "bookmark.colors"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "bookmark.colors_3g"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 520
    :cond_1
    const-string v0, "bookmark.resolution"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "bookmark.height"

    const-string v3, "bookmark.width"

    const-string v4, "bookmark.height_3g"

    const-string v5, "bookmark.width_3g"

    if-nez v1, :cond_6

    const-string v1, "bookmark.resolution_3g"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 538
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 540
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 541
    :cond_4
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0x258

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 539
    :cond_5
    :goto_0
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/16 v1, 0x320

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 522
    :cond_6
    :goto_1
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 523
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 526
    const-string v1, "custom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 527
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 529
    invoke-virtual {p0, v3}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 530
    invoke-virtual {p0, v2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 534
    :cond_7
    invoke-virtual {p0, v5}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 535
    invoke-virtual {p0, v4}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 517
    :cond_8
    :goto_2
    invoke-virtual {p0, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 518
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    return-void
.end method

.method private setIntentComponentNames()V
    .locals 3

    .line 281
    new-instance v0, Landroid/content/ComponentName;

    .line 282
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    const-string v2, "bookmark.credentials"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v2, "bookmark.screen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v2, "bookmark.performance"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v2, "bookmark.advanced"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    const-string v2, "bookmark.screen_3g"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v2, "bookmark.performance_3g"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v2, "bookmark.gateway_settings"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v2, "bookmark.debug"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 296
    invoke-virtual {p0, v2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateBookmarkFromFile(Lcom/freerdp/freerdpcore/domain/ManualBookmark;Lcom/freerdp/freerdpcore/utils/RDPFileParser;)V
    .locals 7

    .line 233
    const-string v0, "full address"

    invoke-virtual {p2, v0}, Lcom/freerdp/freerdpcore/utils/RDPFileParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 237
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-le v4, v6, :cond_0

    .line 241
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setPort(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    const-string v4, "BookmarkActivity"

    const-string v6, "Malformed address"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_0
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_1
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setHostname(Ljava/lang/String;)V

    .line 259
    :cond_2
    const-string v0, "server port"

    invoke-virtual {p2, v0}, Lcom/freerdp/freerdpcore/utils/RDPFileParser;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setPort(I)V

    .line 263
    :cond_3
    const-string v0, "username"

    invoke-virtual {p2, v0}, Lcom/freerdp/freerdpcore/utils/RDPFileParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 265
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setUsername(Ljava/lang/String;)V

    .line 267
    :cond_4
    const-string v0, "domain"

    invoke-virtual {p2, v0}, Lcom/freerdp/freerdpcore/utils/RDPFileParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 269
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setDomain(Ljava/lang/String;)V

    .line 271
    :cond_5
    const-string v0, "connect to console"

    invoke-virtual {p2, v0}, Lcom/freerdp/freerdpcore/utils/RDPFileParser;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 273
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p1, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setConsoleMode(Z)V

    :cond_7
    return-void
.end method

.method private updateH264Preferences()V
    .locals 5

    .line 210
    invoke-static {}, Lcom/freerdp/freerdpcore/services/LibFreeRDP;->hasH264Support()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    sget v0, Lcom/freerdp/freerdpcore/R$string;->preference_key_h264:I

    sget v1, Lcom/freerdp/freerdpcore/R$string;->preference_key_h264_3g:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 216
    aget v4, v0, v3

    .line 218
    invoke-virtual {p0, v4}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 222
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private verifySettings(Landroid/content/SharedPreferences;)Z
    .locals 4

    .line 622
    const-string v0, "bookmark.label"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 626
    const-string v3, "bookmark.hostname"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    :cond_1
    if-nez v0, :cond_2

    .line 630
    const-string v1, "bookmark.port"

    const/4 v3, -0x1

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_2

    move v0, v2

    :cond_2
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 648
    iget v0, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 650
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 651
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 653
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    .line 657
    :cond_0
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 658
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->verifySettings(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 662
    sget v1, Lcom/freerdp/freerdpcore/R$string;->error_bookmark_incomplete_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->error_bookmark_incomplete:I

    .line 663
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->cancel:I

    new-instance v2, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$2;

    invoke-direct {v2, p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$2;-><init>(Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;)V

    .line 664
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->cont:I

    new-instance v2, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$1;

    invoke-direct {v2, p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$1;-><init>(Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;)V

    .line 672
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 688
    :cond_1
    sget-boolean v0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->new_bookmark:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->settings_changed:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 739
    :cond_2
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->finishAndResetBookmark()V

    goto :goto_1

    .line 690
    :cond_3
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    sget v1, Lcom/freerdp/freerdpcore/R$string;->dlg_title_save_bookmark:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->dlg_save_bookmark:I

    .line 692
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->yes:I

    new-instance v2, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$4;

    invoke-direct {v2, p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$4;-><init>(Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;)V

    .line 693
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/freerdp/freerdpcore/R$string;->no:I

    new-instance v2, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$3;

    invoke-direct {v2, p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity$3;-><init>(Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;)V

    .line 727
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    .line 70
    const-string v0, "TEMP"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 73
    sget-object v1, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 80
    const-string v4, "conRef"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isManualBookmarkReference(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-static {}, Lcom/freerdp/freerdpcore/application/GlobalApp;->getManualBookmarkGateway()Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;

    move-result-object v4

    .line 86
    invoke-static {v1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getManualBookmarkId(Ljava/lang/String;)J

    move-result-wide v5

    .line 85
    invoke-virtual {v4, v5, v6}, Lcom/freerdp/freerdpcore/services/ManualBookmarkGateway;->findById(J)Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v1

    sput-object v1, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 87
    sput-boolean v0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->new_bookmark:Z

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isHostnameReference(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    new-instance v4, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-direct {v4}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;-><init>()V

    sput-object v4, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 92
    invoke-virtual {v4}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v4

    check-cast v4, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    .line 93
    invoke-static {v1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v4, v5}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setLabel(Ljava/lang/String;)V

    .line 94
    sget-object v4, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {v4}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v4

    check-cast v4, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    .line 95
    invoke-static {v1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v4, v1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;->setHostname(Ljava/lang/String;)V

    .line 96
    sput-boolean v3, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->new_bookmark:Z

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->isFileReference(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    invoke-static {v1}, Lcom/freerdp/freerdpcore/domain/ConnectionReference;->getFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v4, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-direct {v4}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;-><init>()V

    sput-object v4, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 103
    invoke-virtual {v4, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setLabel(Ljava/lang/String;)V

    .line 107
    :try_start_0
    new-instance v4, Lcom/freerdp/freerdpcore/utils/RDPFileParser;

    invoke-direct {v4, v1}, Lcom/freerdp/freerdpcore/utils/RDPFileParser;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object v5, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    check-cast v5, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-direct {p0, v5, v4}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->updateBookmarkFromFile(Lcom/freerdp/freerdpcore/domain/ManualBookmark;Lcom/freerdp/freerdpcore/utils/RDPFileParser;)V

    .line 110
    sget-object v4, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setLabel(Ljava/lang/String;)V

    .line 111
    sput-boolean v3, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->new_bookmark:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 115
    const-string v4, "BookmarkActivity"

    const-string v5, "Failed reading RDP file"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :cond_2
    :goto_0
    sget-object v1, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    if-nez v1, :cond_3

    .line 123
    new-instance v1, Lcom/freerdp/freerdpcore/domain/ManualBookmark;

    invoke-direct {v1}, Lcom/freerdp/freerdpcore/domain/ManualBookmark;-><init>()V

    sput-object v1, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 126
    :cond_3
    iget v1, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    .line 127
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getType()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 130
    const-string v4, "bookmark.enable_gateway"

    invoke-virtual {p0, v4}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    const-string v4, "bookmark.gateway"

    invoke-virtual {p0, v4}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    :cond_4
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->updateH264Preferences()V

    .line 137
    sget-object v1, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmark:Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->writeToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 140
    sput-boolean v0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->settings_changed:Z

    .line 144
    :cond_5
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    .line 149
    :cond_6
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences://screen_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->screen_settings:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    const/4 v0, 0x3

    .line 152
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    goto/16 :goto_2

    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences://performance_flags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 156
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->performance_flags:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    const/4 v0, 0x4

    .line 157
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    goto/16 :goto_2

    .line 159
    :cond_8
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences://screen_settings_3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->screen_settings_3g:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    const/4 v0, 0x6

    .line 162
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    goto/16 :goto_2

    .line 164
    :cond_9
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences://performance_flags_3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 166
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->performance_flags_3g:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    const/4 v0, 0x7

    .line 167
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    goto/16 :goto_2

    .line 169
    :cond_a
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences://advanced_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->advanced_settings:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    .line 172
    iput v2, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    goto :goto_2

    .line 174
    :cond_b
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences://credentials_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->credentials_settings:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    const/4 v0, 0x2

    .line 177
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    goto :goto_2

    .line 179
    :cond_c
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences://gateway_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 181
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->gateway_settings:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    const/16 v0, 0x8

    .line 182
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    goto :goto_2

    .line 184
    :cond_d
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences://debug_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->debug_settings:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    const/16 v0, 0x9

    .line 187
    iput v0, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    goto :goto_2

    .line 191
    :cond_e
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->bookmark_settings:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    .line 192
    iput v3, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    goto :goto_2

    .line 146
    :cond_f
    :goto_1
    sget v0, Lcom/freerdp/freerdpcore/R$xml;->bookmark_settings:I

    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->addPreferencesFromResource(I)V

    .line 147
    iput v3, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    .line 196
    :goto_2
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->initSettings(Landroid/content/SharedPreferences;)V

    .line 200
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 203
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->setIntentComponentNames()V

    .line 205
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->updateH264Preferences()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 304
    sput-boolean v0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->settings_changed:Z

    .line 305
    iget v1, p0, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->current_preferences:I

    if-eq v1, v0, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->debugSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->gatewaySettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->advancedSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->screenSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->credentialsSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/freerdp/freerdpcore/presentation/BookmarkActivity;->bookmarkSettingsChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
