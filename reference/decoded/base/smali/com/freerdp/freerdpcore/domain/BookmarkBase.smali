.class public Lcom/freerdp/freerdpcore/domain/BookmarkBase;
.super Ljava/lang/Object;
.source "BookmarkBase.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;,
        Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;,
        Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;,
        Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CUSTOM_BASE:I = 0x3e8

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_MANUAL:I = 0x1

.field public static final TYPE_PLACEHOLDER:I = 0x3

.field public static final TYPE_QUICKCONNECT:I = 0x2


# instance fields
.field private advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

.field private debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

.field private domain:Ljava/lang/String;

.field private id:J

.field private label:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

.field private screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

.field protected type:I

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$1;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$1;-><init>()V

    sput-object v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-direct {p0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->type:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->id:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->label:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->username:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->password:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->domain:Ljava/lang/String;

    .line 60
    const-class v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    .line 61
    const-class v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    .line 62
    const-class v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 63
    const-class v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->type:I

    const-wide/16 v0, -0x1

    .line 74
    iput-wide v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->id:J

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->label:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->username:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->password:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->domain:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;-><init>()V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    .line 81
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;-><init>()V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    .line 82
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;-><init>()V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 83
    new-instance v0, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    invoke-direct {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;-><init>()V

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 368
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get()Lcom/freerdp/freerdpcore/domain/BookmarkBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/freerdp/freerdpcore/domain/BookmarkBase;",
            ">()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public getActivePerformanceFlags()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;
    .locals 1

    .line 195
    sget-boolean v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->ConnectedTo3G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getEnable3GSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    :goto_0
    return-object v0
.end method

.method public getActiveScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;
    .locals 1

    .line 188
    sget-boolean v0, Lcom/freerdp/freerdpcore/application/GlobalApp;->ConnectedTo3G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getEnable3GSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    :goto_0
    return-object v0
.end method

.method public getAdvancedSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    return-object v0
.end method

.method public getDebugSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->id:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPerformanceFlags()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    return-object v0
.end method

.method public getScreenSettings()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->type:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->username:Ljava/lang/String;

    return-object v0
.end method

.method public readFromSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 9

    .line 295
    const-string v0, "bookmark.label"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->label:Ljava/lang/String;

    .line 296
    const-string v0, "bookmark.username"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->username:Ljava/lang/String;

    .line 297
    const-string v0, "bookmark.password"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->password:Ljava/lang/String;

    .line 298
    const-string v0, "bookmark.domain"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->domain:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    const-string v2, "bookmark.colors"

    const/16 v3, 0x10

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setColors(I)V

    .line 301
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    const-string v2, "bookmark.resolution"

    const-string v4, "automatic"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    const-string v5, "bookmark.width"

    const/16 v6, 0x320

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 303
    const-string v7, "bookmark.height"

    const/16 v8, 0x258

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 301
    invoke-virtual {v0, v2, v5, v7}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setResolution(Ljava/lang/String;II)V

    .line 305
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    const-string v2, "bookmark.perf_remotefx"

    const/4 v5, 0x0

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setRemoteFX(Z)V

    .line 306
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    const-string v2, "bookmark.perf_gfx"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setGfx(Z)V

    .line 307
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    const-string v2, "bookmark.perf_gfx_h264"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setH264(Z)V

    .line 308
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    const-string v2, "bookmark.perf_wallpaper"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setWallpaper(Z)V

    .line 309
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    const-string v2, "bookmark.perf_font_smoothing"

    .line 310
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 309
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFontSmoothing(Z)V

    .line 311
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    const-string v2, "bookmark.perf_desktop_composition"

    .line 312
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 311
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setDesktopComposition(Z)V

    .line 313
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    const-string v2, "bookmark.perf_window_dragging"

    .line 314
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 313
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFullWindowDrag(Z)V

    .line 315
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    const-string v2, "bookmark.perf_menu_animation"

    .line 316
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 315
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setMenuAnimations(Z)V

    .line 317
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    const-string v2, "bookmark.perf_themes"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setTheming(Z)V

    .line 319
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    const-string v2, "bookmark.enable_3g_settings"

    .line 320
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 319
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setEnable3GSettings(Z)V

    .line 322
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    const-string v2, "bookmark.colors_3g"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setColors(I)V

    .line 323
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    const-string v2, "bookmark.resolution_3g"

    .line 324
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bookmark.width_3g"

    .line 325
    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "bookmark.height_3g"

    .line 326
    invoke-interface {p1, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 323
    invoke-virtual {v0, v2, v3, v4}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->setResolution(Ljava/lang/String;II)V

    .line 328
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    const-string v2, "bookmark.perf_remotefx_3g"

    .line 329
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 328
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setRemoteFX(Z)V

    .line 330
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    const-string v2, "bookmark.perf_gfx_3g"

    .line 331
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 330
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setGfx(Z)V

    .line 332
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    const-string v2, "bookmark.perf_gfx_h264_3g"

    .line 333
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 332
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setH264(Z)V

    .line 334
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    const-string v2, "bookmark.perf_wallpaper_3g"

    .line 335
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 334
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setWallpaper(Z)V

    .line 336
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    const-string v2, "bookmark.perf_font_smoothing_3g"

    .line 337
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 336
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFontSmoothing(Z)V

    .line 338
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    const-string v2, "bookmark.perf_desktop_composition_3g"

    .line 339
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 338
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setDesktopComposition(Z)V

    .line 340
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    const-string v2, "bookmark.perf_window_dragging_3g"

    .line 341
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 340
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setFullWindowDrag(Z)V

    .line 342
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    const-string v2, "bookmark.perf_menu_animation_3g"

    .line 343
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 342
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setMenuAnimations(Z)V

    .line 344
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    const-string v2, "bookmark.perf_themes_3g"

    .line 345
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 344
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->setTheming(Z)V

    .line 347
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    const-string v2, "bookmark.redirect_sdcard"

    .line 348
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 347
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRedirectSDCard(Z)V

    .line 349
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    const-string v2, "bookmark.redirect_sound"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRedirectSound(I)V

    .line 350
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    const-string v2, "bookmark.redirect_microphone"

    .line 351
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 350
    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRedirectMicrophone(Z)V

    .line 352
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    const-string v2, "bookmark.security"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setSecurity(I)V

    .line 353
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    const-string v2, "bookmark.remote_program"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setRemoteProgram(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    const-string v2, "bookmark.work_dir"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setWorkDir(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    const-string v1, "bookmark.console_mode"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->setConsoleMode(Z)V

    .line 357
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    const-string v1, "bookmark.async_channel"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->setAsyncChannel(Z)V

    .line 358
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    const-string v1, "bookmark.async_input"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->setAsyncInput(Z)V

    .line 359
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    const-string v1, "bookmark.async_update"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->setAsyncUpdate(Z)V

    .line 360
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    const-string v1, "bookmark.debug_level"

    const-string v2, "INFO"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->setDebugLevel(Ljava/lang/String;)V

    return-void
.end method

.method public setAdvancedSettings(Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    return-void
.end method

.method public setDebugSettings(Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->domain:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->id:J

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->label:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->password:Ljava/lang/String;

    return-void
.end method

.method public setPerformanceFlags(Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    return-void
.end method

.method public setScreenSettings(Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->username:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 207
    iget v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-wide v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 215
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 217
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public writeToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 224
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 226
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v1, "bookmark.label"

    iget-object v2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->label:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v1, "bookmark.username"

    iget-object v2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->username:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v1, "bookmark.password"

    iget-object v2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->password:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v1, "bookmark.domain"

    iget-object v2, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->domain:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getColors()I

    move-result v1

    const-string v2, "bookmark.colors"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 234
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    .line 235
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getResolutionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v2, "bookmark.resolution"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getWidth()I

    move-result v1

    const-string v2, "bookmark.width"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->screenSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getHeight()I

    move-result v1

    const-string v2, "bookmark.height"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 239
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getRemoteFX()Z

    move-result v1

    const-string v2, "bookmark.perf_remotefx"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 240
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getGfx()Z

    move-result v1

    const-string v2, "bookmark.perf_gfx"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getH264()Z

    move-result v1

    const-string v2, "bookmark.perf_gfx_h264"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 242
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getWallpaper()Z

    move-result v1

    const-string v2, "bookmark.perf_wallpaper"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getFontSmoothing()Z

    move-result v1

    const-string v2, "bookmark.perf_font_smoothing"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    .line 245
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getDesktopComposition()Z

    move-result v1

    .line 244
    const-string v2, "bookmark.perf_desktop_composition"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 246
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getFullWindowDrag()Z

    move-result v1

    const-string v2, "bookmark.perf_window_dragging"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 247
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getMenuAnimations()Z

    move-result v1

    const-string v2, "bookmark.perf_menu_animation"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 248
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->performanceFlags:Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getTheming()Z

    move-result v1

    const-string v2, "bookmark.perf_themes"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 250
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getEnable3GSettings()Z

    move-result v1

    const-string v2, "bookmark.enable_3g_settings"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 252
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getColors()I

    move-result v1

    const-string v2, "bookmark.colors_3g"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 253
    iget-object v1, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 254
    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getResolutionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "bookmark.resolution_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getWidth()I

    move-result v0

    const-string v1, "bookmark.width_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getScreen3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$ScreenSettings;->getHeight()I

    move-result v0

    const-string v1, "bookmark.height_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 259
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getRemoteFX()Z

    move-result v0

    .line 258
    const-string v1, "bookmark.perf_remotefx_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 260
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getGfx()Z

    move-result v0

    const-string v1, "bookmark.perf_gfx_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 261
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 262
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getH264()Z

    move-result v0

    .line 261
    const-string v1, "bookmark.perf_gfx_h264_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 263
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 264
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getWallpaper()Z

    move-result v0

    .line 263
    const-string v1, "bookmark.perf_wallpaper_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 265
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 266
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getFontSmoothing()Z

    move-result v0

    .line 265
    const-string v1, "bookmark.perf_font_smoothing_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 267
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 268
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getDesktopComposition()Z

    move-result v0

    .line 267
    const-string v1, "bookmark.perf_desktop_composition_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 269
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 270
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getFullWindowDrag()Z

    move-result v0

    .line 269
    const-string v1, "bookmark.perf_window_dragging_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 272
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getMenuAnimations()Z

    move-result v0

    .line 271
    const-string v1, "bookmark.perf_menu_animation_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 273
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    .line 274
    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getPerformance3G()Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$PerformanceFlags;->getTheming()Z

    move-result v0

    .line 273
    const-string v1, "bookmark.perf_themes_3g"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 276
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectSDCard()Z

    move-result v0

    const-string v1, "bookmark.redirect_sdcard"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectSound()I

    move-result v0

    const-string v1, "bookmark.redirect_sound"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRedirectMicrophone()Z

    move-result v0

    const-string v1, "bookmark.redirect_microphone"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getSecurity()I

    move-result v0

    const-string v1, "bookmark.security"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 280
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getRemoteProgram()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookmark.remote_program"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getWorkDir()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookmark.work_dir"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->advancedSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$AdvancedSettings;->getConsoleMode()Z

    move-result v0

    const-string v1, "bookmark.console_mode"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncChannel()Z

    move-result v0

    const-string v1, "bookmark.async_channel"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 285
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncInput()Z

    move-result v0

    const-string v1, "bookmark.async_input"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getAsyncUpdate()Z

    move-result v0

    const-string v1, "bookmark.async_update"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    iget-object v0, p0, Lcom/freerdp/freerdpcore/domain/BookmarkBase;->debugSettings:Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;

    invoke-virtual {v0}, Lcom/freerdp/freerdpcore/domain/BookmarkBase$DebugSettings;->getDebugLevel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookmark.debug_level"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
