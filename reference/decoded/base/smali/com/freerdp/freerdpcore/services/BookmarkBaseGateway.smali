.class public abstract Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;
.super Ljava/lang/Object;
.source "BookmarkBaseGateway.java"


# static fields
.field private static final JOIN_PREFIX:Ljava/lang/String; = "join_"

.field private static final KEY_BOOKMARK_ID:Ljava/lang/String; = "bookmarkId"

.field private static final KEY_PERFORMANCE_COMPOSITION:Ljava/lang/String; = "performanceDesktopComposition"

.field private static final KEY_PERFORMANCE_COMPOSITION_3G:Ljava/lang/String; = "performanceDesktopComposition3G"

.field private static final KEY_PERFORMANCE_DRAG:Ljava/lang/String; = "performanceFullWindowDrag"

.field private static final KEY_PERFORMANCE_DRAG_3G:Ljava/lang/String; = "performanceFullWindowDrag3G"

.field private static final KEY_PERFORMANCE_FONTS:Ljava/lang/String; = "performanceFontSmoothing"

.field private static final KEY_PERFORMANCE_FONTS_3G:Ljava/lang/String; = "performanceFontSmoothing3G"

.field private static final KEY_PERFORMANCE_GFX:Ljava/lang/String; = "performanceGfx"

.field private static final KEY_PERFORMANCE_GFX_3G:Ljava/lang/String; = "performanceGfx3G"

.field private static final KEY_PERFORMANCE_H264:Ljava/lang/String; = "performanceGfxH264"

.field private static final KEY_PERFORMANCE_H264_3G:Ljava/lang/String; = "performanceGfxH2643G"

.field private static final KEY_PERFORMANCE_MENU_ANIMATIONS:Ljava/lang/String; = "performanceMenuAnimations"

.field private static final KEY_PERFORMANCE_MENU_ANIMATIONS_3G:Ljava/lang/String; = "performanceMenuAnimations3G"

.field private static final KEY_PERFORMANCE_RFX:Ljava/lang/String; = "performanceRemoteFX"

.field private static final KEY_PERFORMANCE_RFX_3G:Ljava/lang/String; = "performanceRemoteFX3G"

.field private static final KEY_PERFORMANCE_THEME:Ljava/lang/String; = "performanceTheming"

.field private static final KEY_PERFORMANCE_THEME_3G:Ljava/lang/String; = "performanceTheming3G"

.field private static final KEY_PERFORMANCE_WALLPAPER:Ljava/lang/String; = "performanceWallpaper"

.field private static final KEY_PERFORMANCE_WALLPAPER_3G:Ljava/lang/String; = "performanceWallpaper3G"

.field private static final KEY_SCREEN_COLORS:Ljava/lang/String; = "screenColors"

.field private static final KEY_SCREEN_COLORS_3G:Ljava/lang/String; = "screenColors3G"

.field private static final KEY_SCREEN_HEIGHT:Ljava/lang/String; = "screenHeight"

.field private static final KEY_SCREEN_HEIGHT_3G:Ljava/lang/String; = "screenHeight3G"

.field private static final KEY_SCREEN_RESOLUTION:Ljava/lang/String; = "screenResolution"

.field private static final KEY_SCREEN_RESOLUTION_3G:Ljava/lang/String; = "screenResolution3G"

.field private static final KEY_SCREEN_WIDTH:Ljava/lang/String; = "screenWidth"

.field private static final KEY_SCREEN_WIDTH_3G:Ljava/lang/String; = "screenWidth3G"

.field private static final TAG:Ljava/lang/String; = "BookmarkBaseGateway"


