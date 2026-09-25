.class final Lcom/termux/app/TermuxPreferences;
.super Ljava/lang/Object;
.source "TermuxPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxPreferences$KeyboardShortcut;,
        Lcom/termux/app/TermuxPreferences$AsciiBellBehaviour;
    }
.end annotation


# static fields
.field static final BELL_BEEP:I = 0x2

.field static final BELL_IGNORE:I = 0x3

.field static final BELL_VIBRATE:I = 0x1

.field private static final CURRENT_SESSION_KEY:Ljava/lang/String; = "current_session"

.field private static final FONTSIZE_KEY:Ljava/lang/String; = "fontsize"

.field private static final MAX_FONTSIZE:I = 0x100

.field private static final SCREEN_ALWAYS_ON_KEY:Ljava/lang/String; = "screen_always_on"

.field static final SHORTCUT_ACTION_CREATE_SESSION:I = 0x1

.field static final SHORTCUT_ACTION_NEXT_SESSION:I = 0x2

.field static final SHORTCUT_ACTION_PREVIOUS_SESSION:I = 0x3

.field static final SHORTCUT_ACTION_RENAME_SESSION:I = 0x4

.field private static final SHOW_EXTRA_KEYS_KEY:Ljava/lang/String; = "show_extra_keys"


# instance fields
.field private final MIN_FONTSIZE:I

.field private home_path:Ljava/lang/String;

.field mBackIsEscape:Z

.field mBellBehaviour:I

.field mDisableVolumeVirtualKeys:Z

.field mExtraKeys:Lcom/termux/app/ExtraKeysInfos;

.field private mFontSize:I

.field private mScreenAlwaysOn:Z

.field mShowExtraKeys:Z

.field private mUseDarkUI:Z

.field final shortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/app/TermuxPreferences$KeyboardShortcut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/home"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/app/TermuxPreferences;->home_path:Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxPreferences;->reloadFromProperties(Landroid/content/Context;)V

    .line 94
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 100
    iput v2, p0, Lcom/termux/app/TermuxPreferences;->MIN_FONTSIZE:I

    .line 102
    const-string v2, "show_extra_keys"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    .line 103
    const-string v2, "screen_always_on"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/termux/app/TermuxPreferences;->mScreenAlwaysOn:Z

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr p1, v2

    .line 106
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 108
    rem-int/lit8 v2, p1, 0x2

    if-ne v2, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 111
    :cond_0
    :try_start_0
    const-string v0, "fontsize"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    iput p1, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    .line 115
    :goto_0
    iget p1, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    iget v0, p0, Lcom/termux/app/TermuxPreferences;->MIN_FONTSIZE:I

    const/16 v1, 0x100

    invoke-static {p1, v0, v1}, Lcom/termux/app/TermuxPreferences;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    return-void
.end method

