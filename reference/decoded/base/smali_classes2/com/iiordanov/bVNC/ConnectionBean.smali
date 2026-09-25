.class public Lcom/iiordanov/bVNC/ConnectionBean;
.super Lcom/iiordanov/bVNC/AbstractConnectionBean;
.source "ConnectionBean.java"

# interfaces
.implements Lcom/undatech/opaque/Connection;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iiordanov/bVNC/AbstractConnectionBean;",
        "Lcom/undatech/opaque/Connection;",
        "Ljava/lang/Comparable<",
        "Lcom/iiordanov/bVNC/ConnectionBean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectionBean"

.field static c:Landroid/content/Context;

.field public static final newInstance:Lcom/antlersoft/android/dbimpl/NewInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/antlersoft/android/dbimpl/NewInstance<",
            "Lcom/iiordanov/bVNC/ConnectionBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private idHash:Ljava/lang/String;

.field private idHashAlgorithm:I

.field private masterPassword:Ljava/lang/String;

.field protected readyForConnection:Z

.field protected readyToBeSaved:Z

.field private useLastPositionToolbar:Z

.field private useLastPositionToolbarMoved:Z

.field private useLastPositionToolbarX:I

.field private useLastPositionToolbarY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/iiordanov/bVNC/ConnectionBean$1;

    invoke-direct {v0}, Lcom/iiordanov/bVNC/ConnectionBean$1;-><init>()V

    sput-object v0, Lcom/iiordanov/bVNC/ConnectionBean;->newInstance:Lcom/antlersoft/android/dbimpl/NewInstance;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 68
    invoke-direct {p0}, Lcom/iiordanov/bVNC/AbstractConnectionBean;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyForConnection:Z

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyToBeSaved:Z

    .line 70
    const-string v2, "TOUCH_ZOOM_MODE"

    if-eqz p1, :cond_0

    .line 71
    const-string v3, "defaultInputMethod"

    invoke-static {p1, v3, v2}, Lcom/iiordanov/bVNC/Utils;->querySharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 74
    :cond_0
    const-string v3, "ConnectionBean"

    const-string v4, "Failed to query default input method, context is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v3, 0x0

    .line 76
    invoke-virtual {p0, v3, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->set_Id(J)V

    .line 77
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setAddress(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setPassword(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->setKeepPassword(Z)V

    .line 80
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setNickname(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshServer(Ljava/lang/String;)V

    const/16 v4, 0x16

    .line 83
    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPort(I)V

    .line 84
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshUser(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPassword(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setKeepSshPassword(Z)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPubKey(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPrivKey(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPassPhrase(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseSshPubKey(Z)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshHostKey(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshRemoteCommandOS(I)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshRemoteCommandType(I)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshRemoteCommand(Ljava/lang/String;)V

    const/4 v4, 0x5

    .line 95
    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshRemoteCommandTimeout(I)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXType(I)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXCommand(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXEnabled(Z)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXResType(I)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXWidth(I)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXHeight(I)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXSessionProg(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXSessionType(I)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXUnixpw(Z)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXUnixAuth(Z)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setAutoXRandFileNm(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseSshRemoteCommand(Z)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setUserName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpDomain(Ljava/lang/String;)V

    .line 110
    sget v4, Lcom/iiordanov/bVNC/Constants;->DEFAULT_PROTOCOL_PORT:I

    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->setPort(I)V

    .line 111
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setCaCert(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setCaCertPath(Ljava/lang/String;)V

    const/4 v4, -0x1

    .line 113
    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->setTlsPort(I)V

    .line 114
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setCertSubject(Ljava/lang/String;)V

    .line 115
    sget-object v4, Lcom/iiordanov/bVNC/COLORMODEL;->C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v4}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setPrefEncoding(I)V

    .line 117
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->setScaleMode(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setInputMode(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseDpadAsArrows(Z)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRotateDpad(Z)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUsePortrait(Z)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLocalCursor(I)V

    .line 123
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setRepeaterId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->setExtraKeysToggleType(I)V

    const-wide/16 v4, 0x1

    .line 125
    invoke-virtual {p0, v4, v5}, Lcom/iiordanov/bVNC/ConnectionBean;->setMetaListId(J)V

    .line 126
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpResType(I)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpWidth(I)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpHeight(I)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRdpColor(I)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRemoteFx(Z)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setDesktopBackground(Z)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setFontSmoothing(Z)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setDesktopComposition(Z)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setWindowContents(Z)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setMenuAnimation(Z)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setVisualStyles(Z)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setConsoleMode(Z)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRedirectSdCard(Z)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setEnableSound(Z)V

    .line 140
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setEnableRecording(Z)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setRemoteSoundType(I)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setViewOnly(Z)V

    .line 143
    const-string v2, "English (US)"

    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setLayoutMap(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setFilename(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setX509KeySignature(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setIdHash(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/iiordanov/bVNC/Utils;->newScreenshotFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setScreenshotFilename(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setEnableGfx(Z)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setEnableGfxH264(Z)V

    .line 151
    sput-object p1, Lcom/iiordanov/bVNC/ConnectionBean;->c:Landroid/content/Context;

    const/4 p1, 0x2

    .line 154
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->setIdHashAlgorithm(I)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setIdHash(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbar(Z)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbarX(I)V

    .line 160
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbarY(I)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->setUseLastPositionToolbarMoved(Z)V

    return-void
.end method

.method static createLoadFromUri(Landroid/net/Uri;Landroid/content/Context;)Lcom/iiordanov/bVNC/ConnectionBean;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 459
    const-string v2, "Creating connection from URI"

    const-string v3, "ConnectionBean"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v2, Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-direct {v2, v1}, Lcom/iiordanov/bVNC/ConnectionBean;-><init>(Landroid/content/Context;)V

    if-nez v0, :cond_0

    return-object v2

    .line 462
    :cond_0
    new-instance v4, Lcom/iiordanov/bVNC/Database;

    invoke-direct {v4, v1}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 466
    invoke-static/range {p1 .. p1}, Lcom/iiordanov/bVNC/Utils;->getConnectionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x3a

    .line 468
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 472
    :try_start_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v6

    .line 475
    :goto_0
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move v6, v1

    .line 478
    :cond_1
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    int-to-long v5, v6

    invoke-virtual {v2, v0, v5, v6}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_read(Lnet/sqlcipher/database/SQLiteDatabase;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/iiordanov/bVNC/ConnectionBean;->getMostRecent(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/iiordanov/bVNC/MostRecentBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 483
    invoke-virtual {v2}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/iiordanov/bVNC/MostRecentBean;->setConnectionId(J)V

    .line 484
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iiordanov/bVNC/MostRecentBean;->Gen_update(Lnet/sqlcipher/database/SQLiteDatabase;)I

    .line 485
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/Database;->close()V

    :cond_2
    return-object v2

    .line 492
    :cond_3
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/Database;->getReadableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 493
    const-string v7, "ConnectionName"

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    const-string v15, "_id"

    const/16 v16, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_4

    .line 496
    new-array v9, v14, [Ljava/lang/String;

    aput-object v15, v9, v6

    new-array v11, v14, [Ljava/lang/String;

    aput-object v0, v11, v6

    const/4 v13, 0x0

    const/16 v17, 0x0

    const-string v8, "CONNECTION_BEAN"

    const-string v10, "NICKNAME = ?"

    const/4 v12, 0x0

    move-object v7, v1

    move v6, v14

    move-object/from16 v14, v17

    invoke-virtual/range {v7 .. v14}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v7

    goto :goto_1

    :cond_4
    move v6, v14

    move-object/from16 v7, v16

    :goto_1
    if-eqz v7, :cond_5

    .line 497
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 500
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Loding connection info from nickname: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v2, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_columnIndices(Landroid/database/Cursor;)[I

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_populate(Landroid/database/Cursor;[I)V

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 503
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/Database;->close()V

    return-object v2

    :cond_5
    if-eqz v7, :cond_6

    .line 507
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v5, :cond_7

    .line 512
    new-array v8, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v15, v8, v0

    new-array v10, v6, [Ljava/lang/String;

    aput-object v5, v10, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v7, "CONNECTION_BEAN"

    const-string v9, "ADDRESS = ?"

    const/4 v11, 0x0

    move-object v6, v1

    invoke-virtual/range {v6 .. v13}, Lnet/sqlcipher/database/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v16

    :cond_7
    move-object/from16 v0, v16

    if-eqz v0, :cond_8

    .line 513
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 515
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Loding connection info from hostname: %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v2, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_columnIndices(Landroid/database/Cursor;)[I

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_populate(Landroid/database/Cursor;[I)V

    .line 517
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 518
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/Database;->close()V

    return-object v2

    :cond_8
    if-eqz v0, :cond_9

    .line 522
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_9
    invoke-virtual {v4}, Lcom/iiordanov/bVNC/Database;->close()V

    return-object v2
.end method

.method public static getMostRecent(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/iiordanov/bVNC/MostRecentBean;
    .locals 3

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 857
    const-string v1, "MOST_RECENT"

    sget-object v2, Lcom/iiordanov/bVNC/MostRecentBean;->GEN_NEW:Lcom/antlersoft/android/dbimpl/NewInstance;

    invoke-static {p0, v1, v0, v2}, Lcom/iiordanov/bVNC/MostRecentBean;->getAll(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;Ljava/util/Collection;Lcom/antlersoft/android/dbimpl/NewInstance;)V

    .line 858
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 860
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iiordanov/bVNC/MostRecentBean;

    return-object p0
.end method

.method private declared-synchronized save(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 6

    monitor-enter p0

    .line 381
    :try_start_0
    const-string v0, "ConnectionBean"

    const-string v1, "save called with database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_getValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 383
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepSshPassword()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    const-string v1, "SSHPASSWORD"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v1, "SSHPASSPHRASE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getKeepPassword()Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    const-string v1, "PASSWORD"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->isNew()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    const-string v1, "CONNECTION_BEAN"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->set_Id(J)V

    goto :goto_0

    .line 395
    :cond_2
    const-string v1, "CONNECTION_BEAN"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v0, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private saveAndWriteRecent(ZLcom/iiordanov/bVNC/Database;)V
    .locals 2

    .line 878
    const-string p1, "ConnectionBean"

    const-string v0, "saveAndWriteRecent called with database"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {p2}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    .line 885
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    .line 887
    :try_start_0
    invoke-direct {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->save(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 888
    invoke-static {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->getMostRecent(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/iiordanov/bVNC/MostRecentBean;

    move-result-object p2

    if-nez p2, :cond_0

    .line 890
    new-instance p2, Lcom/iiordanov/bVNC/MostRecentBean;

    invoke-direct {p2}, Lcom/iiordanov/bVNC/MostRecentBean;-><init>()V

    .line 891
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/iiordanov/bVNC/MostRecentBean;->setConnectionId(J)V

    .line 892
    invoke-virtual {p2, p1}, Lcom/iiordanov/bVNC/MostRecentBean;->Gen_insert(Lnet/sqlcipher/database/SQLiteDatabase;)Z

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/iiordanov/bVNC/MostRecentBean;->setConnectionId(J)V

    .line 895
    invoke-virtual {p2, p1}, Lcom/iiordanov/bVNC/MostRecentBean;->Gen_update(Lnet/sqlcipher/database/SQLiteDatabase;)I

    .line 897
    :goto_0
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 900
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 902
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 903
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 899
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 900
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 901
    throw p2
.end method


# virtual methods
.method public compareTo(Lcom/iiordanov/bVNC/ConnectionBean;)I
    .locals 2

    .line 829
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getConnectionType()I

    move-result v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->getConnectionType()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    if-nez v0, :cond_1

    .line 834
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 837
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getPort()I

    move-result v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->getPort()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_2
    if-nez v0, :cond_3

    .line 840
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    .line 843
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPort()I

    move-result v0

    invoke-virtual {p1}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPort()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Lcom/iiordanov/bVNC/ConnectionBean;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->compareTo(Lcom/iiordanov/bVNC/ConnectionBean;)I

    move-result p1

    return p1
.end method

.method public getConnectionTypeString()Ljava/lang/String;
    .locals 1

    .line 228
    const-string v0, ""

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdHash()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->idHash:Ljava/lang/String;

    return-object v0
.end method

.method public getIdHashAlgorithm()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->idHashAlgorithm:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 8

    .line 199
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "\n"

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 202
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getPort()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "@"

    if-nez v5, :cond_1

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "SSH "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPort()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOtpCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOvirtCaData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOvirtCaFile()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRuntimeId()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getScaleMode()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getScaleModeAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getUseLastPositionToolbar()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbar:Z

    return v0
.end method

.method public getUseLastPositionToolbarMoved()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarMoved:Z

    return v0
.end method

.method public getUseLastPositionToolbarX()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarX:I

    return v0
.end method

.method public getUseLastPositionToolbarY()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarY:I

    return v0
.end method

.method public getVmname()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAudioPlaybackEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isNew()Z
    .locals 4

    .line 183
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadyForConnection()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyForConnection:Z

    return v0
.end method

.method public isReadyToBeSaved()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyToBeSaved:Z

    return v0
.end method

.method public isRequestingNewDisplayResolution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRotationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSslStrict()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsbEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsingCustomOvirtCa()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isValidPort(I)Z
    .locals 1

    if-lez p1, :cond_1

    const v0, 0xffff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public load(Landroid/content/Context;)V
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->loadFromSharedPreferences(Landroid/content/Context;)V

    return-void
.end method

.method public loadFromSharedPreferences(Landroid/content/Context;)V
    .locals 3

    .line 360
    const-string v0, "ConnectionBean"

    const-string v1, "loadFromSharedPreferences called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 362
    const-string v0, "useLastPositionToolbar"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbar:Z

    .line 363
    const-string v0, "useLastPositionToolbarX"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarX:I

    .line 364
    const-string v0, "useLastPositionToolbarY"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarY:I

    .line 365
    const-string v0, "useLastPositionToolbarMoved"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarMoved:Z

    return-void
.end method

.method public parseFromUri(Landroid/net/Uri;)V
    .locals 10

    .line 528
    const-string v0, "Parsing VNC URI."

    const-string v1, "ConnectionBean"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 530
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyForConnection:Z

    .line 531
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyToBeSaved:Z

    return-void

    .line 535
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 537
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setAddress(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    .line 541
    invoke-static {v4}, Lcom/iiordanov/bVNC/Utils;->isNullOrEmptry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setNickname(Ljava/lang/String;)V

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iiordanov/bVNC/Utils;->isNullOrEmptry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshServer(Ljava/lang/String;)V

    .line 552
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 554
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->isValidPort(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 555
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified VNC port is not valid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 557
    :cond_4
    :goto_0
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setPort(I)V

    .line 560
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 561
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_5

    .line 562
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    .line 565
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    .line 566
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setPassword(Ljava/lang/String;)V

    .line 570
    :cond_6
    const-string v3, "ConnectionName"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 573
    invoke-virtual {p0, v3}, Lcom/iiordanov/bVNC/ConnectionBean;->setNickname(Ljava/lang/String;)V

    .line 576
    :cond_7
    new-instance v3, Lcom/iiordanov/bVNC/ConnectionBean$2;

    invoke-direct {v3, p0}, Lcom/iiordanov/bVNC/ConnectionBean$2;-><init>(Lcom/iiordanov/bVNC/ConnectionBean;)V

    .line 579
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 580
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 582
    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->setUserName(Ljava/lang/String;)V

    .line 587
    :cond_9
    new-instance v3, Lcom/iiordanov/bVNC/ConnectionBean$3;

    invoke-direct {v3, p0}, Lcom/iiordanov/bVNC/ConnectionBean$3;-><init>(Lcom/iiordanov/bVNC/ConnectionBean;)V

    .line 590
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 591
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 594
    invoke-virtual {p0, v4}, Lcom/iiordanov/bVNC/ConnectionBean;->setPassword(Ljava/lang/String;)V

    move v3, v2

    goto :goto_1

    :cond_b
    move v3, v0

    .line 599
    :goto_1
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->setKeepPassword(Z)V

    .line 601
    const-string v4, "SecurityType"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eqz v4, :cond_f

    .line 604
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_e

    if-eq v4, v5, :cond_e

    const/16 v8, 0x17

    if-eq v4, v8, :cond_d

    const/16 v8, 0x18

    if-eq v4, v8, :cond_c

    packed-switch v4, :pswitch_data_0

    .line 626
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified security type is invalid or unsupported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 620
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    goto :goto_2

    :pswitch_1
    const/4 v8, 0x3

    .line 617
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    goto :goto_2

    .line 614
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    goto :goto_2

    .line 611
    :cond_c
    invoke-virtual {p0, v2}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    goto :goto_2

    .line 623
    :cond_d
    invoke-virtual {p0, v6}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    goto :goto_2

    .line 608
    :cond_e
    invoke-virtual {p0, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->setConnectionType(I)V

    goto :goto_2

    :cond_f
    move v4, v0

    .line 631
    :goto_2
    const-string v8, "SshHost"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 633
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshServer(Ljava/lang/String;)V

    .line 636
    :cond_10
    const-string v8, "SshPort"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 638
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 639
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->isValidPort(I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 641
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPort(I)V

    goto :goto_3

    .line 640
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified SSH port is not valid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 644
    :cond_12
    :goto_3
    const-string v8, "SshUsername"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 646
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshUser(Ljava/lang/String;)V

    .line 649
    :cond_13
    const-string v8, "SshPassword"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 651
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->setSshPassword(Ljava/lang/String;)V

    .line 655
    :cond_14
    const-string v8, "IdHashAlgorithm"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 657
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v2, :cond_16

    if-eq v8, v5, :cond_16

    if-ne v8, v7, :cond_15

    goto :goto_4

    .line 666
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified hash algorithm is invalid or unsupported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 662
    :cond_16
    :goto_4
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->setIdHashAlgorithm(I)V

    .line 670
    :cond_17
    const-string v7, "IdHash"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 672
    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setIdHash(Ljava/lang/String;)V

    .line 675
    :cond_18
    const-string v7, "ViewOnly"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 676
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setViewOnly(Z)V

    .line 678
    :cond_19
    const-string v7, "ScaleMode"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 679
    invoke-static {v7}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setScaleMode(Landroid/widget/ImageView$ScaleType;)V

    .line 681
    :cond_1a
    const-string v7, "ExtraKeysToggle"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 682
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setExtraKeysToggleType(I)V

    .line 685
    :cond_1b
    const-string v7, "ColorModel"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 687
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 716
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified color model is invalid or unsupported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :pswitch_3
    sget-object v7, Lcom/iiordanov/bVNC/COLORMODEL;->C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v7}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    goto :goto_5

    .line 709
    :pswitch_4
    sget-object v7, Lcom/iiordanov/bVNC/COLORMODEL;->C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v7}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    goto :goto_5

    .line 706
    :pswitch_5
    sget-object v7, Lcom/iiordanov/bVNC/COLORMODEL;->C24bit:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v7}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    goto :goto_5

    .line 702
    :pswitch_6
    sget-object v7, Lcom/iiordanov/bVNC/COLORMODEL;->C256:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v7}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    goto :goto_5

    .line 699
    :pswitch_7
    sget-object v7, Lcom/iiordanov/bVNC/COLORMODEL;->C64:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v7}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    goto :goto_5

    .line 696
    :pswitch_8
    sget-object v7, Lcom/iiordanov/bVNC/COLORMODEL;->C8:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v7}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    goto :goto_5

    .line 693
    :pswitch_9
    sget-object v7, Lcom/iiordanov/bVNC/COLORMODEL;->C4:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v7}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    goto :goto_5

    .line 690
    :pswitch_a
    sget-object v7, Lcom/iiordanov/bVNC/COLORMODEL;->C2:Lcom/iiordanov/bVNC/COLORMODEL;

    invoke-virtual {v7}, Lcom/iiordanov/bVNC/COLORMODEL;->nameString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->setColorModel(Ljava/lang/String;)V

    .line 719
    :cond_1c
    :goto_5
    const-string v7, "SaveConnection"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 722
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_6

    :cond_1d
    move v7, v2

    .line 726
    :goto_6
    const-string v8, "TlsPort"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1f

    .line 728
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 729
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->isValidPort(I)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 731
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->setTlsPort(I)V

    goto :goto_7

    .line 730
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified TLS port is not valid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 735
    :cond_1f
    :goto_7
    const-string v8, "CaCertPath"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_20

    .line 737
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->setCaCertPath(Ljava/lang/String;)V

    .line 741
    :cond_20
    const-string v8, "CertSubject"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_21

    .line 743
    invoke-virtual {p0, v8}, Lcom/iiordanov/bVNC/ConnectionBean;->setCertSubject(Ljava/lang/String;)V

    .line 747
    :cond_21
    const-string v8, "KeyboardLayout"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 749
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->setLayoutMap(Ljava/lang/String;)V

    :cond_22
    if-eqz v7, :cond_23

    .line 755
    new-instance p1, Lcom/iiordanov/bVNC/Database;

    sget-object v7, Lcom/iiordanov/bVNC/ConnectionBean;->c:Landroid/content/Context;

    invoke-direct {p1, v7}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    .line 756
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/iiordanov/bVNC/ConnectionBean;->save(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 757
    invoke-virtual {p1}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 758
    sget-object p1, Lcom/iiordanov/bVNC/ConnectionBean;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->saveToSharedPreferences(Landroid/content/Context;)V

    .line 759
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyToBeSaved:Z

    .line 766
    :cond_23
    iput-boolean v2, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyForConnection:Z

    .line 767
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->isNullOrEmptry(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 768
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyForConnection:Z

    .line 769
    const-string p1, "URI missing remote address."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_24
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getConnectionType()I

    move-result p1

    if-eq v4, v5, :cond_25

    if-eq p1, v6, :cond_25

    if-ne p1, v2, :cond_26

    .line 779
    :cond_25
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iiordanov/bVNC/Utils;->isNullOrEmptry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    if-nez v3, :cond_26

    .line 780
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyForConnection:Z

    .line 781
    const-string v3, "URI missing base protocol password."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    if-ne p1, v2, :cond_27

    .line 786
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iiordanov/bVNC/Utils;->isNullOrEmptry(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 787
    iput-boolean v0, p0, Lcom/iiordanov/bVNC/ConnectionBean;->readyForConnection:Z

    :cond_27
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public populateFromContentValues(Landroid/content/ContentValues;)V
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->Gen_populate(Landroid/content/ContentValues;)V

    return-void
.end method

.method public declared-synchronized save(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 347
    :try_start_0
    const-string v0, "ConnectionBean"

    const-string v1, "save called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v0, Lcom/iiordanov/bVNC/Database;

    invoke-direct {v0, p1}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->getWritableDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iiordanov/bVNC/ConnectionBean;->save(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 350
    invoke-virtual {v0}, Lcom/iiordanov/bVNC/Database;->close()V

    .line 351
    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->saveToSharedPreferences(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public saveAndWriteRecent(ZLandroid/content/Context;)V
    .locals 5

    .line 864
    const-string v0, "saveAndWriteRecent called"

    const-string v1, "ConnectionBean"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v0, Lcom/iiordanov/bVNC/Database;

    invoke-direct {v0, p2}, Lcom/iiordanov/bVNC/Database;-><init>(Landroid/content/Context;)V

    .line 866
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getConnectionType()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, ""

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-nez p1, :cond_2

    .line 868
    const-string p1, "saveAndWriteRecent not saving"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 871
    :cond_2
    const-string v2, "saveAndWriteRecent saving"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-direct {p0, p1, v0}, Lcom/iiordanov/bVNC/ConnectionBean;->saveAndWriteRecent(ZLcom/iiordanov/bVNC/Database;)V

    .line 873
    invoke-virtual {p0, p2}, Lcom/iiordanov/bVNC/ConnectionBean;->saveToSharedPreferences(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public saveCaToFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public saveToSharedPreferences(Landroid/content/Context;)V
    .locals 2

    .line 369
    const-string v0, "ConnectionBean"

    const-string v1, "saveToSharedPreferences called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->get_Id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 371
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 372
    const-string v0, "useLastPositionToolbar"

    iget-boolean v1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbar:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 373
    const-string v0, "useLastPositionToolbarX"

    iget v1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarX:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 374
    const-string v0, "useLastPositionToolbarY"

    iget v1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarY:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 375
    const-string v0, "useLastPositionToolbarMoved"

    iget-boolean v1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarMoved:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAudioPlaybackEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setConnectionTypeString(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIdHash(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->idHash:Ljava/lang/String;

    return-void
.end method

.method public setIdHashAlgorithm(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->idHashAlgorithm:I

    return-void
.end method

.method public setOtpCode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setOvirtCaData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setOvirtCaFile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRequestingNewDisplayResolution(Z)V
    .locals 0

    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setRuntimeId(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setScaleMode(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 414
    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iiordanov/bVNC/ConnectionBean;->setScaleModeAsString(Ljava/lang/String;)V

    return-void
.end method

.method public setSslStrict(Z)V
    .locals 0

    return-void
.end method

.method public setUsbEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setUseLastPositionToolbar(Z)V
    .locals 0

    .line 424
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbar:Z

    return-void
.end method

.method public setUseLastPositionToolbarMoved(Z)V
    .locals 0

    .line 449
    iput-boolean p1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarMoved:Z

    return-void
.end method

.method public setUseLastPositionToolbarX(I)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarX:I

    return-void
.end method

.method public setUseLastPositionToolbarY(I)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/iiordanov/bVNC/ConnectionBean;->useLastPositionToolbarY:I

    return-void
.end method

.method public setUsingCustomOvirtCa(Z)V
    .locals 0

    return-void
.end method

.method public setVmname(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 804
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->isNew()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    sget-object v0, Lcom/iiordanov/bVNC/ConnectionBean;->c:Landroid/content/Context;

    sget v1, Lcom/undatech/remoteClientUi/R$string;->new_connection:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 807
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ":"

    if-nez v1, :cond_1

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    :cond_1
    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getConnectionType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getSshPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iiordanov/bVNC/ConnectionBean;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