# instance fields
.field private bookmarkDB:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->bookmarkDB:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private addBookmarkColumns(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "._id bookmarkId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v0, "label"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v0, "username"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v0, "domain"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v0, "enable_3g_settings"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v0, "redirect_sdcard"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v0, "redirect_sound"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v0, "redirect_microphone"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v0, "security"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v0, "console_mode"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v0, "remote_program"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v0, "work_dir"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v0, "debug_level"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v0, "async_channel"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v0, "async_update"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v0, "async_input"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->addBookmarkSpecificColumns(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addPerformanceFlags3GColumns(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 384
    const-string v0, "join_performance_3g.perf_remotefx as performanceRemoteFX3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v0, "join_performance_3g.perf_gfx as performanceGfx3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v0, "join_performance_3g.perf_gfx_h264 as performanceGfxH2643G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v0, "join_performance_3g.perf_wallpaper as performanceWallpaper3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v0, "join_performance_3g.perf_theming as performanceTheming3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const-string v0, "join_performance_3g.perf_full_window_drag as performanceFullWindowDrag3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const-string v0, "join_performance_3g.perf_menu_animations as performanceMenuAnimations3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    const-string v0, "join_performance_3g.perf_font_smoothing as performanceFontSmoothing3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v0, "join_performance_3g.perf_desktop_composition performanceDesktopComposition3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPerformanceFlagsColumns(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 349
    const-string v0, "join_performance_flags.perf_remotefx as performanceRemoteFX"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v0, "join_performance_flags.perf_gfx as performanceGfx"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v0, "join_performance_flags.perf_gfx_h264 as performanceGfxH264"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v0, "join_performance_flags.perf_wallpaper as performanceWallpaper"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    const-string v0, "join_performance_flags.perf_theming as performanceTheming"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v0, "join_performance_flags.perf_full_window_drag as performanceFullWindowDrag"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v0, "join_performance_flags.perf_menu_animations as performanceMenuAnimations"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v0, "join_performance_flags.perf_font_smoothing as performanceFontSmoothing"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    const-string v0, "join_performance_flags.perf_desktop_composition performanceDesktopComposition"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addScreenSettings3GColumns(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 372
    const-string v0, "join_screen_3g.colors as screenColors3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v0, "join_screen_3g.resolution as screenResolution3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v0, "join_screen_3g.width as screenWidth3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v0, "join_screen_3g.height as screenHeight3G"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addScreenSettingsColumns(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 337
    const-string v0, "join_screen_settings.colors as screenColors"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v0, "join_screen_settings.resolution as screenResolution"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v0, "join_screen_settings.width as screenWidth"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v0, "join_screen_settings.height as screenHeight"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private fillPerformanceFlagsContentValues(Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;Landroid/content/ContentValues;)V
    .locals 2

    .line 526
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getRemoteFX()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "perf_remotefx"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 527
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getGfx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "perf_gfx"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 528
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getH264()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "perf_gfx_h264"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 529
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getWallpaper()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "perf_wallpaper"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 530
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getTheming()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "perf_theming"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 531
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getFullWindowDrag()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "perf_full_window_drag"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 532
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getMenuAnimations()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "perf_menu_animations"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 533
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getFontSmoothing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "perf_font_smoothing"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 534
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getDesktopComposition()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "perf_desktop_composition"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private fillScreenSettingsContentValues(Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;Landroid/content/ContentValues;)V
    .locals 2

    .line 517
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getColors()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "colors"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getResolution()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "resolution"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->bookmarkDB:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->bookmarkDB:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->bookmarkDB:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private insertPerformanceFlags(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;)J
    .locals 2

    .line 568
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 569
    invoke-direct {p0, p2, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->fillPerformanceFlagsContentValues(Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;Landroid/content/ContentValues;)V

    .line 570
    const-string p2, "tbl_performance_flags"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method private insertScreenSettings(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;)J
    .locals 2

    .line 539
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 540
    invoke-direct {p0, p2, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->fillScreenSettingsContentValues(Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;Landroid/content/ContentValues;)V

    .line 541
    const-string p2, "tbl_screen_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method private readPerformanceFlags(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V
    .locals 3

    .line 468
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getPerformanceFlags()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object p1

    .line 469
    const-string v0, "performanceRemoteFX"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setRemoteFX(Z)V

    .line 470
    const-string v0, "performanceGfx"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setGfx(Z)V

    .line 471
    const-string v0, "performanceGfxH264"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setH264(Z)V

    .line 472
    const-string v0, "performanceWallpaper"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setWallpaper(Z)V

    .line 474
    const-string v0, "performanceTheming"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setTheming(Z)V

    .line 475
    const-string v0, "performanceFullWindowDrag"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFullWindowDrag(Z)V

    .line 477
    const-string v0, "performanceMenuAnimations"

    .line 478
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    .line 477
    :goto_6
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setMenuAnimations(Z)V

    .line 479
    const-string v0, "performanceFontSmoothing"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFontSmoothing(Z)V

    .line 481
    const-string v0, "performanceDesktopComposition"

    .line 482
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    .line 481
    :goto_8
    invoke-virtual {p1, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setDesktopComposition(Z)V

    return-void
.end method

.method private readPerformanceFlags3G(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V
    .locals 3

    .line 497
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object p1

    .line 498
    const-string v0, "performanceRemoteFX3G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setRemoteFX(Z)V

    .line 499
    const-string v0, "performanceGfx3G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setGfx(Z)V

    .line 500
    const-string v0, "performanceGfxH2643G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setH264(Z)V

    .line 501
    const-string v0, "performanceWallpaper3G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setWallpaper(Z)V

    .line 503
    const-string v0, "performanceTheming3G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setTheming(Z)V

    .line 504
    const-string v0, "performanceFullWindowDrag3G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFullWindowDrag(Z)V

    .line 506
    const-string v0, "performanceMenuAnimations3G"

    .line 507
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    .line 506
    :goto_6
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setMenuAnimations(Z)V

    .line 508
    const-string v0, "performanceFontSmoothing3G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFontSmoothing(Z)V

    .line 510
    const-string v0, "performanceDesktopComposition3G"

    .line 511
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    .line 510
    :goto_8
    invoke-virtual {p1, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setDesktopComposition(Z)V

    return-void
.end method

.method private readScreenSettings(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V
    .locals 1

    .line 459
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object p1

    .line 460
    const-string v0, "screenColors"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setColors(I)V

    .line 461
    const-string v0, "screenResolution"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setResolution(I)V

    .line 462
    const-string v0, "screenWidth"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setWidth(I)V

    .line 463
    const-string v0, "screenHeight"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setHeight(I)V

    return-void
.end method

.method private readScreenSettings3G(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V
    .locals 1

    .line 487
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object p1

    .line 488
    const-string v0, "screenColors3G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setColors(I)V

    .line 489
    const-string v0, "screenResolution3G"

    .line 490
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 489
    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setResolution(I)V

    .line 491
    const-string v0, "screenWidth3G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setWidth(I)V

    .line 492
    const-string v0, "screenHeight3G"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setHeight(I)V

    return-void
.end method

.method private updatePerformanceFlags(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z
    .locals 4

    .line 575
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 576
    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getPerformanceFlags()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->fillPerformanceFlagsContentValues(Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;Landroid/content/ContentValues;)V

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id IN (SELECT performance_flags FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE _id =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 580
    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ");"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 581
    const-string v1, "tbl_performance_flags"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private updatePerformanceFlags3G(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z
    .locals 4

    .line 586
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 587
    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->fillPerformanceFlagsContentValues(Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;Landroid/content/ContentValues;)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id IN (SELECT performance_3g FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE _id =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ");"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 593
    const-string v1, "tbl_performance_flags"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private updateScreenSettings(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z
    .locals 4

    .line 546
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 547
    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->fillScreenSettingsContentValues(Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;Landroid/content/ContentValues;)V

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id IN (SELECT screen_settings FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE _id =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 551
    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ");"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 552
    const-string v1, "tbl_screen_settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private updateScreenSettings3G(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z
    .locals 4

    .line 557
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 558
    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->fillScreenSettingsContentValues(Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;Landroid/content/ContentValues;)V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id IN (SELECT screen_3g FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE _id =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 562
    invoke-virtual {p2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ");"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 563
    const-string v1, "tbl_screen_settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method


# virtual methods
.method protected abstract addBookmarkSpecificColumns(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/content/ContentValues;)V
.end method

.method protected abstract addBookmarkSpecificColumns(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract createBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;
.end method

.method public delete(J)V
    .locals 4

    .line 197
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public findAll()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 253
    const-string v1, "label"

    invoke-virtual {p0, v0, v1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->queryBookmarks(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v1, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p0, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkFromCursor(Landroid/database/Cursor;)Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public findById(J)Lcom/freerdp/freerdpcore/domain/BookmarkBase;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->queryBookmarks(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 205
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 211
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 212
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkFromCursor(Landroid/database/Cursor;)Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object p2

    .line 213
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public findByLabel(Ljava/lang/String;)Lcom/freerdp/freerdpcore/domain/BookmarkBase;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "label = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "label"

    invoke-virtual {p0, p1, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->queryBookmarks(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 221
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 222
    const-string v0, "BookmarkBaseGateway"

    const-string v1, "More than one bookmark with the same label found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 226
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkFromCursor(Landroid/database/Cursor;)Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public findByLabelLike(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "label LIKE \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "%\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "label"

    .line 235
    invoke-virtual {p0, p1, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->queryBookmarks(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkFromCursor(Landroid/database/Cursor;)Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method protected getBookmarkFromCursor(Landroid/database/Cursor;)Lcom/freerdp/freerdpcore/domain/BookmarkBase;
    .locals 5

    .line 409
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->createBookmark()Lcom/freerdp/freerdpcore/domain/BookmarkBase;

    move-result-object v0

    .line 410
    const-string v1, "bookmarkId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setId(J)V

    .line 411
    const-string v1, "label"

    .line 412
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setLabel(Ljava/lang/String;)V

    .line 413
    const-string v1, "username"

    .line 414
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setUsername(Ljava/lang/String;)V

    .line 415
    const-string v1, "password"

    .line 416
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setPassword(Ljava/lang/String;)V

    .line 417
    const-string v1, "domain"

    .line 418
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->setDomain(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, v0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->readScreenSettings(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V

    .line 420
    invoke-direct {p0, v0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->readPerformanceFlags(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V

    .line 423
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    const-string v2, "enable_3g_settings"

    .line 424
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 423
    :goto_0
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setEnable3GSettings(Z)V

    .line 425
    invoke-direct {p0, v0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->readScreenSettings3G(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V

    .line 426
    invoke-direct {p0, v0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->readPerformanceFlags3G(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V

    .line 427
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    const-string v2, "redirect_sdcard"

    .line 428
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    .line 427
    :goto_1
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRedirectSDCard(Z)V

    .line 429
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    const-string v2, "redirect_sound"

    .line 430
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 429
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRedirectSound(I)V

    .line 431
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    const-string v2, "redirect_microphone"

    .line 432
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    .line 431
    :goto_2
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRedirectMicrophone(Z)V

    .line 434
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    const-string v2, "security"

    .line 435
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 434
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setSecurity(I)V

    .line 436
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    const-string v2, "console_mode"

    .line 437
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    move v2, v3

    .line 436
    :goto_3
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setConsoleMode(Z)V

    .line 438
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    const-string v2, "remote_program"

    .line 439
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRemoteProgram(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v1

    const-string v2, "work_dir"

    .line 441
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setWorkDir(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v1

    const-string v2, "async_channel"

    .line 444
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v3

    .line 443
    :goto_4
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->setAsyncChannel(Z)V

    .line 445
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v1

    const-string v2, "async_input"

    .line 446
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    move v2, v4

    goto :goto_5

    :cond_5
    move v2, v3

    .line 445
    :goto_5
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->setAsyncInput(Z)V

    .line 447
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v1

    const-string v2, "async_update"

    .line 448
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_6

    move v3, v4

    .line 447
    :cond_6
    invoke-virtual {v1, v3}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->setAsyncUpdate(Z)V

    .line 449
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v1

    const-string v2, "debug_level"

    .line 450
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {v1, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->setDebugLevel(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0, v0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->readBookmarkSpecificColumns(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected abstract getBookmarkTableName()Ljava/lang/String;
.end method

.method public insert(Lcom/freerdp/freerdpcore/domain/BookmarkBase;)V
    .locals 5

    .line 80
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 84
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 85
    const-string v2, "label"

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "username"

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "password"

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "domain"

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->insertScreenSettings(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;)J

    move-result-wide v2

    .line 91
    const-string v4, "screen_settings"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getPerformanceFlags()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->insertPerformanceFlags(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;)J

    move-result-wide v2

    .line 93
    const-string v4, "performance_flags"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getEnable3GSettings()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 96
    const-string v3, "enable_3g_settings"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->insertScreenSettings(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;)J

    move-result-wide v2

    .line 100
    const-string v4, "screen_3g"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->insertPerformanceFlags(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;)J

    move-result-wide v2

    .line 102
    const-string v4, "performance_3g"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectSDCard()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 103
    const-string v3, "redirect_sdcard"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectSound()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    const-string v3, "redirect_sound"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectMicrophone()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 107
    const-string v3, "redirect_microphone"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 110
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getSecurity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 109
    const-string v3, "security"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getConsoleMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 111
    const-string v3, "console_mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRemoteProgram()Ljava/lang/String;

    move-result-object v2

    .line 113
    const-string v3, "remote_program"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getWorkDir()Ljava/lang/String;

    move-result-object v2

    .line 115
    const-string v3, "work_dir"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncChannel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 118
    const-string v3, "async_channel"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncInput()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 120
    const-string v3, "async_input"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncUpdate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 122
    const-string v3, "async_update"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 125
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getDebugLevel()Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v3, "debug_level"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1, v1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->addBookmarkSpecificColumns(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/content/ContentValues;)V

    .line 131
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkTableName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 133
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method protected queryBookmarks(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->addBookmarkColumns(Ljava/util/ArrayList;)V

    .line 294
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->addScreenSettingsColumns(Ljava/util/ArrayList;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->addPerformanceFlagsColumns(Ljava/util/ArrayList;)V

    .line 296
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->addScreenSettings3GColumns(Ljava/util/ArrayList;)V

    .line 297
    invoke-direct {p0, v0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->addPerformanceFlags3GColumns(Ljava/util/ArrayList;)V

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 300
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 302
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 303
    const-string v3, "tbl_manual_bookmarks INNER JOIN tbl_screen_settings AS join_screen_settings ON join_screen_settings._id = tbl_manual_bookmarks.screen_settings INNER JOIN tbl_performance_flags AS join_performance_flags ON join_performance_flags._id = tbl_manual_bookmarks.performance_flags INNER JOIN tbl_screen_settings AS join_screen_3g ON join_screen_3g._id = tbl_manual_bookmarks.screen_3g INNER JOIN tbl_performance_flags AS join_performance_3g ON join_performance_3g._id = tbl_manual_bookmarks.performance_3g"

    const/4 v6, 0x0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 305
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected abstract readBookmarkSpecificColumns(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/database/Cursor;)V
.end method

.method public update(Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z
    .locals 6

    .line 139
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 143
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 144
    const-string v2, "label"

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "username"

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "password"

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "domain"

    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, v0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->updateScreenSettings(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z

    .line 150
    invoke-direct {p0, v0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->updatePerformanceFlags(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z

    .line 154
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getEnable3GSettings()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 153
    const-string v3, "enable_3g_settings"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 156
    invoke-direct {p0, v0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->updateScreenSettings3G(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z

    .line 157
    invoke-direct {p0, v0, p1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->updatePerformanceFlags3G(Landroid/database/sqlite/SQLiteDatabase;Lcom/freerdp/freerdpcore/domain/BookmarkBase;)Z

    .line 159
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectSDCard()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 158
    const-string v3, "redirect_sdcard"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectSound()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 160
    const-string v3, "redirect_sound"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectMicrophone()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 162
    const-string v3, "redirect_microphone"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 165
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getSecurity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 164
    const-string v3, "security"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getConsoleMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 166
    const-string v3, "console_mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRemoteProgram()Ljava/lang/String;

    move-result-object v2

    .line 168
    const-string v3, "remote_program"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getWorkDir()Ljava/lang/String;

    move-result-object v2

    .line 170
    const-string v3, "work_dir"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncChannel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 173
    const-string v3, "async_channel"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 176
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncInput()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 175
    const-string v3, "async_input"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 178
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncUpdate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 177
    const-string v3, "async_update"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getDebugLevel()Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v3, "debug_level"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p1, v1}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->addBookmarkSpecificColumns(Lcom/freerdp/freerdpcore/domain/BookmarkBase;Landroid/content/ContentValues;)V

    .line 185
    invoke-virtual {p0}, Lcom/freerdp/freerdpcore/services/BookmarkBaseGateway;->getBookmarkTableName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 185
    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 189
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 190
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v1
.end method