.method static clamp(III)I
    .locals 0

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method static getCurrentSession(Lcom/termux/app/TermuxActivity;)Lcom/termux/terminal/TerminalSession;
    .locals 5

    .line 154
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_session"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 156
    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mTermService:Lcom/termux/app/TermuxService;

    invoke-virtual {v3}, Lcom/termux/app/TermuxService;->getSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/terminal/TerminalSession;

    .line 157
    iget-object v4, v3, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseAction(Ljava/lang/String;ILjava/util/Properties;)V
    .locals 8

    .line 233
    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v0, "\\+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 236
    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    aget-object v0, p3, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 237
    :goto_0
    array-length v3, p3

    const-string v4, "\' is not Ctrl+<something>"

    const-string v5, "Keyboard shortcut \'"

    const-string v6, "termux"

    if-ne v3, v2, :cond_6

    const/4 v3, 0x0

    aget-object p3, p3, v3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v7, "ctrl"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v2, :cond_2

    goto :goto_3

    .line 242
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 244
    invoke-static {p3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    goto :goto_2

    .line 246
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    new-instance v0, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;

    invoke-direct {v0, p3, p2}, Lcom/termux/app/TermuxPreferences$KeyboardShortcut;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 238
    :cond_6
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static storeCurrentSession(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 150
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "current_session"

    iget-object p1, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method changeFontSize(Landroid/content/Context;Z)V
    .locals 2

    .line 129
    iget v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    mul-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    .line 130
    iget p2, p0, Lcom/termux/app/TermuxPreferences;->MIN_FONTSIZE:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    .line 132
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p2, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "fontsize"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method getFontSize()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/termux/app/TermuxPreferences;->mFontSize:I

    return v0
.end method

.method isScreenAlwaysOn()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mScreenAlwaysOn:Z

    return v0
.end method

.method isUsingBlackUI()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mUseDarkUI:Z

    return v0
.end method

.method reloadFromProperties(Landroid/content/Context;)V
    .locals 11

    .line 163
    const-string v0, "default"

    const-string v1, "Error loading props"

    const-string v2, "termux"

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/termux/app/TermuxPreferences;->home_path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.termux/termux.properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 165
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/termux/app/TermuxPreferences;->home_path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.config/termux/termux.properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const/4 v5, 0x1

    .line 169
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 170
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not open properties file termux.properties: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 176
    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_1
    :goto_1
    const-string v3, "bell-character"

    const-string v6, "vibrate"

    invoke-virtual {v4, v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v6, "ignore"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-nez v6, :cond_3

    const-string v6, "beep"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    iput v5, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    goto :goto_2

    .line 181
    :cond_2
    iput v8, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    goto :goto_2

    .line 184
    :cond_3
    iput v7, p0, Lcom/termux/app/TermuxPreferences;->mBellBehaviour:I

    .line 191
    :goto_2
    const-string v3, "use-black-ui"

    const-string v6, ""

    invoke-virtual {v4, v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_5

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v9, 0x20

    if-ne v3, v9, :cond_4

    move v6, v5

    .line 200
    :cond_4
    iput-boolean v6, p0, Lcom/termux/app/TermuxPreferences;->mUseDarkUI:Z

    goto :goto_3

    .line 196
    :cond_5
    iput-boolean v6, p0, Lcom/termux/app/TermuxPreferences;->mUseDarkUI:Z

    goto :goto_3

    .line 193
    :cond_6
    iput-boolean v5, p0, Lcom/termux/app/TermuxPreferences;->mUseDarkUI:Z

    .line 203
    :goto_3
    const-string v3, "[[\'ESC\', \'/\', \'-\', \'HOME\', \'UP\', \'END\', \'PGUP\'], [\'TAB\', \'CTRL\', \'ALT\', \'LEFT\', \'DOWN\', \'RIGHT\', \'PGDN\']]"

    .line 206
    :try_start_5
    const-string v6, "extra-keys"

    invoke-virtual {v4, v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    const-string v9, "extra-keys-style"

    invoke-virtual {v4, v9, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 208
    new-instance v10, Lcom/termux/app/ExtraKeysInfos;

    invoke-direct {v10, v6, v9}, Lcom/termux/app/ExtraKeysInfos;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/termux/app/TermuxPreferences;->mExtraKeys:Lcom/termux/app/ExtraKeysInfos;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v6

    .line 210
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not load the extra-keys property from the config: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :try_start_6
    new-instance v1, Lcom/termux/app/ExtraKeysInfos;

    invoke-direct {v1, v3, v0}, Lcom/termux/app/ExtraKeysInfos;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/termux/app/TermuxPreferences;->mExtraKeys:Lcom/termux/app/ExtraKeysInfos;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 216
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 217
    const-string v0, "Can\'t create default extra keys"

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Lcom/termux/app/TermuxPreferences;->mExtraKeys:Lcom/termux/app/ExtraKeysInfos;

    .line 222
    :goto_4
    const-string p1, "back-key"

    const-string v0, "back"

    invoke-virtual {v4, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "escape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/termux/app/TermuxPreferences;->mBackIsEscape:Z

    .line 223
    const-string p1, "volume-keys"

    const-string v0, "virtual"

    invoke-virtual {v4, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "volume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/termux/app/TermuxPreferences;->mDisableVolumeVirtualKeys:Z

    .line 225
    iget-object p1, p0, Lcom/termux/app/TermuxPreferences;->shortcuts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 226
    const-string p1, "shortcut.create-session"

    invoke-direct {p0, p1, v5, v4}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    .line 227
    const-string p1, "shortcut.next-session"

    invoke-direct {p0, p1, v8, v4}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    .line 228
    const-string p1, "shortcut.previous-session"

    invoke-direct {p0, p1, v7, v4}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    .line 229
    const-string p1, "shortcut.rename-session"

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, v4}, Lcom/termux/app/TermuxPreferences;->parseAction(Ljava/lang/String;ILjava/util/Properties;)V

    return-void
.end method

.method setScreenAlwaysOn(Landroid/content/Context;Z)V
    .locals 1

    .line 145
    iput-boolean p2, p0, Lcom/termux/app/TermuxPreferences;->mScreenAlwaysOn:Z

    .line 146
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "screen_always_on"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method toggleShowExtraKeys(Landroid/content/Context;)Z
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    .line 120
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "show_extra_keys"

    iget-boolean v1, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    iget-boolean p1, p0, Lcom/termux/app/TermuxPreferences;->mShowExtraKeys:Z

    return p1
.end method
